using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.ComponentModel.DataAnnotations;

namespace Frontend.Pages
{
    public class RoleSelectionModel : PageModel
    {
        [BindProperty(SupportsGet = true)]
        [Required(ErrorMessage = "Role selection is required.")]
        public string? Role { get; set; }

        public IActionResult OnGet()
        {
            if (string.IsNullOrEmpty(Role))
            {
                ModelState.AddModelError(string.Empty, "Role is required.");
                return Page();
            }

            return Page();
        }
    }
}
