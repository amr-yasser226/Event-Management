using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.ComponentModel.DataAnnotations;

namespace Frontend.Pages.User.Attendee.Login
{
    public class AttendeeLoginModel : PageModel
    {
        [BindProperty]
        public required LoginInput Input { get; set; } // Added 'required' modifier

        public void OnGet()
        {
            // Initialization logic if needed
        }

        public IActionResult OnPost()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            // TODO: Authenticate attendee

            return RedirectToPage("/Index"); // Redirect to home or attendee dashboard
        }

        public class LoginInput
        {
            [Required]
            [EmailAddress]
            public required string Email { get; set; } // Added 'required' modifier

            [Required]
            [DataType(DataType.Password)]
            public required string Password { get; set; } // Added 'required' modifier
        }
    }
}
