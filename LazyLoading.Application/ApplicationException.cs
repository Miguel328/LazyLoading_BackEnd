namespace LazyLoading.Application
{
    using System;

    [Serializable]
    public class ApplicationException : Exception
    {
        internal ApplicationException(string businessMessage) : base(businessMessage)
        {
        }

        public ApplicationException()
        {
        }

        public ApplicationException(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected ApplicationException(System.Runtime.Serialization.SerializationInfo serializationInfo, System.Runtime.Serialization.StreamingContext streamingContext) : base(serializationInfo, streamingContext)
        {
        }
    }
}
