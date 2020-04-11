namespace LazyLoading.Domain.Test
{
    using LazyLoading.Domain.Trips;
    using System.Collections.Generic;
    using Xunit;

    public class BagTest
    {
        [Fact]
        public void Bag_New_Instance()
        {
            List<Element> elements = new List<Element>
            {
                new Element(1),
                new Element(2),
                new Element(15),
                new Element(16)
            };

            Bag bag = new Bag(elements);

            Assert.Equal(4, bag.TotalElements.Value);
            Assert.NotNull(bag);
        }
    }
}
