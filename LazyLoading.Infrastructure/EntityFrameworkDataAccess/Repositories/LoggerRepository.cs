namespace LazyLoading.Infrastructure.EntityFrameworkDataAccess.Repositories
{
    using LazyLoading.Domain.Logger;
    using LazyLoading.Domain.Repositories;
    using System;
    using System.Threading.Tasks;

    public sealed class LoggerRepository : ILoggerWriteOnlyRepository
    {
        private readonly Context Context;

        public LoggerRepository(Context context)
        {
            Context = context ?? throw new ArgumentNullException(nameof(context));
        }

        public async Task Add(Logger logger)
        {
            Entities.Logger entity = new Entities.Logger
            {
                Dni = logger.Dni,
                Date = logger.Date,
                Trips = logger.Trips
            };

            await Context.Logger.AddAsync(entity);
            await Context.SaveChangesAsync();
        }
    }
}
