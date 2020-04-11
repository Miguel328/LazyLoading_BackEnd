namespace LazyLoading.Domain.Test
{
    using LazyLoading.Domain.FileInput;
    using System.Collections.Generic;
    using Xunit;

    public class ContentFileTest
    {
        [Fact]
        public void Content_File_New_Instance()
        {
            ContentFile contentFile = new ContentFile(new string[] { "1", "4", "54" });
            Assert.NotNull(contentFile);
        }

        [Fact]
        public void Content_File_Convert()
        {
            ContentFile contentFile = new ContentFile(new string[] { "1", "4", "30", "30", "1", "1" });
            Dictionary<int, List<int>> result = contentFile.Convert().Result;
            Assert.True(result.Count == 1);
            Assert.True(result[1].Count == 4);
        }
    }
}
