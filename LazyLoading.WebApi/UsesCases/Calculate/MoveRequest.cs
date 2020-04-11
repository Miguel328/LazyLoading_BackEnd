namespace LazyLoading.WebApi.UsesCases.Calculate
{
    using Microsoft.AspNetCore.Http;

    /// <summary>
    /// 
    /// </summary>
    public class MoveRequest
    {
        /// <summary>
        /// # de identificación
        /// </summary>
        public string Dni { get; set; }
        /// <summary>
        /// Archivo txt
        /// </summary>
        public IFormFile File { get; set; }
    }
}
