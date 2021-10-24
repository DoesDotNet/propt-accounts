using System.Net;
using System.Threading.Tasks;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Azure.Functions.Worker.Http;
using Microsoft.Extensions.Logging;

namespace Propt.Accounts.Functions
{
    public class HealthzFunction
    {
        [Function("Healthz")]
        public async Task<HttpResponseData> Run(
            [HttpTrigger(AuthorizationLevel.Function, "get", Route = null)] HttpRequestData req,
            FunctionContext context)
        {
            var log = context.GetLogger<HealthzFunction>();

            log.LogInformation("Healthz Triggered");

            var response = req.CreateResponse(HttpStatusCode.OK);
            response.Headers.Add("Content-Type", "application/json; charset=utf-8");
            response.WriteString("{\"status\":\"ok\"}");
            return response;
        }
    }
}

