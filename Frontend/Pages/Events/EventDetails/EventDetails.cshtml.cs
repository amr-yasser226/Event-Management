// Pages/Events/EventDetails/EventDetails.cshtml.cs

using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Frontend.Pages.Shared.Validation; // Ensure this using directive is present

namespace Frontend.Pages.Events
{
    [Authorize]
    public class EventDetailsModel : PageModel
    {
        [BindProperty]
        public EventInput Input { get; set; } = new EventInput();

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

            // TODO: Save attendee's event preferences and details
            // For example, save to the database

            // Redirect to Payment page
            return RedirectToPage("/User/Attendee/Payment", new { id = id });
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

        public class EventInput
        {
            [Display(Name = "Are you serving as a speaker or presenter?")]
            public string? IsSpeaker { get; set; }

            [Required(ErrorMessage = "Please select a ticket type.")]
            [Display(Name = "Ticket Type")]
            public string? TicketType { get; set; }

            [Display(Name = "Are you a VIP attendee?")]
            public string? IsVIP { get; set; }

            [Display(Name = "Meal Preferences")]
            public string? MealPreferences { get; set; }

            [Display(Name = "Session Interests")]
            public string? SessionInterests { get; set; }

            [Display(Name = "Accessibility Needs")]
            public string? AccessibilityNeeds { get; set; }

            [Display(Name = "Communication Preferences")]
            public string? CommunicationPreferences { get; set; }

            [Display(Name = "Purpose of Attending")]
            public string? Purpose { get; set; }

            // Additional Questions
            [Display(Name = "How did you hear about this event?")]
            public string? ReferralSource { get; set; }
        }
    }
}
