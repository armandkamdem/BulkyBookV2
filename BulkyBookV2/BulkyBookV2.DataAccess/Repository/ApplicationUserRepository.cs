using BulkyBookV2.DataAccess.Data;
using BulkyBookV2.DataAccess.Repository.IRepository;
using BulkyBookV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BulkyBookV2.DataAccess.Repository
{
    public class ApplicationUserRepository : Repository<ApplicationUser>, IApplicationUserRepository
    {
        private readonly ApplicationDbContext _db;

        public ApplicationUserRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

    }
}
