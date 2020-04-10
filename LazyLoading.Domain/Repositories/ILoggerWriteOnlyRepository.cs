namespace LazyLoading.Domain.Repositories
{
    using LazyLoading.Domain.Logger;
    using System.Threading.Tasks;

    public interface ILoggerWriteOnlyRepository
    {
        Task Add(Logger logger);
    }
}
