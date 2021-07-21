using System;
using System.Collections.Generic;
using System.Text;

namespace BulkyBookV2.DataAccess.Repository.IRepository
{
    public interface IUnitOfWork : IDisposable
    {
        ICategoryRepository Category { get; }
        IStoredProcedureCall StoredProcedureCall { get; }

        void Save();
    }
}
