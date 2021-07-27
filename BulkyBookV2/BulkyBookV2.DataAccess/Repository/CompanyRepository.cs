﻿using BulkyBookV2.DataAccess.Data;
using BulkyBookV2.DataAccess.Repository.IRepository;
using BulkyBookV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BulkyBookV2.DataAccess.Repository
{
    public class CompanyRepository : Repository<Company>, ICompanyRepository
    {
        private readonly ApplicationDbContext _db;

        public CompanyRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(Company company)
        {
            _db.Update(company);
        }
    }
}
