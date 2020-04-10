namespace LazyLoading.Application.Commands.Register
{
    using System.Threading.Tasks;

    public interface IRegisterUseCase
    {
        Task Execute(string dni, string trips);
    }
}
