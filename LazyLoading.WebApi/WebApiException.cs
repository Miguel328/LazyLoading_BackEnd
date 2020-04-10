namespace LazyLoading.WebApi
{
    using System;

    public class WebApiException : Exception
    {
        internal WebApiException(string message) : base(message)
        {

        }
    }
}
