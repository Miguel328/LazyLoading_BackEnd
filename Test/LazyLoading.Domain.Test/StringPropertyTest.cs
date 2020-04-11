namespace LazyLoading.Domain.Test
{
    using LazyLoading.Domain.ValueObjects;
    using Xunit;

    public class StringPropertyTest
    {
        [Fact]
        public void Valid_Equals()
        {
            //
            // Arrange
            string valid = "Test";

            //
            // Act
            StringProperty property = new StringProperty
            {
                Value = valid
            };

            // Assert
            Assert.True(property.Equals("Test"));
        }

        [Fact]
        public void Valid_GetHashCode()
        {
            //
            // Arrange
            string valid = "Test";

            //
            // Act
            StringProperty property = new StringProperty
            {
                Value = valid
            };

            // Assert
            int result = property.GetHashCode();
            Assert.Equal(result, valid.GetHashCode());
        }

        [Fact]
        public void Valid_ToString()
        {
            //
            // Arrange
            string valid = "Test";

            //
            // Act
            StringProperty property = new StringProperty
            {
                Value = valid
            };

            // Assert
            string result = property.ToString();
            Assert.Equal(result, valid.ToString());
        }
    }
}
