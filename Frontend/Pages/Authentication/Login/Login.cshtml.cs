using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.ComponentModel.DataAnnotations;
using System.Security.Claims;

namespace Frontend.Pages.Authentication.Login
{
    [AllowAnonymous]
    public class LoginModel : PageModel
    {
        private static readonly List<UserCredentials> _users = new()
        {
            new UserCredentials { Email = "attendee@example.com", Password = "Password123" },
            new UserCredentials { Email = "organizer@example.com", Password = "Password123" },
            new UserCredentials { Email = "volunteer@example.com", Password = "Password123" }
        };

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
            // Check if model state is valid
            if (!ModelState.IsValid)
                return Page();

            // Authenticate user
            if (AuthenticateUser(Input.Email, Input.Password))
            {
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
                    authProperties);

                // Redirect after login
                return RedirectToPage(RedirectAfterLogin);
            }

            // Add error if login attempt fails
            ModelState.AddModelError(string.Empty, "Invalid login attempt.");
            return Page();
        }

        private bool AuthenticateUser(string? email, string? password)
        {
            if (string.IsNullOrWhiteSpace(email) || string.IsNullOrWhiteSpace(password))
                return false;

            return _users.Any(user =>
                user.Email.Equals(email, StringComparison.OrdinalIgnoreCase) && user.Password == password);
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

        private class UserCredentials
        {
            public string Email { get; set; } = string.Empty;
            public string Password { get; set; } = string.Empty;
        }
    }
}
