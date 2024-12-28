// Pages/User/Attendee/Payment/Payment.cshtml.cs

using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;

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
            // Perform manual validation
            var validationResults = new List<ValidationResult>();
            var validationContext = new ValidationContext(Input, null, null);
            bool isValid = Validator.TryValidateObject(Input, validationContext, validationResults, true);

            if (!isValid)
            {
                foreach (var validationResult in validationResults)
                {
                    // Ensure errorMessage is not null
                    string errorMessage = validationResult.ErrorMessage ?? "An error occurred during validation.";
                    ModelState.AddModelError(string.Empty, errorMessage);
                }

                SelectedEvent = GetEventById(id);
                return Page();
            }

            // TODO: Process the payment
            // Integrate with payment gateway APIs as needed

            // After successful payment, store payment details in TempData
            TempData["PaymentMethod"] = Input.PaymentMethod ?? "N/A";
            TempData["CardNumber"] = Input.CardNumber ?? "N/A";
            TempData["ExpirationDate"] = Input.ExpirationDate ?? "N/A";
            TempData["PayPalEmail"] = Input.PayPalEmail ?? "N/A";
            TempData["VodafoneCashNumber"] = Input.VodafoneCashNumber ?? "N/A";

            // Redirect to Confirmation page with id
            return RedirectToPage("/User/Attendee/Confirmation/Confirmation", new { id = id });
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
            public string Name { get; set; } = string.Empty; // Initialize to prevent null warnings
            public string Description { get; set; } = string.Empty; // Initialize to prevent null warnings
            public DateTime Date { get; set; }
        }

        public class PaymentInput : IValidatableObject
        {
            [Required(ErrorMessage = "Please select a payment method.")]
            [Display(Name = "Payment Method")]
            public string? PaymentMethod { get; set; }

            // Credit Card Fields
            [Display(Name = "Card Number")]
            public string? CardNumber { get; set; }

            [Display(Name = "Expiration Date")]
            public string? ExpirationDate { get; set; }

            [Display(Name = "CVV")]
            public string? CVV { get; set; }

            // PayPal Fields
            [EmailAddress(ErrorMessage = "Please enter a valid PayPal email address.")]
            public string? PayPalEmail { get; set; }

            // Vodafone Cash Fields
            [Phone(ErrorMessage = "Please enter a valid Vodafone Cash number.")]
            public string? VodafoneCashNumber { get; set; }

            // Add more payment fields as needed

            public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
            {
                var results = new List<ValidationResult>();

                if (PaymentMethod == "Credit Card" || PaymentMethod == "Visa" || PaymentMethod == "MasterCard")
                {
                    if (string.IsNullOrWhiteSpace(CardNumber))
                    {
                        results.Add(new ValidationResult("Card Number is required.", new[] { nameof(CardNumber) }));
                    }

                    if (string.IsNullOrWhiteSpace(ExpirationDate))
                    {
                        results.Add(new ValidationResult("Expiration Date is required.", new[] { nameof(ExpirationDate) }));
                    }

                    if (string.IsNullOrWhiteSpace(CVV))
                    {
                        results.Add(new ValidationResult("CVV is required.", new[] { nameof(CVV) }));
                    }
                }

                if (PaymentMethod == "PayPal")
                {
                    if (string.IsNullOrWhiteSpace(PayPalEmail))
                    {
                        results.Add(new ValidationResult("PayPal Email is required.", new[] { nameof(PayPalEmail) }));
                    }
                }

                if (PaymentMethod == "Vodafone Cash")
                {
                    if (string.IsNullOrWhiteSpace(VodafoneCashNumber))
                    {
                        results.Add(new ValidationResult("Vodafone Cash Number is required.", new[] { nameof(VodafoneCashNumber) }));
                    }
                }

                // Add more conditional validations as needed

                return results;
            }
        }
    }
}
