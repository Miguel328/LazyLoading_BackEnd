namespace LazyLoading.Application.Commands.ReadInputFile
{
    using LazyLoading.Domain.FileInput;
    using System;
    using System.IO;
    using System.Threading.Tasks;

    public sealed class ReadInputFileUseCase : IReadInputFileUseCase
    {
        public ReadInputFileUseCase() { }

        public async Task<string[]> Execute(Stream file)
        {
            try
            {
                InputFile inputFile = new InputFile(file);
                string[] lines = await inputFile.ReadAsync();
                return lines;
            }
            catch (Exception exception)
            {
                throw new Application.ApplicationException(exception.Message);
            }            
        }
    }
}
