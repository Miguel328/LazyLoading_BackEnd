namespace LazyLoading.Domain.Trips
{
    using LazyLoading.Domain.ValueObjects;
    using System.Collections.Generic;

    public sealed class Bag
    {
        public TotalEmentsProperty TotalElements { get; private set; }
        public List<Element> Elements { get; private set; }

        public Bag(List<Element> elements)
        {
            this.TotalElements = elements.Count;
            this.Elements = elements;
        }
    }
}
