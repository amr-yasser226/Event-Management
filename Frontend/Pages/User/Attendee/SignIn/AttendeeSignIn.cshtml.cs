// Pages/User/Attendee/SignIn/AttendeeSignIn.cshtml.cs

using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.ComponentModel.DataAnnotations;
using System.Security.Claims;
using System.Threading.Tasks;

namespace Frontend.Pages.User.Attendee.SignIn
{
    [AllowAnonymous]
    public class AttendeeSignInModel : PageModel
    {
        [BindProperty]
        public required SignInInput Input { get; set; }

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

            // TODO: Implement attendee creation logic
            // Example: Save attendee to the database
            // Here, we'll simulate by accepting any registration

            // After successful sign in, authenticate the user
            var claims = new List<Claim>
            {
                new Claim(ClaimTypes.Name, Input.Email),
                new Claim("FirstName", Input.FirstName),
                new Claim("LastName", Input.LastName),
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

        public class SignInInput
        {
            [Required]
            [Display(Name = "First Name")]
            public required string FirstName { get; set; }

            [Required]
            [Display(Name = "Last Name")]
            public required string LastName { get; set; }

            [Required]
            [EmailAddress]
            public required string Email { get; set; }

            [Required]
            [DataType(DataType.Password)]
            [MinLength(6, ErrorMessage = "Password must be at least 6 characters long.")]
            public required string Password { get; set; }

            [Required]
            [Display(Name = "Gender")]
            public required string Gender { get; set; }
        }
    }
}
