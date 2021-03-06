﻿namespace LazyLoading.WebApi.Filters
{
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Filters;
    using Newtonsoft.Json;
    using System.Net;

    /// <summary>
    /// Clase que se encarga de capturar las excepciones presentadas en la API
    /// </summary>
    public sealed class ExceptionFilter : IExceptionFilter
    {
        /// <summary>
        /// OnException
        /// </summary>
        /// <param name="context"></param>       
        public void OnException(ExceptionContext context)
        {
            string json = JsonConvert.SerializeObject(context.Exception.Message);
            context.Result = new BadRequestObjectResult(json);
            context.HttpContext.Response.StatusCode = (int)HttpStatusCode.BadRequest;
        }
    }
}
