namespace LazyLoading.Application.Commands.ConvertContentInputFile
{
    using System.Collections.Generic;
    using System.Threading.Tasks;

    public interface IConvertContentInputFileUseCase
    {
        Task<Dictionary<int, List<int>>> Execute(string[] lines);
    }
}
