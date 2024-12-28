using System;
using System.Collections.Generic;

namespace EventAPI.Models;

public partial class Attendee
{
    public int UserId { get; set; }

    public int EventId { get; set; }

    public string? AttendanceStatus { get; set; }

    public bool? IsSpeaker { get; set; }

    public bool? IsVip { get; set; }

    public string TicketType { get; set; } = null!;

    public string? Preferences { get; set; }

    public virtual Event Event { get; set; } = null!;

    public virtual User User { get; set; } = null!;
}
