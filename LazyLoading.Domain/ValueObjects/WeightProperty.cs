namespace LazyLoading.Domain.ValueObjects
{
    public sealed class WeightProperty : IntProperty
    {
        public WeightProperty(int value) : base()
        {
            if (1 <= value && 100 <= value)
            {
                throw new DomainException("El rango del peso por elemento es invalido: el valor debe ser mayor a 1 y menor que 100");
            }
            else
            {
                this.Value = value;
            }
        }

        public static implicit operator WeightProperty(int value)
        {
            return new WeightProperty(value);
        }
    }
}
