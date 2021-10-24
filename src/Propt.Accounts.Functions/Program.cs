using Microsoft.Extensions.Hosting;

namespace Propt.Accounts.Functions
{
    public class Program
    {
        public static void Main()
        {
            var host = new HostBuilder()
                .ConfigureFunctionsWorkerDefaults()
                .ConfigureServices(s =>
                {
                    
                })
                .Build();

            host.Run();
        }
    }
}
