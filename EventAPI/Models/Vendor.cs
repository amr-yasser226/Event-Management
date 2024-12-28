using System;
using System.Collections.Generic;

namespace EventAPI.Models;

public partial class Vendor
{
    public int VendorId { get; set; }

    public string? VendorName { get; set; }

    public string? Email { get; set; }

    public int? PhoneNumber { get; set; }

    public string Category { get; set; } = null!;

    public int? VendorAddress { get; set; }

    public bool? IsAvailable { get; set; }

    public string? VendorUrl { get; set; }

    public virtual ICollection<EventVendor> EventVendors { get; set; } = new List<EventVendor>();

    public virtual Location? VendorAddressNavigation { get; set; }

    public virtual ICollection<Task> Tasks { get; set; } = new List<Task>();
}
