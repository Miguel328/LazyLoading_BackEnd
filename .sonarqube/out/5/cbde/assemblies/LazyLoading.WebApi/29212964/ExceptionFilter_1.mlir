func @_LazyLoading.WebApi.Filters.ExceptionFilter.OnException$Microsoft.AspNetCore.Mvc.Filters.ExceptionContext$(none) -> () loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ExceptionFilter.cs" :16 :8) {
^entry (%_context : none):
%0 = cbde.alloca none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ExceptionFilter.cs" :16 :32)
cbde.store %_context, %0 : memref<none> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ExceptionFilter.cs" :16 :32)
br ^0

^0: // SimpleBlock
// Entity from another assembly: JsonConvert
%1 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ExceptionFilter.cs" :18 :54) // Not a variable of known type: context
%2 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ExceptionFilter.cs" :18 :54) // context.Exception (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ExceptionFilter.cs" :18 :54) // context.Exception.Message (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ExceptionFilter.cs" :18 :26) // JsonConvert.SerializeObject(context.Exception.Message) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ExceptionFilter.cs" :19 :12) // Not a variable of known type: context
%7 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ExceptionFilter.cs" :19 :12) // context.Result (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ExceptionFilter.cs" :19 :56) // Not a variable of known type: json
%9 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ExceptionFilter.cs" :19 :29) // new BadRequestObjectResult(json) (ObjectCreationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ExceptionFilter.cs" :20 :12) // Not a variable of known type: context
%11 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ExceptionFilter.cs" :20 :12) // context.HttpContext (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ExceptionFilter.cs" :20 :12) // context.HttpContext.Response (SimpleMemberAccessExpression)
%13 = cbde.unknown : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ExceptionFilter.cs" :20 :12) // context.HttpContext.Response.StatusCode (SimpleMemberAccessExpression)
// Entity from another assembly: HttpStatusCode
%14 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ExceptionFilter.cs" :20 :59) // HttpStatusCode.BadRequest (SimpleMemberAccessExpression)
%15 = cbde.unknown : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ExceptionFilter.cs" :20 :54) // (int)HttpStatusCode.BadRequest (CastExpression)
br ^1

^1: // ExitBlock
return

}
