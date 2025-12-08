using Cms.Api.Models;
using Microsoft.EntityFrameworkCore;

namespace Cms.Api.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {
        }

        public DbSet<Post> Posts => Set<Post>();
    }
}
