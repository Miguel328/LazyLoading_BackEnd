namespace LazyLoading.Domain.Test
{
    using LazyLoading.Domain.ValueObjects;
    using Xunit;

    public class IntPropertyTest
    {
        [Fact]
        public void Valid_Equals()
        {
            //
            // Arrange
            int valid = 123;

            //
            // Act
            IntProperty property = new IntProperty
            {
                Value = valid
            };

            // Assert
            Assert.True(property.Equals(valid));
        }

        [Fact]
        public void Valid_GetHashCode()
        {
            //
            // Arrange
            int valid = 123;

            //
            // Act
            IntProperty property = new IntProperty
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
            int valid = 123;

            //
            // Act
            IntProperty property = new IntProperty
            {
                Value = valid
            };

            // Assert
            string result = property.ToString();
            Assert.Equal(result, valid.ToString());
        }
    }
}
