using System;
using System.Collections.Generic;
using System.Text;

namespace BulkyBookV2.DataAccess.Repository.IRepository
{
    public interface IUnitOfWork : IDisposable
    {
        ICategoryRepository Category { get; }
        ICoverTypeRepository CoverType { get; }
        IStoredProcedureCall StoredProcedureCall { get; }

        void Save();
    }
}
