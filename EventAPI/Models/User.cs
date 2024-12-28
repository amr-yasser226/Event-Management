using System;
using System.Collections.Generic;

namespace EventAPI.Models;

public partial class User
{
    public int UserId { get; set; }

    public string Email { get; set; } = null!;

    public string FirstName { get; set; } = null!;

    public string? LastName { get; set; }

    public string PassHash { get; set; } = null!;

    public string ContactNumber { get; set; } = null!;

    public DateOnly? DoB { get; set; }

    public string? Gender { get; set; }

    public string? ProfilePicture { get; set; }

    public DateOnly RegistrationDate { get; set; }

    public string UserType { get; set; } = null!;

    public string? UserBio { get; set; }

    public int? UserAddress { get; set; }

    public string? UserUrl { get; set; }

    public virtual ICollection<Attendee> Attendees { get; set; } = new List<Attendee>();

    public virtual ICollection<Donation> Donations { get; set; } = new List<Donation>();

    public virtual ICollection<Feedback> Feedbacks { get; set; } = new List<Feedback>();

    public virtual ICollection<Notification> Notifications { get; set; } = new List<Notification>();

    public virtual Organizer? Organizer { get; set; }

    public virtual ICollection<Ticket> Tickets { get; set; } = new List<Ticket>();

    public virtual Location? UserAddressNavigation { get; set; }

    public virtual Volunteer? Volunteer { get; set; }

    public virtual ICollection<Event> Events { get; set; } = new List<Event>();

    public virtual ICollection<Task> Tasks { get; set; } = new List<Task>();
}
