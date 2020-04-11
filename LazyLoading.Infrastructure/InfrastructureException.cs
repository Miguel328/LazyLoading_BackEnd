namespace LazyLoading.Infrastructure
{
    using System;

    [Serializable]
    public class InfrastructureException : Exception
    {
        internal InfrastructureException(string businessMessage) : base(businessMessage)
        {
        }

        public InfrastructureException()
        {
        }

        public InfrastructureException(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected InfrastructureException(System.Runtime.Serialization.SerializationInfo serializationInfo, System.Runtime.Serialization.StreamingContext streamingContext) : base(serializationInfo, streamingContext)
        {
        }
    }
}
