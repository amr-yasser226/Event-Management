// Models/Confirmation.cs

using System;

namespace Frontend.Models
{
    public class Confirmation
    {
        // Common User Properties
        public string UserName { get; set; } = string.Empty;
        public string UserEmail { get; set; } = string.Empty;

        // Event Details
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

        // Additional Properties for Specific User Types
        public string? OrganizerCompany { get; set; }
        public string? VendorCompany { get; set; }
        public string? SponsorLevel { get; set; }
        // Add more properties as needed for other user types
    }
}
