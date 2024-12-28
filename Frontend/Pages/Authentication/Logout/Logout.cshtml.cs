// Logout.cshtml.cs
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Threading.Tasks;

namespace Frontend.Pages.Authentication.Logout
{
    public class LogoutModel : PageModel
    {
        public async Task<IActionResult> OnPostAsync()
        {
            // Sign out the user
            await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);

            // // Clear any existing session data
            // HttpContext.Session.Clear();

            // Redirect immediately to home page
            return RedirectToPage("/Index");
        }

        public IActionResult OnGet()
        {
            // Null-safe check for authentication status
            if (User?.Identity?.IsAuthenticated != true)
            {
                return RedirectToPage("/Index");
            }

            return Page();
        }
    }
}