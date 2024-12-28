using System;
using System.Collections.Generic;

namespace EventAPI.Models;

public partial class Notification
{
    public int NotificationId { get; set; }

    public int? UserId { get; set; }

    public string? Content { get; set; }

    public string? ReadStatus { get; set; }

    public DateOnly NotificationDate { get; set; }

    public virtual User? User { get; set; }
}
