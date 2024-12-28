using Microsoft.EntityFrameworkCore;
using EventAPI.Models;



var builder = WebApplication.CreateBuilder(args);

builder.Services.AddDistributedMemoryCache();

builder.Services.AddSession(options =>
{
    options.IdleTimeout = TimeSpan.FromMinutes(30);
    options.Cookie.HttpOnly = false;
    options.Cookie.IsEssential = false;
});

builder.Services.AddControllers();

builder.Services.AddDbContext<EMSDbContext>(options =>
{
    options.UseSqlServer(builder.Configuration.GetConnectionString("EMSConnection"));
});

var app = builder.Build();

app.UseSession();

app.MapControllers();

app.Run();
