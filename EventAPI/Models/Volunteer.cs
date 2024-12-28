using System;
using System.Collections.Generic;

namespace EventAPI.Models;

public partial class Volunteer
{
    public int UserId { get; set; }

    public int? EventId { get; set; }

    public string VolRole { get; set; } = null!;

    public string? Skills { get; set; }

    public int? CurrentTask { get; set; }

    public bool? IsAvailable { get; set; }

    public virtual Task? CurrentTaskNavigation { get; set; }

    public virtual Event? Event { get; set; }

    public virtual User User { get; set; } = null!;
}
