namespace LazyLoading.Domain.FileInput
{
    using System.Collections.Generic;
    using System.Threading.Tasks;

    public sealed class ContentFile
    {
        public string[] Lines { get; private set; }

        public ContentFile(string[] lines)
        {
            this.Lines = lines;
        }

        public Task<Dictionary<int, List<int>>> Convert()
        {
            Dictionary<int, List<int>> result = new Dictionary<int, List<int>>();
            int day = 0;
            for (int indexLine = 1; indexLine < (this.Lines.Length - 1); indexLine++)
            {
                day++;
                int totalEments = System.Convert.ToInt32(this.Lines[indexLine]);
                List<int> listElements = new List<int>();

                int indexElement;
                for (indexElement = (indexLine + 1); indexElement <= (indexLine + totalEments); indexElement++)
                {
                    listElements.Add(System.Convert.ToInt32(this.Lines[indexElement]));
                }

                result.Add(day, listElements);
                indexLine = indexElement - 1;
            }

            return Task.FromResult(result);
        }
    }
}
