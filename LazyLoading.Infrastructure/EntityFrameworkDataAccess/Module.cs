namespace LazyLoading.Infrastructure.EntityFrameworkDataAccess
{
    using Autofac;
    using Microsoft.EntityFrameworkCore;

    public class Module : Autofac.Module
    {
        public string ConnectionString { get; set; }

        protected override void Load(ContainerBuilder builder)
        {
            var optionsBuilder = new DbContextOptionsBuilder<DbContext>();
            optionsBuilder.UseSqlServer(ConnectionString); //Obtiene la cadena de autenticación con autofac
            optionsBuilder.EnableSensitiveDataLogging(true);

            // Se registra el contexto de la base de datos
            builder.RegisterType<Context>()
              .WithParameter(new TypedParameter(typeof(DbContextOptions), optionsBuilder.Options))
              .InstancePerLifetimeScope();

            builder.RegisterAssemblyTypes(typeof(InfrastructureException).Assembly)
                .Where(type => type.Namespace.Contains("EntityFrameworkDataAccess"))
                .AsImplementedInterfaces()
                .InstancePerLifetimeScope();
        }
    }
}
