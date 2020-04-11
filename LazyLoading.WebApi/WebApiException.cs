namespace LazyLoading.WebApi
{
    using System;

    /// <summary>
    /// WebApiException
    /// </summary>
    [Serializable]
    public class WebApiException : Exception
    {
        internal WebApiException(string message) : base(message)
        {
        }

        /// <summary>
        /// 
        /// </summary>
        public WebApiException()
        {
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="message"></param>
        /// <param name="innerException"></param>
        public WebApiException(string message, Exception innerException) : base(message, innerException)
        {
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="serializationInfo"></param>
        /// <param name="streamingContext"></param>
        protected WebApiException(System.Runtime.Serialization.SerializationInfo serializationInfo, System.Runtime.Serialization.StreamingContext streamingContext) : base(serializationInfo, streamingContext)
        {
        }
    }
}
