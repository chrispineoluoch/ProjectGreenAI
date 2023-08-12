using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using ProjectGreenAI.Models;
using ProjectGreenAI.ModelViews;
using ProjectGreenAI.ModelViews.EventsManager;

namespace ProjectGreenAI.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public DbSet<Profile>? ProfilesDbset { get; set; }
        public DbSet<EventsManager>? EventsDbset { get; set; }
        public DbSet<Consultations>? ConsultationsDbset { get; set; }
        public DbSet<UserSentiments>? UserSentimentsDbset { get; set; }
    }
}