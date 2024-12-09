using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.ComponentModel.DataAnnotations;

namespace Frontend.Pages.User.Attendee.SignIn
{
    public class AttendeeSignInModel : PageModel
    {
        [BindProperty]
        public required SignInInput Input { get; set; } // Added 'required' modifier

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

        public class SignInInput
        {
            [Required]
            [EmailAddress]
            public required string Email { get; set; } // Added 'required' modifier

            [Required]
            [DataType(DataType.Password)]
            public required string Password { get; set; } // Added 'required' modifier

            [Required]
            public required string Name { get; set; } // Added 'required' modifier
        }
    }
}
