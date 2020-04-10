namespace LazyLoading.Domain.ValueObjects
{
    public sealed class DniProperty : StringProperty
    {
        public DniProperty(string value) : base()
        {
            if (string.IsNullOrWhiteSpace(value))
            {
                throw new PropertyShouldNotBeEmptyException("La propiedad 'Dni' es requerida");
            }
            if(value.Length > 25)
            {
                throw new DomainException("La propiedad 'Dni' supera el máximo de caracteres permitidos: 25");
            }
            else
            {
                this.Value = value;
            }
        }

        public static implicit operator DniProperty(string text)
        {
            return new DniProperty(text);
        }
    }
}
