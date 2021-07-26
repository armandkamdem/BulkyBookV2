using System;

namespace BulkyBookV2.DataAccess.Repository.IRepository
{
    public interface IUnitOfWork : IDisposable
    {
        ICategoryRepository Category { get; }
        ICoverTypeRepository CoverType { get; }
        IProductRepository Product { get; }
        IStoredProcedureCall StoredProcedureCall { get; }

        void Save();
    }
}
