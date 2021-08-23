using BulkyBookV2.DataAccess.Data;
using BulkyBookV2.DataAccess.Repository.IRepository;
using BulkyBookV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BulkyBookV2.DataAccess.Repository
{
    public class OrderDetailsRepository : Repository<OrderDetails>, IOrderDetailsRepository
    {
        private readonly ApplicationDbContext _db;

        public OrderDetailsRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(OrderDetails obj)
        {
            _db.Update(obj);
        }
    }
}
