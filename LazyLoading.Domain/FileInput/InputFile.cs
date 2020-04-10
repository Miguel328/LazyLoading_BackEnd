namespace LazyLoading.Domain.FileInput
{
    using LazyLoading.Domain.ValueObjects;
    using System;
    using System.IO;
    using System.Threading.Tasks;

    public sealed class InputFile
    {
        public FileProperty File { get; private set; }

        public InputFile(FileProperty file)
        {
            this.File = file;
        }

        public async Task<string[]> ReadAsync()
        {
            StreamReader streamReader = new StreamReader(this.File);
            String content = await streamReader.ReadToEndAsync();
            string[] lines = content.Split('\n');
            return lines;
        }
    }
}
