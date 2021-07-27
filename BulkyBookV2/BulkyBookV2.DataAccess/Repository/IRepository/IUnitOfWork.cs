using System;

namespace BulkyBookV2.DataAccess.Repository.IRepository
{
    public interface IUnitOfWork : IDisposable
    {
        ICategoryRepository Category { get; }
        ICoverTypeRepository CoverType { get; }
        IProductRepository Product { get; }
        ICompanyRepository Company { get; }
        IApplicationUserRepository ApplicationUser { get;}
        IStoredProcedureCall StoredProcedureCall { get; }

        void Save();
    }
}
