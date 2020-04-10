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

        public void RemoveElement(Element element)
        {
            this.Elements.Remove(element);
        }

        public Element MaxElement()
        {
            Element element = this.Elements[0];
            int highest = element.Weight;

            for (int index = 0; index < this.Elements.Count; index++)
            {
                if (highest < this.Elements[index].Weight)
                {
                    highest = this.Elements[index].Weight;
                    element = this.Elements[index];
                }
            }

            return element;
        }

        public Element MinElement()
        {
            Element element = this.Elements[0];
            int lowest = element.Weight;

            for (int index = 0; index < this.Elements.Count; index++)
            {
                if (lowest > this.Elements[index].Weight)
                {
                    lowest = this.Elements[index].Weight;
                    element = this.Elements[index];
                }
            }

            return element;
        }
    }
}
