namespace LazyLoading.Domain.ValueObjects
{
    public sealed class TotalEmentsProperty : IntProperty
    {
        public TotalEmentsProperty(int value) : base()
        {
            if (1 <= value && 100 <= value)
            {
                throw new DomainException("El rango del total elementos es invalido: el valor debe ser mayor a 1 y menor que 100");
            }
            else
            {
                this.Value = value;
            }
        }

        public static implicit operator TotalEmentsProperty(int value)
        {
            return new TotalEmentsProperty(value);
        }
    }
}
