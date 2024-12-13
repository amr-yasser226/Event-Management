// Pages/User/Attendee/Payment/Payment.cshtml.cs

using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Frontend.Pages.Shared.Validation; // Added using directive

namespace Frontend.Pages.User.Attendee.Payment
{
    [Authorize]
    public class PaymentModel : PageModel
    {
        [BindProperty]
        public PaymentInput Input { get; set; } = new PaymentInput();

        public EventItem SelectedEvent { get; set; } = new EventItem();

        public void OnGet(int id)
        {
            // Fetch the selected event based on the id
            SelectedEvent = GetEventById(id);
        }

        public IActionResult OnPost(int id)
        {
            if (!ModelState.IsValid)
            {
                SelectedEvent = GetEventById(id);
                return Page();
            }

            // TODO: Process the payment
            // Integrate with payment gateway APIs as needed

            // After successful payment, redirect to Thank You page
            return RedirectToPage("/Thankyou");
        }

        private EventItem GetEventById(int id)
        {
            // Sample data; replace with database retrieval
            var events = new List<EventItem>
            {
                new EventItem
                {
                    Id = 1,
                    Name = "Tech Innovators Conference",
                    Description = "Join industry leaders to discuss the latest in technology and innovation.",
                    Date = new DateTime(2024, 5, 20)
                },
                // Add more events as needed
            };

            return events.Find(e => e.Id == id) ?? new EventItem();
        }

        public class EventItem
        {
            public int Id { get; set; }
            public string Name { get; set; } = string.Empty;
            public string Description { get; set; } = string.Empty;
            public DateTime Date { get; set; }
        }

        public class PaymentInput
        {
            [Required(ErrorMessage = "Please select a payment method.")]
            [Display(Name = "Payment Method")]
            public string? PaymentMethod { get; set; }

            // Credit Card Fields
            [RequiredIf("PaymentMethod", "Credit Card", ErrorMessage = "Card Number is required.")]
            [Display(Name = "Card Number")]
            public string? CardNumber { get; set; }

            [RequiredIf("PaymentMethod", "Credit Card", ErrorMessage = "Expiration Date is required.")]
            [Display(Name = "Expiration Date")]
            public string? ExpirationDate { get; set; }

            [RequiredIf("PaymentMethod", "Credit Card", ErrorMessage = "CVV is required.")]
            [Display(Name = "CVV")]
            public string? CVV { get; set; }

            // PayPal Fields
            [EmailAddress]
            [Display(Name = "PayPal Email")]
            public string? PayPalEmail { get; set; }

            // Vodafone Cash Fields
            [Phone]
            [Display(Name = "Vodafone Cash Number")]
            public string? VodafoneCashNumber { get; set; }

            // Add more payment fields as needed
        }
    }
}
