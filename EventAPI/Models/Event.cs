using System;
using System.Collections.Generic;

namespace EventAPI.Models;

public partial class Event
{
    public int EventId { get; set; }

    public string EventName { get; set; } = null!;

    public string Category { get; set; } = null!;

    public string? EventDescription { get; set; }

    public string? EventStatus { get; set; }

    public DateOnly StartDate { get; set; }

    public DateOnly EndDate { get; set; }

    public int? Capacity { get; set; }

    public int? AttendeeCount { get; set; }

    public decimal? RegistrationFee { get; set; }

    public virtual ICollection<Attendee> Attendees { get; set; } = new List<Attendee>();

    public virtual ICollection<Donation> Donations { get; set; } = new List<Donation>();

    public virtual ICollection<EventSponsor> EventSponsors { get; set; } = new List<EventSponsor>();

    public virtual ICollection<EventVendor> EventVendors { get; set; } = new List<EventVendor>();

    public virtual ICollection<Feedback> Feedbacks { get; set; } = new List<Feedback>();

    public virtual ICollection<Task> Tasks { get; set; } = new List<Task>();

    public virtual ICollection<Ticket> Tickets { get; set; } = new List<Ticket>();

    public virtual ICollection<Volunteer> Volunteers { get; set; } = new List<Volunteer>();

    public virtual ICollection<User> Users { get; set; } = new List<User>();

    public virtual ICollection<Venue> Venues { get; set; } = new List<Venue>();
}
