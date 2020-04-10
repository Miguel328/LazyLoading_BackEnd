namespace LazyLoading.Domain.Trips
{
    using LazyLoading.Domain.ValueObjects;

    public sealed class Element
    {
        public WeightProperty Weight { get; private set; }

        public Element(WeightProperty weight)
        {
            this.Weight = weight;
        }
    }
}
