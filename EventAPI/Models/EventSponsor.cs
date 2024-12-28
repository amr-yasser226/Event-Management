using System;
using System.Collections.Generic;

namespace EventAPI.Models;

public partial class EventSponsor
{
    public int SpId { get; set; }

    public int EventId { get; set; }

    public decimal SponsorshipAmount { get; set; }

    public string? SponsorshipType { get; set; }

    public DateOnly AgreementDate { get; set; }

    public string ContractDuration { get; set; } = null!;

    public string? ContractStatus { get; set; }

    public virtual Event Event { get; set; } = null!;

    public virtual Sponsor Sp { get; set; } = null!;
}
