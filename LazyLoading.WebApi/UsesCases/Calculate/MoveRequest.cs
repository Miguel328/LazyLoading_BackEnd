namespace LazyLoading.WebApi.UsesCases.Calculate
{
    using Microsoft.AspNetCore.Http;

    public class MoveRequest
    {
        public string Dni { get; set; }
        public IFormFile File { get; set; }
    }
}
