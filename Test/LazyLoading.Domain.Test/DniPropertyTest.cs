namespace LazyLoading.Domain.Test
{
    using LazyLoading.Domain.ValueObjects;
    using Xunit;

    public class DniPropertyTest
    {
        [Fact]
        public void Empty_Value()
        {
            //
            // Arrange
            string empty = string.Empty;

            //
            // Act and Assert
            Assert.Throws<PropertyShouldNotBeEmptyException>(() => new DniProperty(empty));
        }

        [Fact]
        public void Valid_Value()
        {
            //
            // Arrange
            string valid = "1234567890";

            //
            // Act
            DniProperty property = new DniProperty(valid);

            // Assert
            Assert.Equal(valid, property);
        }

        [Fact]
        public void Exception_Length()
        {
            //
            // Arrange
            string length = "12345678910111213333435345345";

            //
            // Act and Assert
            Assert.Throws<DomainException>(() => new DniProperty(length));
        }
    }
}
