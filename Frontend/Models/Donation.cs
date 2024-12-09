using System.ComponentModel.DataAnnotations;

namespace Frontend.Models
{
    public class Donation
    {
        [Required]
        [Range(1, 100000, ErrorMessage = "Amount must be between $1 and $100,000.")]
        public required decimal Amount { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "Your Name cannot exceed 100 characters.")]
        public required string YourName { get; set; }

        [Required]
        [EmailAddress(ErrorMessage = "Invalid Email Address.")]
        public required string Email { get; set; }
    }
}
