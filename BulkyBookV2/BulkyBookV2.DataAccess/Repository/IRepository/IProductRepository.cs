using BulkyBookV2.Models;

namespace BulkyBookV2.DataAccess.Repository.IRepository
{
    public interface IProductRepository : IRepository<Product>
    {
        void Update(Product product);
    }
}
