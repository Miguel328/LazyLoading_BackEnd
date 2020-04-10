namespace LazyLoading.Domain.ValueObjects
{
    using System.IO;

    public sealed class FileProperty : StreamProperty
    {
        public FileProperty(Stream value) : base()
        {
            if (value is null)
            {
                throw new PropertyShouldNotBeEmptyException("La propiedad 'File' es requerida");
            }
            else
            {
                this.Value = value;
            }
        }

        public static implicit operator FileProperty(Stream value)
        {
            return new FileProperty(value);
        }
    }
}
