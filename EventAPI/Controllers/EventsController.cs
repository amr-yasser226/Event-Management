using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using EventAPI.Models;
using EventAPI.DTOs;
using System.Security.Cryptography;
using System.Text;

namespace EventAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class EventsController : ControllerBase
    {
        private readonly EMSDbContext _context;

        public EventsController(EMSDbContext context)
        {
            _context = context;
        }

        [HttpPost("{eventId}/attend")]
        public async Task<IActionResult> AttendEvent(int eventId)
        {
            // Check if user is logged in via session
            int? userId = HttpContext.Session.GetInt32("UserId");
            if (userId == null)
            {
                return Unauthorized(new { message = "User not logged in." });
            }

            var attendee = new Attendee
            {
                UserId = userId.Value,
                EventId = eventId,
                AttendanceStatus = "Registered"
            };
            _context.Attendees.Add(attendee);
            await _context.SaveChangesAsync();

            return Ok(new { message = "You are now attending the event!" });
        }
    }
}
