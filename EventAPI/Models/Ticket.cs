using System;
using System.Collections.Generic;

namespace EventAPI.Models;

public partial class Ticket
{
    public int TicketId { get; set; }

    public int? EventId { get; set; }

    public int? UserId { get; set; }

    public decimal? Price { get; set; }

    public DateOnly PurchaseDate { get; set; }

    public int? SeatNumber { get; set; }

    public string? TicketStatus { get; set; }

    public virtual Event? Event { get; set; }

    public virtual User? User { get; set; }
}
