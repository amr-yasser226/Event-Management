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
    public class AuthController : ControllerBase
    {
        private readonly EMSDbContext _context;

        public AuthController(EMSDbContext context)
        {
            _context = context;
        }

        [HttpPost("signup")]
        public async Task<IActionResult> SignUp([FromBody] SignUpDto dto)
        {
            // Check if email exists
            var existingUser = await _context.Users
                .FirstOrDefaultAsync(u => u.Email == dto.Email);
            if (existingUser != null)
            {
                return BadRequest(new { message = "Email already taken." });
            }

            // Create a new user
            var newUser = new User
            {
                Email = dto.Email,
                PassHash = dto.Password,
                FirstName = dto.FirstName,
                LastName = dto.LastName,
                ContactNumber = dto.ContactNumber,
                RegistrationDate = DateOnly.FromDateTime(DateTime.Now),
                UserType = "Attendee"
            };

            _context.Users.Add(newUser);
            await _context.SaveChangesAsync();

            // "Log them in" by storing user ID in session
            HttpContext.Session.SetInt32("UserId", newUser.UserId);

            return Ok(new { message = "Registration successful. User is now logged in." });
        }


        [HttpPost("login")]
        public async Task<IActionResult> Login([FromBody] LoginDto dto)
        {
            // Find user by Email
            var user = await _context.Users
                .FirstOrDefaultAsync(u => u.Email == dto.Email);
            if (user == null)
            {
                return Unauthorized(new { message = "Invalid credentials. (User not found)" });
            }

            if (user.PassHash != dto.Password)
            {
                return Unauthorized(new { message = "Invalid credentials. (Wrong password)" });
            }

            // Store user ID in session
            HttpContext.Session.SetInt32("UserId", user.UserId);

            return Ok(new { message = "Login successful. Session created." });
        }


        [HttpPost("logout")]
        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            return Ok(new { message = "Logout successful. Session cleared." });
        }

    }
}
