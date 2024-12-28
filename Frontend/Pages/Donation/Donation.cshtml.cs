using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.ComponentModel.DataAnnotations;

namespace Frontend.Pages.Donation
{
    public class DonationModel : PageModel
    {
        [BindProperty]
        [Required(ErrorMessage = "Please enter a donation amount.")]
        [Range(1, double.MaxValue, ErrorMessage = "Donation amount must be greater than zero.")]
        public decimal DonationAmount { get; set; }

        [BindProperty]
        [Required(ErrorMessage = "Please select a payment method.")]
        public string PaymentMethod { get; set; } = string.Empty;

        public void OnGet()
        {
            // Initialize default values if needed
        }

        public IActionResult OnPost()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            // Process payment logic here (optional)

            // Redirect to thank you page
            // TempData["DonationAmount"] = DonationAmount;
            return RedirectToPage("/ThankYou");
        }
    }
}
