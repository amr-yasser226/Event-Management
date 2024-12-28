using System;
using System.Collections.Generic;

namespace EventAPI.Models;

public partial class Organizer
{
    public int UserId { get; set; }

    public string? OrgType { get; set; }

    public virtual User User { get; set; } = null!;
}
