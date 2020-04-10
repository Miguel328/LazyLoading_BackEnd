﻿namespace LazyLoading.WebApi.Filters
{
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Filters;
    using System.Diagnostics.CodeAnalysis;

    public sealed class ValidateModelAttribute : ActionFilterAttribute
    {
        /// <summary>
        /// OnActionExecuting
        /// </summary>
        /// <param name="context"></param>
        public override void OnActionExecuting(ActionExecutingContext context)
        {
            if (!context.ModelState.IsValid)
            {
                context.Result = new BadRequestObjectResult(context.ModelState);
            }
        }
    }
}
