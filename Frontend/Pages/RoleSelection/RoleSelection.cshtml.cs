using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Frontend.Pages.RoleSelection
{
    public class RoleSelectionModel : PageModel
    {
        [BindProperty]
        public string? SelectedRole { get; set; }

        public IActionResult OnPost(string role)
        {
            SelectedRole = role;
            // Check if the selected role is "Donate"
            if (role == "Donate")
            {
                return RedirectToPage("/Donation/Donation");
            }

            // For all other roles, redirect to Events page
            return RedirectToPage("/Events/Events");
        }
    }
}
