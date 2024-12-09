using System.ComponentModel.DataAnnotations;

namespace Frontend.Models
{
    public class Organizer
    {
        [Required]
        public required string Name { get; set; }

        [Required]
        public required string Email { get; set; }

        [Required]
        public required string Password { get; set; }
    }
}
