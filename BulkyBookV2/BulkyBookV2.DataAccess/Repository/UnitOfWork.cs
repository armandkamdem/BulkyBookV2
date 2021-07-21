using BulkyBookV2.DataAccess.Data;
using BulkyBookV2.DataAccess.Repository.IRepository;
using System;
using System.Collections.Generic;
using System.Text;

namespace BulkyBookV2.DataAccess.Repository
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly ApplicationDbContext _db;

        public UnitOfWork(ApplicationDbContext db)
        {
            _db = db;
            Category = new CategoryRepository(_db);
            CoverType = new CoverTypeRepository(_db);
            StoredProcedureCall = new StoredProcedureCall(_db);
        }

        public ICategoryRepository Category { get; private set; }
        public ICoverTypeRepository CoverType { get; private set; }
        public IStoredProcedureCall StoredProcedureCall { get; private set; }

        public void Dispose()
        {
            _db.Dispose();
        }

        public void Save()
        {
            _db.SaveChanges();
        }
    }
}
