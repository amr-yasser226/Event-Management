using System;
using System.Collections.Generic;

namespace EventAPI.Models;

public partial class Venue
{
    public int VenueId { get; set; }

    public int? VenueLoc { get; set; }

    public string? VenueName { get; set; }

    public string? VenueDescription { get; set; }

    public string? PhoneNumber { get; set; }

    public string? Email { get; set; }

    public string? VenueType { get; set; }

    public int? Capacity { get; set; }

    public string? AvailabilityStatus { get; set; }

    public decimal? RentalCost { get; set; }

    public string? Facilities { get; set; }

    public string? VenueUrl { get; set; }

    public virtual Location? VenueLocNavigation { get; set; }

    public virtual ICollection<Event> Events { get; set; } = new List<Event>();
}
