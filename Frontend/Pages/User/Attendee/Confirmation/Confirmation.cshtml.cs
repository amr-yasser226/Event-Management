// Pages/User/Attendee/Confirmation/Confirmation.cshtml.cs

using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System;

namespace Frontend.Pages.User.Attendee.Confirmation
{
    [Authorize]
    public class ConfirmationModel : PageModel
    {
        // Properties to display on the confirmation page
        public string UserName { get; set; } = string.Empty;
        public string UserEmail { get; set; } = string.Empty;
        public string EventName { get; set; } = string.Empty;
        public DateTime EventDate { get; set; }
        public string TicketType { get; set; } = string.Empty;
        public string IsVIP { get; set; } = string.Empty;
        public string MealPreferences { get; set; } = string.Empty;
        public string SessionInterests { get; set; } = string.Empty;
        public string AccessibilityNeeds { get; set; } = string.Empty;
        public string CommunicationPreferences { get; set; } = string.Empty;
        public string Purpose { get; set; } = string.Empty;
        public string ReferralSource { get; set; } = string.Empty;

        // Payment Details
        public string PaymentMethod { get; set; } = string.Empty;
        public string? CardNumber { get; set; }
        public string? ExpirationDate { get; set; }
        public string? PayPalEmail { get; set; }
        public string? VodafoneCashNumber { get; set; }

        public IActionResult OnGet(int id)
        {
            // Retrieve data from TempData
            if (TempData.TryGetValue("UserName", out var userNameObj) &&
                TempData.TryGetValue("UserEmail", out var userEmailObj) &&
                TempData.TryGetValue("EventName", out var eventNameObj) &&
                TempData.TryGetValue("EventDate", out var eventDateObj) &&
                TempData.TryGetValue("TicketType", out var ticketTypeObj))
            // TempData.TryGetValue("IsVIP", out var isVIPObj) &&
            // TempData.TryGetValue("MealPreferences", out var mealPreferencesObj) &&
            // TempData.TryGetValue("SessionInterests", out var sessionInterestsObj) &&
            // TempData.TryGetValue("AccessibilityNeeds", out var accessibilityNeedsObj) &&
            // TempData.TryGetValue("CommunicationPreferences", out var communicationPreferencesObj) &&
            // TempData.TryGetValue("Purpose", out var purposeObj) &&
            // TempData.TryGetValue("ReferralSource", out var referralSourceObj) &&
            // TempData.TryGetValue("PaymentMethod", out var paymentMethodObj) &&
            // TempData.TryGetValue("CardNumber", out var cardNumberObj) &&
            // TempData.TryGetValue("ExpirationDate", out var expirationDateObj) &&
            // TempData.TryGetValue("PayPalEmail", out var payPalEmailObj) &&
            // TempData.TryGetValue("VodafoneCashNumber", out var vodafoneCashNumberObj)
            {
                // Safely cast TempData objects to strings
                UserName = userNameObj as string ?? "N/A";
                UserEmail = userEmailObj as string ?? "N/A";
                EventName = eventNameObj as string ?? "N/A";
                EventDate = eventDateObj is DateTime dateTime ? dateTime : DateTime.MinValue;
                TicketType = ticketTypeObj as string ?? "N/A";
                // IsVIP = isVIPObj as string ?? "No";
                // MealPreferences = mealPreferencesObj as string ?? "None";
                // SessionInterests = sessionInterestsObj as string ?? "None";
                // AccessibilityNeeds = accessibilityNeedsObj as string ?? "None";
                // CommunicationPreferences = communicationPreferencesObj as string ?? "Email";
                // Purpose = purposeObj as string ?? "Business";
                // ReferralSource = referralSourceObj as string ?? "Other";

                // PaymentMethod = paymentMethodObj as string ?? "N/A";
                // CardNumber = cardNumberObj as string;
                // ExpirationDate = expirationDateObj as string;
                // PayPalEmail = payPalEmailObj as string;
                // VodafoneCashNumber = vodafoneCashNumberObj as string;
            }
            // else
            // {
            //     // // If data is missing, redirect back to Payment page
            //     // return RedirectToPage("/User/Attendee/Payment/Payment", new { id = id });
            // }

            return Page();
        }

        public IActionResult OnPost()
        {
            // Here, you can perform any final processing if needed
            // For example, saving data to a database

            // Redirect to Thank You page
            return RedirectToPage("/ThankYou");
        }
    }
}
