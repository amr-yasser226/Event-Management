using System.ComponentModel.DataAnnotations;

namespace Frontend.Models
{
    public class Sponsor
    {
        [Required]
        public required string CompanyName { get; set; }

        [Required]
        public required string ContactPerson { get; set; }

        [Required]
        public required string Email { get; set; }
    }
}
