namespace LazyLoading.Domain.ValueObjects
{
    public sealed class TotalDaysProperty : IntProperty
    {
        public TotalDaysProperty(int value) : base()
        {
            if (1 <= value && 500 <= value)
            {
                throw new DomainException("El rango del total días es invalido: el valor debe ser mayor a 1 y menor que 500");
            }
            else
            {
                this.Value = value;
            }
        }

        public static implicit operator TotalDaysProperty(int value)
        {
            return new TotalDaysProperty(value);
        }
    }
}
