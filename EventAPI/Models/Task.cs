using System;
using System.Collections.Generic;

namespace EventAPI.Models;

public partial class Task
{
    public int TaskId { get; set; }

    public string? TaskName { get; set; }

    public string? TaskDescription { get; set; }

    public DateOnly StartDate { get; set; }

    public DateOnly EndDate { get; set; }

    public int? EventId { get; set; }

    public int PriorityLevel { get; set; }

    public string? TaskStatus { get; set; }

    public int? Dependency { get; set; }

    public virtual Task? DependencyNavigation { get; set; }

    public virtual Event? Event { get; set; }

    public virtual ICollection<Task> InverseDependencyNavigation { get; set; } = new List<Task>();

    public virtual ICollection<Volunteer> Volunteers { get; set; } = new List<Volunteer>();

    public virtual ICollection<User> Users { get; set; } = new List<User>();

    public virtual ICollection<Vendor> Vendors { get; set; } = new List<Vendor>();
}
