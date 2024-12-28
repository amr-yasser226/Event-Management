using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace EventAPI.Models;

public partial class EMSDbContext : DbContext
{
    public EMSDbContext()
    {
    }

    public EMSDbContext(DbContextOptions<EMSDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Attendee> Attendees { get; set; }

    public virtual DbSet<Donation> Donations { get; set; }

    public virtual DbSet<Event> Events { get; set; }

    public virtual DbSet<EventSponsor> EventSponsors { get; set; }

    public virtual DbSet<EventVendor> EventVendors { get; set; }

    public virtual DbSet<Feedback> Feedbacks { get; set; }

    public virtual DbSet<Location> Locations { get; set; }

    public virtual DbSet<Notification> Notifications { get; set; }

    public virtual DbSet<Organizer> Organizers { get; set; }

    public virtual DbSet<Sponsor> Sponsors { get; set; }

    public virtual DbSet<Task> Tasks { get; set; }

    public virtual DbSet<Ticket> Tickets { get; set; }

    public virtual DbSet<User> Users { get; set; }

    public virtual DbSet<Vendor> Vendors { get; set; }

    public virtual DbSet<Venue> Venues { get; set; }

    public virtual DbSet<Volunteer> Volunteers { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=THE_GOAT\\MSSQLSERVER01;Initial Catalog=EventManagementSystem;Integrated Security=True;Encrypt=False");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Attendee>(entity =>
        {
            entity.HasKey(e => new { e.UserId, e.EventId }).HasName("PK__Attendee__7FBB2F6ECDA407BC");

            entity.Property(e => e.UserId).HasColumnName("User_ID");
            entity.Property(e => e.EventId).HasColumnName("Event_ID");
            entity.Property(e => e.AttendanceStatus)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Attendance_Status");
            entity.Property(e => e.IsSpeaker).HasColumnName("Is_Speaker");
            entity.Property(e => e.IsVip).HasColumnName("Is_VIP");
            entity.Property(e => e.Preferences).IsUnicode(false);
            entity.Property(e => e.TicketType)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("Ticket_Type");

            entity.HasOne(d => d.Event).WithMany(p => p.Attendees)
                .HasForeignKey(d => d.EventId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Attendees__Event__6383C8BA");

            entity.HasOne(d => d.User).WithMany(p => p.Attendees)
                .HasForeignKey(d => d.UserId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Attendees__User___628FA481");
        });

        modelBuilder.Entity<Donation>(entity =>
        {
            entity.HasKey(e => e.DonationId).HasName("PK__Donation__E3A7BA92CA63C948");

            entity.Property(e => e.DonationId).HasColumnName("Donation_ID");
            entity.Property(e => e.Amount).HasColumnType("decimal(12, 2)");
            entity.Property(e => e.DonorId).HasColumnName("Donor_ID");
            entity.Property(e => e.EventId).HasColumnName("Event_ID");
            entity.Property(e => e.PaymentDate).HasColumnName("Payment_Date");
            entity.Property(e => e.PaymentMethod)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Payment_method");

            entity.HasOne(d => d.Donor).WithMany(p => p.Donations)
                .HasForeignKey(d => d.DonorId)
                .HasConstraintName("FK__Donations__Donor__6FE99F9F");

            entity.HasOne(d => d.Event).WithMany(p => p.Donations)
                .HasForeignKey(d => d.EventId)
                .HasConstraintName("FK__Donations__Event__6EF57B66");
        });

        modelBuilder.Entity<Event>(entity =>
        {
            entity.HasKey(e => e.EventId).HasName("PK__Events__FD6BEFE45642129C");

            entity.Property(e => e.EventId).HasColumnName("Event_ID");
            entity.Property(e => e.AttendeeCount).HasColumnName("Attendee_Count");
            entity.Property(e => e.Category)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.EventDescription)
                .IsUnicode(false)
                .HasColumnName("Event_Description");
            entity.Property(e => e.EventName)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Event_Name");
            entity.Property(e => e.EventStatus)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Event_Status");
            entity.Property(e => e.RegistrationFee)
                .HasColumnType("decimal(10, 2)")
                .HasColumnName("Registration_Fee");
        });

        modelBuilder.Entity<EventSponsor>(entity =>
        {
            entity.HasKey(e => new { e.SpId, e.EventId }).HasName("PK__Event_Sp__F5F264DDE8A1FC77");

            entity.ToTable("Event_Sponsor");

            entity.Property(e => e.SpId).HasColumnName("SP_ID");
            entity.Property(e => e.EventId).HasColumnName("Event_ID");
            entity.Property(e => e.AgreementDate).HasColumnName("Agreement_Date");
            entity.Property(e => e.ContractDuration)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Contract_Duration");
            entity.Property(e => e.ContractStatus)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Contract_Status");
            entity.Property(e => e.SponsorshipAmount)
                .HasColumnType("decimal(12, 2)")
                .HasColumnName("Sponsorship_Amount");
            entity.Property(e => e.SponsorshipType)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Sponsorship_Type");

            entity.HasOne(d => d.Event).WithMany(p => p.EventSponsors)
                .HasForeignKey(d => d.EventId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Event_Spo__Event__1C873BEC");

            entity.HasOne(d => d.Sp).WithMany(p => p.EventSponsors)
                .HasForeignKey(d => d.SpId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Event_Spo__SP_ID__1B9317B3");
        });

        modelBuilder.Entity<EventVendor>(entity =>
        {
            entity.HasKey(e => new { e.VendorId, e.EventId }).HasName("PK__Event_Ve__861A7C76DCC07D29");

            entity.ToTable("Event_Vendor");

            entity.Property(e => e.VendorId).HasColumnName("Vendor_ID");
            entity.Property(e => e.EventId).HasColumnName("Event_ID");
            entity.Property(e => e.ContractAmount)
                .HasColumnType("decimal(12, 2)")
                .HasColumnName("Contract_Amount");
            entity.Property(e => e.ContractDate).HasColumnName("Contract_Date");
            entity.Property(e => e.ContractDuration)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Contract_Duration");
            entity.Property(e => e.ContractStatus)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Contract_Status");

            entity.HasOne(d => d.Event).WithMany(p => p.EventVendors)
                .HasForeignKey(d => d.EventId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Event_Ven__Event__22401542");

            entity.HasOne(d => d.Vendor).WithMany(p => p.EventVendors)
                .HasForeignKey(d => d.VendorId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Event_Ven__Vendo__214BF109");
        });

        modelBuilder.Entity<Feedback>(entity =>
        {
            entity.HasKey(e => e.FeedbackId).HasName("PK__Feedback__CD3992F85515BC2A");

            entity.Property(e => e.FeedbackId).HasColumnName("Feedback_ID");
            entity.Property(e => e.Comment).IsUnicode(false);
            entity.Property(e => e.EventId).HasColumnName("Event_ID");
            entity.Property(e => e.SubmissionDate).HasColumnName("Submission_Date");
            entity.Property(e => e.UserId).HasColumnName("User_ID");

            entity.HasOne(d => d.Event).WithMany(p => p.Feedbacks)
                .HasForeignKey(d => d.EventId)
                .HasConstraintName("FK__Feedbacks__Event__17C286CF");

            entity.HasOne(d => d.User).WithMany(p => p.Feedbacks)
                .HasForeignKey(d => d.UserId)
                .HasConstraintName("FK__Feedbacks__User___16CE6296");
        });

        modelBuilder.Entity<Location>(entity =>
        {
            entity.HasKey(e => e.LocationId).HasName("PK__Location__D2BA00C2F19F3BC1");

            entity.HasIndex(e => e.ZipCode, "UQ__Location__3929D56211842525").IsUnique();

            entity.Property(e => e.LocationId).HasColumnName("Location_ID");
            entity.Property(e => e.Accessibility).IsUnicode(false);
            entity.Property(e => e.City)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.Country)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.Landmark)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.LocName)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Loc_Name");
            entity.Property(e => e.LocState)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Loc_State");
            entity.Property(e => e.LocType)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Loc_Type");
            entity.Property(e => e.ZipCode)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Zip_Code");
        });

        modelBuilder.Entity<Notification>(entity =>
        {
            entity.HasKey(e => e.NotificationId).HasName("PK__Notifica__8C1160B560F33E7B");

            entity.Property(e => e.NotificationId).HasColumnName("Notification_ID");
            entity.Property(e => e.Content).IsUnicode(false);
            entity.Property(e => e.NotificationDate).HasColumnName("Notification_Date");
            entity.Property(e => e.ReadStatus)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Read_Status");
            entity.Property(e => e.UserId).HasColumnName("User_ID");

            entity.HasOne(d => d.User).WithMany(p => p.Notifications)
                .HasForeignKey(d => d.UserId)
                .HasConstraintName("FK__Notificat__User___32AB8735");
        });

        modelBuilder.Entity<Organizer>(entity =>
        {
            entity.HasKey(e => e.UserId).HasName("PK__Organize__206D9190F2529599");

            entity.Property(e => e.UserId)
                .ValueGeneratedNever()
                .HasColumnName("User_ID");
            entity.Property(e => e.OrgType)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Org_Type");

            entity.HasOne(d => d.User).WithOne(p => p.Organizer)
                .HasForeignKey<Organizer>(d => d.UserId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Organizer__User___5EBF139D");
        });

        modelBuilder.Entity<Sponsor>(entity =>
        {
            entity.HasKey(e => e.SponsorId).HasName("PK__Sponsors__B53695D27FA7F6E4");

            entity.HasIndex(e => e.Email, "UQ__Sponsors__A9D105341490B201").IsUnique();

            entity.Property(e => e.SponsorId).HasColumnName("Sponsor_ID");
            entity.Property(e => e.Category)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.Email)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.SponsorLocation).HasColumnName("Sponsor_Location");
            entity.Property(e => e.SponsorName)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Sponsor_Name");
            entity.Property(e => e.SponsorUrl)
                .IsUnicode(false)
                .HasColumnName("Sponsor_Url");

            entity.HasOne(d => d.SponsorLocationNavigation).WithMany(p => p.Sponsors)
                .HasForeignKey(d => d.SponsorLocation)
                .HasConstraintName("FK__Sponsors__Sponso__0D44F85C");
        });

        modelBuilder.Entity<Task>(entity =>
        {
            entity.HasKey(e => e.TaskId).HasName("PK__Tasks__716F4ACD6F51C81E");

            entity.Property(e => e.TaskId).HasColumnName("Task_ID");
            entity.Property(e => e.EventId).HasColumnName("Event_ID");
            entity.Property(e => e.TaskDescription)
                .IsUnicode(false)
                .HasColumnName("Task_Description");
            entity.Property(e => e.TaskName)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Task_Name");
            entity.Property(e => e.TaskStatus)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Task_Status");

            entity.HasOne(d => d.DependencyNavigation).WithMany(p => p.InverseDependencyNavigation)
                .HasForeignKey(d => d.Dependency)
                .HasConstraintName("FK__Tasks__Dependenc__6C190EBB");

            entity.HasOne(d => d.Event).WithMany(p => p.Tasks)
                .HasForeignKey(d => d.EventId)
                .HasConstraintName("FK__Tasks__Event_ID__68487DD7");
        });

        modelBuilder.Entity<Ticket>(entity =>
        {
            entity.HasKey(e => e.TicketId).HasName("PK__Tickets__ED7260D9009B0768");

            entity.Property(e => e.TicketId).HasColumnName("Ticket_ID");
            entity.Property(e => e.EventId).HasColumnName("Event_ID");
            entity.Property(e => e.Price).HasColumnType("decimal(12, 2)");
            entity.Property(e => e.PurchaseDate).HasColumnName("Purchase_Date");
            entity.Property(e => e.SeatNumber).HasColumnName("Seat_Number");
            entity.Property(e => e.TicketStatus)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("Ticket_Status");
            entity.Property(e => e.UserId).HasColumnName("User_ID");

            entity.HasOne(d => d.Event).WithMany(p => p.Tickets)
                .HasForeignKey(d => d.EventId)
                .HasConstraintName("FK__Tickets__Event_I__756D6ECB");

            entity.HasOne(d => d.User).WithMany(p => p.Tickets)
                .HasForeignKey(d => d.UserId)
                .HasConstraintName("FK__Tickets__User_ID__76619304");
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.UserId).HasName("PK__Users__206D91901CE07B14");

            entity.HasIndex(e => e.Email, "UQ__Users__A9D105341F2919E6").IsUnique();

            entity.HasIndex(e => e.ContactNumber, "UQ__Users__C99AB1B46222B5DB").IsUnique();

            entity.Property(e => e.UserId).HasColumnName("User_ID");
            entity.Property(e => e.ContactNumber)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("Contact_Number");
            entity.Property(e => e.Email)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.FirstName)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("First_Name");
            entity.Property(e => e.Gender)
                .HasMaxLength(10)
                .IsUnicode(false);
            entity.Property(e => e.LastName)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Last_Name");
            entity.Property(e => e.PassHash)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Pass_Hash");
            entity.Property(e => e.ProfilePicture)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("Profile_Picture");
            entity.Property(e => e.RegistrationDate).HasColumnName("Registration_Date");
            entity.Property(e => e.UserAddress).HasColumnName("User_Address");
            entity.Property(e => e.UserBio)
                .IsUnicode(false)
                .HasColumnName("User_Bio");
            entity.Property(e => e.UserType)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("User_Type");
            entity.Property(e => e.UserUrl)
                .IsUnicode(false)
                .HasColumnName("User_Url");

            entity.HasOne(d => d.UserAddressNavigation).WithMany(p => p.Users)
                .HasForeignKey(d => d.UserAddress)
                .HasConstraintName("FK__Users__User_Addr__403A8C7D");

            entity.HasMany(d => d.Events).WithMany(p => p.Users)
                .UsingEntity<Dictionary<string, object>>(
                    "EventOrganizer",
                    r => r.HasOne<Event>().WithMany()
                        .HasForeignKey("EventId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK__Event_Org__Event__2AD55B43"),
                    l => l.HasOne<User>().WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK__Event_Org__User___29E1370A"),
                    j =>
                    {
                        j.HasKey("UserId", "EventId").HasName("PK__Event_Or__7FBB2F6EBA2C1E55");
                        j.ToTable("Event_Organizer");
                        j.IndexerProperty<int>("UserId").HasColumnName("User_ID");
                        j.IndexerProperty<int>("EventId").HasColumnName("Event_ID");
                    });

            entity.HasMany(d => d.Tasks).WithMany(p => p.Users)
                .UsingEntity<Dictionary<string, object>>(
                    "VolunteerTask",
                    r => r.HasOne<Task>().WithMany()
                        .HasForeignKey("TaskId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK__Volunteer__Task___2EA5EC27"),
                    l => l.HasOne<User>().WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK__Volunteer__User___2DB1C7EE"),
                    j =>
                    {
                        j.HasKey("UserId", "TaskId").HasName("PK__Voluntee__E77B653C153E32C0");
                        j.ToTable("Volunteer_Task");
                        j.IndexerProperty<int>("UserId").HasColumnName("User_ID");
                        j.IndexerProperty<int>("TaskId").HasColumnName("Task_ID");
                    });
        });

        modelBuilder.Entity<Vendor>(entity =>
        {
            entity.HasKey(e => e.VendorId).HasName("PK__Vendors__D9CCC288B6DDBFC1");

            entity.HasIndex(e => e.PhoneNumber, "UQ__Vendors__17A35CA499A35381").IsUnique();

            entity.HasIndex(e => e.Email, "UQ__Vendors__A9D105344982C153").IsUnique();

            entity.Property(e => e.VendorId).HasColumnName("Vendor_ID");
            entity.Property(e => e.Category)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.Email)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.IsAvailable).HasColumnName("is_available");
            entity.Property(e => e.PhoneNumber).HasColumnName("Phone_Number");
            entity.Property(e => e.VendorAddress).HasColumnName("Vendor_Address");
            entity.Property(e => e.VendorName)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Vendor_Name");
            entity.Property(e => e.VendorUrl)
                .IsUnicode(false)
                .HasColumnName("Vendor_Url");

            entity.HasOne(d => d.VendorAddressNavigation).WithMany(p => p.Vendors)
                .HasForeignKey(d => d.VendorAddress)
                .HasConstraintName("FK__Vendors__Vendor___13F1F5EB");

            entity.HasMany(d => d.Tasks).WithMany(p => p.Vendors)
                .UsingEntity<Dictionary<string, object>>(
                    "VendorTask",
                    r => r.HasOne<Task>().WithMany()
                        .HasForeignKey("TaskId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK__Vendor_Ta__Task___32767D0B"),
                    l => l.HasOne<Vendor>().WithMany()
                        .HasForeignKey("VendorId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK__Vendor_Ta__Vendo__318258D2"),
                    j =>
                    {
                        j.HasKey("VendorId", "TaskId").HasName("PK__Vendor_T__1EDA36246D3C21DC");
                        j.ToTable("Vendor_Task");
                        j.IndexerProperty<int>("VendorId").HasColumnName("Vendor_ID");
                        j.IndexerProperty<int>("TaskId").HasColumnName("Task_ID");
                    });
        });

        modelBuilder.Entity<Venue>(entity =>
        {
            entity.HasKey(e => e.VenueId).HasName("PK__Venues__4A99C4B965B02D0D");

            entity.HasIndex(e => e.PhoneNumber, "UQ__Venues__17A35CA405668D12").IsUnique();

            entity.HasIndex(e => e.Email, "UQ__Venues__A9D10534CD22221B").IsUnique();

            entity.Property(e => e.VenueId).HasColumnName("Venue_ID");
            entity.Property(e => e.AvailabilityStatus)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Availability_Status");
            entity.Property(e => e.Email)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.Facilities).IsUnicode(false);
            entity.Property(e => e.PhoneNumber)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Phone_Number");
            entity.Property(e => e.RentalCost)
                .HasColumnType("decimal(12, 2)")
                .HasColumnName("Rental_Cost");
            entity.Property(e => e.VenueDescription)
                .IsUnicode(false)
                .HasColumnName("Venue_Description");
            entity.Property(e => e.VenueLoc).HasColumnName("Venue_Loc");
            entity.Property(e => e.VenueName)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Venue_Name");
            entity.Property(e => e.VenueType)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Venue_Type");
            entity.Property(e => e.VenueUrl)
                .IsUnicode(false)
                .HasColumnName("Venue_Url");

            entity.HasOne(d => d.VenueLocNavigation).WithMany(p => p.Venues)
                .HasForeignKey(d => d.VenueLoc)
                .HasConstraintName("FK__Venues__Venue_Lo__04AFB25B");

            entity.HasMany(d => d.Events).WithMany(p => p.Venues)
                .UsingEntity<Dictionary<string, object>>(
                    "EventVenue",
                    r => r.HasOne<Event>().WithMany()
                        .HasForeignKey("EventId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK__Event_Ven__Event__2704CA5F"),
                    l => l.HasOne<Venue>().WithMany()
                        .HasForeignKey("VenueId")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK__Event_Ven__Venue__2610A626"),
                    j =>
                    {
                        j.HasKey("VenueId", "EventId").HasName("PK__Event_Ve__154F7A474FD561CC");
                        j.ToTable("Event_Venue");
                        j.IndexerProperty<int>("VenueId").HasColumnName("Venue_ID");
                        j.IndexerProperty<int>("EventId").HasColumnName("Event_ID");
                    });
        });

        modelBuilder.Entity<Volunteer>(entity =>
        {
            entity.HasKey(e => e.UserId).HasName("PK__Voluntee__206D919085D2AC94");

            entity.Property(e => e.UserId)
                .ValueGeneratedNever()
                .HasColumnName("User_ID");
            entity.Property(e => e.CurrentTask).HasColumnName("Current_Task");
            entity.Property(e => e.EventId).HasColumnName("Event_ID");
            entity.Property(e => e.IsAvailable).HasColumnName("is_available");
            entity.Property(e => e.Skills).IsUnicode(false);
            entity.Property(e => e.VolRole)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("Vol_Role");

            entity.HasOne(d => d.CurrentTaskNavigation).WithMany(p => p.Volunteers)
                .HasForeignKey(d => d.CurrentTask)
                .HasConstraintName("FK__Volunteer__Curre__2B0A656D");

            entity.HasOne(d => d.Event).WithMany(p => p.Volunteers)
                .HasForeignKey(d => d.EventId)
                .HasConstraintName("FK__Volunteer__Event__29221CFB");

            entity.HasOne(d => d.User).WithOne(p => p.Volunteer)
                .HasForeignKey<Volunteer>(d => d.UserId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Volunteer__User___282DF8C2");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
