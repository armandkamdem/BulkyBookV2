using BulkyBookV2.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace BulkyBookV2.DataAccess.Repository.IRepository
{
    public interface ICategoryRepository : IRepository<Category>
    {
        void Update(Category category);
    }
}
