using System;
using System.Collections.Generic;

namespace EventAPI.Models;

public partial class Donation
{
    public int DonationId { get; set; }

    public int? EventId { get; set; }

    public int? DonorId { get; set; }

    public DateOnly PaymentDate { get; set; }

    public decimal Amount { get; set; }

    public string PaymentMethod { get; set; } = null!;

    public virtual User? Donor { get; set; }

    public virtual Event? Event { get; set; }
}
