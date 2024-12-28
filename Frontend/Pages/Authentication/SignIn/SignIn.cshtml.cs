using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.ComponentModel.DataAnnotations;
using System.Security.Claims;

namespace Frontend.Pages.Authentication.SignIn
{
    [AllowAnonymous]
    public class SignInModel : PageModel
    {
        [BindProperty]
        public SignInInput Input { get; set; } = new();

        [BindProperty(SupportsGet = true)]
        public string Role { get; set; } = string.Empty;

        public void OnGet()
        {
            // Initialization logic if needed
        }

        public async Task<IActionResult> OnPostAsync()
        {
            // if (!ModelState.IsValid)
            // {
            //     return Page();
            // }

            // Validate password complexity
            // if (!IsPasswordComplex(Input.Password))
            // {
            //     ModelState.AddModelError("Input.Password", "Password must contain at least one uppercase letter, one number, and one special character.");
            //     return Page();
            // }

            // if (Input.Password != Input.ConfirmPassword)
            // {
            //     ModelState.AddModelError("Input.ConfirmPassword", "Passwords do not match.");
            //     return Page();
            // }

            // TODO: Implement actual user creation and persistence logic (e.g., saving to a database)

            // Simulate successful registration
            var claims = new List<Claim>
            {
                new Claim(ClaimTypes.Name, Input.Email),
                new Claim(ClaimTypes.Role, Input.RoleSelection),
                new Claim("FirstName", Input.FirstName),
                new Claim("LastName", Input.LastName),
                new Claim("Gender", Input.Gender),
                new Claim("RoleSelection", Input.RoleSelection),
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

            return RedirectToPage("/RoleSelection/RoleSelection");
        }

        private bool IsPasswordComplex(string password)
        {
            if (string.IsNullOrWhiteSpace(password))
                return false;

            bool hasUpper = password.Any(char.IsUpper);
            bool hasDigit = password.Any(char.IsDigit);
            bool hasSpecial = password.Any(ch => "!@#$%^&*()_+-=[]{}|;':\",.<>/?".Contains(ch));

            return hasUpper && hasDigit && hasSpecial;
        }

        public class SignInInput
        {
            [Required(ErrorMessage = "First Name is required.")]
            [Display(Name = "First Name")]
            public string FirstName { get; set; } = string.Empty;

            [Required(ErrorMessage = "Last Name is required.")]
            [Display(Name = "Last Name")]
            public string LastName { get; set; } = string.Empty;

            [Required(ErrorMessage = "Email is required.")]
            [EmailAddress(ErrorMessage = "Invalid Email Address.")]
            [Display(Name = "Email")]
            public string Email { get; set; } = string.Empty;

            [Required(ErrorMessage = "Password is required.")]
            [DataType(DataType.Password)]
            [MinLength(6, ErrorMessage = "Password must be at least 6 characters long.")]
            public string Password { get; set; } = string.Empty;

            [Required(ErrorMessage = "Confirm Password is required.")]
            [DataType(DataType.Password)]
            [Display(Name = "Confirm Password")]
            public string ConfirmPassword { get; set; } = string.Empty;

            [Required(ErrorMessage = "Gender is required.")]
            [Display(Name = "Gender")]
            public string Gender { get; set; } = string.Empty;

            [Required(ErrorMessage = "Role selection is required.")]
            [Display(Name = "Role Selection")]
            public string RoleSelection { get; set; } = string.Empty;
        }
    }
}
