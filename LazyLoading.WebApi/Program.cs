namespace LazyLoading.WebApi
{
    using Autofac.Extensions.DependencyInjection;
    using Microsoft.AspNetCore;
    using Microsoft.AspNetCore.Hosting;
    using Microsoft.Extensions.Configuration;
    using Serilog;
    using Serilog.Events;
    using System.IO;

    /// <summary>
    /// Program
    /// </summary>
    public class Program
    {
        private Program() { }

        /// <summary>
        /// Main
        /// </summary>
        /// <param name="args"></param>
        public static void Main(string[] args)
        {
            BuildWebHost(args).Run();
        }

        private static IWebHost BuildWebHost(string[] args)
        {
            return WebHost.CreateDefaultBuilder(args)
                    .UseStartup<Startup>()
                    .ConfigureAppConfiguration((builderContext, config) =>
                    {
                        config.AddJsonFile("autofac.json");
                        config.AddEnvironmentVariables();
                    })
                    .UseSerilog((hostingContext, loggerConfiguration) =>
                    {
                        loggerConfiguration.MinimumLevel.Debug()
                            .MinimumLevel.Override("Microsoft", LogEventLevel.Information)
                            .Enrich.FromLogContext()
                            .WriteTo.RollingFile(Path.Combine(hostingContext.HostingEnvironment.ContentRootPath, "Logs/log-{Date}.log"));
                    })
                    .ConfigureServices(services => services.AddAutofac())
                    .Build();
        }
    }
}
