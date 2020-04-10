namespace LazyLoading.Application.Commands.ReadInputFile
{
    using System.IO;
    using System.Threading.Tasks;

    public interface IReadInputFileUseCase
    {
        Task<string[]> Execute(Stream file);
    }
}
