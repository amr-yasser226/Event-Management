// Pages/User/Attendee/Login/AttendeeLogin.cshtml.cs

using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.ComponentModel.DataAnnotations;
using System.Security.Claims;
using System.Threading.Tasks;

namespace Frontend.Pages.User.Attendee.Login
{
    [AllowAnonymous]
    public class AttendeeLoginModel : PageModel
    {
        [BindProperty]
        public required LoginInput Input { get; set; }

        public void OnGet()
        {
            // Initialization logic if needed
        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            // TODO: Replace with actual authentication logic (e.g., check database)
            bool isAuthenticated = AuthenticateAttendee(Input.Email, Input.Password);

            if (isAuthenticated)
            {
                // Create user claims
                var claims = new List<Claim>
                {
                    new Claim(ClaimTypes.Name, Input.Email),
                    // Add more claims as needed
                };

                var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);

                var authProperties = new AuthenticationProperties
                {
                    // Configure authentication properties if needed
                    IsPersistent = true, // Remember the user
                    ExpiresUtc = DateTimeOffset.UtcNow.AddHours(2) // Set expiration
                };

                // Sign in the user
                await HttpContext.SignInAsync(
                    CookieAuthenticationDefaults.AuthenticationScheme,
                    new ClaimsPrincipal(claimsIdentity),
                    authProperties);

                // Redirect to Events page
                return RedirectToPage("/Events/Events");
            }

            // If authentication failed
            ModelState.AddModelError(string.Empty, "Invalid login attempt.");
            return Page();
        }

        private bool AuthenticateAttendee(string email, string password)
        {
            // Placeholder for actual authentication logic
            // Replace this with database verification
            // Example: Check if user exists and password matches
            // Here, we'll simulate with a hardcoded user
            return email == "attendee@example.com" && password == "Password123";
        }

        public class LoginInput
        {
            [Required]
            [EmailAddress]
            public required string Email { get; set; }

            [Required]
            [DataType(DataType.Password)]
            public required string Password { get; set; }
        }
    }
}
