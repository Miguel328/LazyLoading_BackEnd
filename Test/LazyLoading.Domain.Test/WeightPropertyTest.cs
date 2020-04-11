namespace LazyLoading.Domain.Test
{
    using LazyLoading.Domain.ValueObjects;
    using Xunit;

    public class WeightPropertyTest
    {
        [Fact]
        public void Valid_Value()
        {
            //
            // Arrange
            int valid = 10;

            //
            // Act
            WeightProperty property = new WeightProperty(valid);

            // Assert
            Assert.Equal(valid, property.Value);
        }

        [Fact]
        public void Invalid_Value()
        {
            //
            // Arrange
            int value = 510;

            //
            // Act and Assert
            Assert.Throws<DomainException>(() => new WeightProperty(value));
        }
    }
}
