using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Frontend.Models; // Ensure this using directive is present

namespace Frontend.Pages.Vendor
{
    public class VendorModel : PageModel
    {
        [BindProperty]
        public Frontend.Models.Vendor Vendor { get; set; } = default!; // Fully qualified name

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

            // TODO: Process the vendor application (e.g., save to database)
            // Since you're focusing on frontend, this can remain as a placeholder

            return RedirectToPage("/ThankYou");
        }
    }
}
