namespace LazyLoading.Domain.Test
{
    using LazyLoading.Domain.FileInput;
    using System.Collections.Generic;
    using System.IO;
    using System.Text;
    using System.Threading.Tasks;
    using Xunit;

    public class InputFileTest
    {
        [Fact]
        public void Input_File_New_Instance()
        {
            using (var stTest = new MemoryStream(Encoding.UTF8.GetBytes(@"1 4 30")))
            {
                // Act
                InputFile property = new InputFile(stTest);
                // Assert    
                Assert.NotNull(property);
            }
        }

        [Fact]
        public async Task Input_File_Read_Async()
        {
            using (var stTest = new MemoryStream(Encoding.UTF8.GetBytes("1" + System.Environment.NewLine + "4" + System.Environment.NewLine + "30")))
            {
                // Act
                InputFile property = new InputFile(stTest);
                string[] result = await property.ReadAsync();
                // Assert    
                Assert.NotNull(result);
                Assert.True(result.Length == 3);
            }
        }
    }
}
