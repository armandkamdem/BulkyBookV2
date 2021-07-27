using Dapper;
using System;
using System.Collections.Generic;

namespace BulkyBookV2.DataAccess.Repository.IRepository
{
    public interface IStoredProcedureCall : IDisposable
    {
        T ExecuteScalar<T>(string procedureName, DynamicParameters param = null);

        void Execute(string procedureName, DynamicParameters param = null);

        T GetRecord<T>(string procedureName, DynamicParameters param = null);

        IEnumerable<T> GetRecords<T>(string procedureName, DynamicParameters param = null);

        Tuple<IEnumerable<T1>, IEnumerable<T2>> GetMultipleRecords<T1, T2>(string procedureName, DynamicParameters param = null);
    }
}
