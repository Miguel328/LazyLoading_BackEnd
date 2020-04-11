namespace LazyLoading.Domain.Test
{
    using LazyLoading.Domain.ValueObjects;
    using System.IO;
    using System.Text;
    using Xunit;

    public class FilePropertyTest
    {
        [Fact]
        public void Empty_Value()
        {
            //
            // Act and Assert
            Assert.Throws<PropertyShouldNotBeEmptyException>(() => new FileProperty(null));
        }

        [Fact]
        public void Valid_Value()
        {
            //
            // Arrange
            using (var stTest = new MemoryStream(Encoding.UTF8.GetBytes("Test")))
            {
                // Act
                FileProperty property = new FileProperty(stTest);

                // Assert    
                Assert.NotNull(property);
            }
           
        }
    }
}
