namespace LazyLoading.Application.Commands.Register
{
    using LazyLoading.Domain.Logger;
    using LazyLoading.Domain.Repositories;
    using System;
    using System.Threading.Tasks;

    public sealed class RegisterUseCase : IRegisterUseCase
    {
        private readonly ILoggerWriteOnlyRepository LoggerWriteOnlyRepository;

        public RegisterUseCase(ILoggerWriteOnlyRepository loggerWriteOnlyRepository)
        {
            this.LoggerWriteOnlyRepository = loggerWriteOnlyRepository;
        }

        public async Task Execute(string dni, string trips)
        {
            Logger logger = new Logger(dni, DateTime.Now, trips);
            await this.LoggerWriteOnlyRepository.Add(logger);
        }
    }
}
