namespace LazyLoading.Domain.ValueObjects
{
    using System;

    [Serializable]
    public sealed class PropertyShouldNotBeEmptyException : DomainException
    {
        internal PropertyShouldNotBeEmptyException(string message) : base(message)
        {
        }

        public PropertyShouldNotBeEmptyException()
        {
        }

        public PropertyShouldNotBeEmptyException(string message, Exception innerException) : base(message, innerException)
        {
        }

        private PropertyShouldNotBeEmptyException(System.Runtime.Serialization.SerializationInfo serializationInfo, System.Runtime.Serialization.StreamingContext streamingContext) : base(serializationInfo, streamingContext)
        {
        }
    }
}
