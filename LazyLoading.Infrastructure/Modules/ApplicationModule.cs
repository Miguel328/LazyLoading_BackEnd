namespace LazyLoading.Infrastructure.Modules
{
    using Autofac;
    using LazyLoading.Application;
    using System.Diagnostics.CodeAnalysis;

    public class ApplicationModule : Autofac.Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            builder.RegisterAssemblyTypes(typeof(ApplicationException).Assembly)
                .AsImplementedInterfaces()
                .InstancePerLifetimeScope();
        }
    }
}
