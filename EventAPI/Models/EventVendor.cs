using System;
using System.Collections.Generic;

namespace EventAPI.Models;

public partial class EventVendor
{
    public int VendorId { get; set; }

    public int EventId { get; set; }

    public DateOnly ContractDate { get; set; }

    public string ContractDuration { get; set; } = null!;

    public decimal ContractAmount { get; set; }

    public string? ContractStatus { get; set; }

    public virtual Event Event { get; set; } = null!;

    public virtual Vendor Vendor { get; set; } = null!;
}
