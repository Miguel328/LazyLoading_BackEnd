namespace LazyLoading.Domain.ValueObjects
{
    public sealed class PropertyShouldNotBeEmptyException : DomainException
    {
        internal PropertyShouldNotBeEmptyException(string message) : base(message)
        {

        }
    }
}
