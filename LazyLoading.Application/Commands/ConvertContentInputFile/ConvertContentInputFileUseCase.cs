namespace LazyLoading.Application.Commands.ConvertContentInputFile
{
    using LazyLoading.Domain.FileInput;
    using System;
    using System.Collections.Generic;
    using System.Threading.Tasks;

    public sealed class ConvertContentInputFileUseCase : IConvertContentInputFileUseCase
    {
        public ConvertContentInputFileUseCase() { }

        /// <summary>
        /// Convierte el contenido del archivo txt en una estructura entendible
        /// </summary>
        /// <param name="lines"></param>
        /// <returns></returns>
        public Task<Dictionary<int, List<int>>> Execute(string[] lines)
        {
            try
            {
                ContentFile contentFile = new ContentFile(lines);
                Dictionary<int, List<int>> result = (contentFile.Convert()).Result;
                return Task.FromResult(result);
            }
            catch (Exception exception)
            {
                throw new Application.ApplicationException(exception.Message);
            }
        }
    }
}
