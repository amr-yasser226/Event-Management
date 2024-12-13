// Pages/Events/Events.cshtml.cs

using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System;
using System.Collections.Generic;

namespace Frontend.Pages.Events
{
    [Authorize]
    public class EventsModel : PageModel
    {
        // Initialize the Events list to prevent null reference warnings
        public List<EventItem> Events { get; set; } = new List<EventItem>();

        public void OnGet()
        {
            // For demonstration, we'll create a list of sample events.
            // In a real application, you'd fetch these from a database.

            Events = new List<EventItem>
            {
                new EventItem
                {
                    Id = 1,
                    Name = "Tech Innovators Conference",
                    Description = "Join industry leaders to discuss the latest in technology and innovation.",
                    Date = new DateTime(2024, 5, 20),
                    ImageUrl = "/images/tech_innovators.jpg"
                },
                new EventItem
                {
                    Id = 2,
                    Name = "Health & Wellness Expo",
                    Description = "Explore the latest trends in health, wellness, and fitness.",
                    Date = new DateTime(2024, 6, 15),
                    ImageUrl = "/images/health_wellness.jpg"
                },
                new EventItem
                {
                    Id = 3,
                    Name = "Art & Culture Festival",
                    Description = "Experience diverse art forms and cultural exhibitions from around the world.",
                    Date = new DateTime(2024, 7, 10),
                    ImageUrl = "/images/art_culture.jpg"
                }
            };
        }

        // Define the EventItem class within the EventsModel
        public class EventItem
        {
            public int Id { get; set; }
            public string Name { get; set; } = string.Empty; // Initialize to prevent null warnings
            public string Description { get; set; } = string.Empty; // Initialize to prevent null warnings
            public DateTime Date { get; set; }
            public string ImageUrl { get; set; } = string.Empty; // Initialize to prevent null warnings
        }
    }
}
