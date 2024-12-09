using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Frontend.Pages.AuthChoice
{
    public class AuthChoiceModel : PageModel
    {
        [BindProperty(SupportsGet = true)]
        public required string Role { get; set; }

        [BindProperty(SupportsGet = true)]
        public required string Action { get; set; }

        public string UserRole { get; set; } = string.Empty;

        public IActionResult OnGet()
        {
            if (string.IsNullOrEmpty(Role))
            {
                // If no role is specified, redirect to Home
                return RedirectToPage("/Index");
            }

            UserRole = Role;
            return Page();
        }

        public IActionResult OnGetAuthChoiceRedirect()
        {
            if (string.IsNullOrEmpty(Role) || string.IsNullOrEmpty(Action))
            {
                // Invalid request, redirect to Home
                return RedirectToPage("/Index");
            }

            string targetPage = string.Empty;

            switch (Role.ToLower())
            {
                case "attend":
                case "attendee":
                    if (Action.ToLower() == "login")
                        targetPage = "/User/Attendee/Login/AttendeeLogin";
                    else if (Action.ToLower() == "signin")
                        targetPage = "/User/Attendee/SignIn/AttendeeSignIn";
                    break;

                case "volunteer":
                    if (Action.ToLower() == "login")
                        targetPage = "/User/Volunteer/Login/VolunteerLogin";
                    else if (Action.ToLower() == "signin")
                        targetPage = "/User/Volunteer/SignIn/VolunteerSignIn";
                    break;

                case "organize":
                case "organizer":
                    if (Action.ToLower() == "login")
                        targetPage = "/User/Organizer/Login/OrganizerLogin";
                    else if (Action.ToLower() == "signin")
                        targetPage = "/User/Organizer/SignIn/OrganizerSignIn";
                    break;

                default:
                    // Unknown role, redirect to Home
                    return RedirectToPage("/Index");
            }

            if (string.IsNullOrEmpty(targetPage))
            {
                // Unknown action, redirect to Home
                return RedirectToPage("/Index");
            }

            return Redirect(targetPage);
        }
    }
}
