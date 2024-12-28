using System;
using System.Collections.Generic;

namespace EventAPI.Models;

public partial class Sponsor
{
    public int SponsorId { get; set; }

    public string SponsorName { get; set; } = null!;

    public string Category { get; set; } = null!;

    public string? Email { get; set; }

    public int? SponsorLocation { get; set; }

    public string? SponsorUrl { get; set; }

    public virtual ICollection<EventSponsor> EventSponsors { get; set; } = new List<EventSponsor>();

    public virtual Location? SponsorLocationNavigation { get; set; }
}
