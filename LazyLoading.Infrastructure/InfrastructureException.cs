namespace LazyLoading.Infrastructure
{
    using System;
    using System.Diagnostics.CodeAnalysis;

    public class InfrastructureException : Exception
    {
        internal InfrastructureException(string businessMessage) : base(businessMessage)
        {

        }
    }
}
