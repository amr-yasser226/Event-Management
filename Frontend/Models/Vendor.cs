using System.ComponentModel.DataAnnotations;

namespace Frontend.Models
{
    public class Vendor
    {
        [Required]
        public required string BusinessName { get; set; }

        [Required]
        public required string ContactPerson { get; set; }

        [Required]
        public required string Email { get; set; }
    }
}
