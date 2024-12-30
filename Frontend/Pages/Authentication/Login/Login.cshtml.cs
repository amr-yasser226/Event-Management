using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.ComponentModel.DataAnnotations;
using System.Security.Claims;
using System.Text;
using System.Text.Json;

namespace Frontend.Pages.Authentication.Login
{
    [AllowAnonymous]
    public class LoginModel : PageModel
    {
        private const string RedirectAfterLogin = "/RoleSelection/RoleSelection";

        [BindProperty]
        public LoginInput Input { get; set; } = new();

        public string PageTitle => "Login";

        public IActionResult OnGet()
        {
            return Page();
        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
                return Page();

            try
            {
                // Call the API for authentication
                using var httpClient = new HttpClient();
                var loginRequest = new { Email = Input.Email, Password = Input.Password };
                var content = new StringContent(
                    JsonSerializer.Serialize(loginRequest),
                    Encoding.UTF8,
                    "application/json"
                );

                var apiUrl = "https://localhost:5000/api/Auth/login"; // Update with your actual API URL
                var response = await httpClient.PostAsync(apiUrl, content);

                if (response.IsSuccessStatusCode)
                {
                    // Parse response if needed (optional)
                    var responseBody = await response.Content.ReadAsStringAsync();

                    // Create claims for authentication
                    var claims = new List<Claim>
                    {
                        new Claim(ClaimTypes.Name, Input.Email!)
                    };

                    var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);

                    var authProperties = new AuthenticationProperties
                    {
                        IsPersistent = true,
                        ExpiresUtc = DateTimeOffset.UtcNow.AddHours(2)
                    };

                    await HttpContext.SignInAsync(
                        CookieAuthenticationDefaults.AuthenticationScheme,
                        new ClaimsPrincipal(claimsIdentity),
                        authProperties
                    );

                    // Redirect after login
                    return RedirectToPage(RedirectAfterLogin);
                }
                else
                {
                    // Add error from API response
                    var errorContent = await response.Content.ReadAsStringAsync();
                    ModelState.AddModelError(string.Empty, "Invalid login attempt. " + errorContent);
                    return Page();
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(string.Empty, "An error occurred while processing your request. " + ex.Message);
                return Page();
            }
        }

        public class LoginInput
        {
            [Required(ErrorMessage = "Email is required.")]
            [EmailAddress(ErrorMessage = "Invalid email address.")]
            public string? Email { get; set; }

            [Required(ErrorMessage = "Password is required.")]
            [DataType(DataType.Password)]
            public string? Password { get; set; }
        }
    }
}
