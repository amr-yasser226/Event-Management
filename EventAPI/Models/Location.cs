using System;
using System.Collections.Generic;

namespace EventAPI.Models;

public partial class Location
{
    public int LocationId { get; set; }

    public string LocName { get; set; } = null!;

    public string? ZipCode { get; set; }

    public string Country { get; set; } = null!;

    public string LocState { get; set; } = null!;

    public string City { get; set; } = null!;

    public double? Longitude { get; set; }

    public double? Latitude { get; set; }

    public string? Accessibility { get; set; }

    public string? Landmark { get; set; }

    public string? LocType { get; set; }

    public virtual ICollection<Sponsor> Sponsors { get; set; } = new List<Sponsor>();

    public virtual ICollection<User> Users { get; set; } = new List<User>();

    public virtual ICollection<Vendor> Vendors { get; set; } = new List<Vendor>();

    public virtual ICollection<Venue> Venues { get; set; } = new List<Venue>();
}
