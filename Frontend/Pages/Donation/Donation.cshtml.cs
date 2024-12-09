using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Frontend.Models; // Ensure this using directive is present

namespace Frontend.Pages.Donation
{
    public class DonationModel : PageModel
    {
        [BindProperty]
        public Frontend.Models.Donation Donation { get; set; } = default!; // Fully qualified name

        public void OnGet()
        {
            // Any initialization logic if needed
        }

        public IActionResult OnPost()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            // TODO: Process the donation (e.g., save to database)
            // Since you're focusing on frontend, this can remain as a placeholder

            return RedirectToPage("/ThankYou");
        }
    }
}
