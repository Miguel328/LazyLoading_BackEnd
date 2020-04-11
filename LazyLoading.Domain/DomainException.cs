namespace LazyLoading.Domain
{
    using System;

    [Serializable]
    public class DomainException : Exception
    {
        internal DomainException(string businessMessage) : base(businessMessage)
        {
        }

        public DomainException()
        {
        }

        public DomainException(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected DomainException(System.Runtime.Serialization.SerializationInfo serializationInfo, System.Runtime.Serialization.StreamingContext streamingContext) : base(serializationInfo, streamingContext)
        {
        }
    }
}
