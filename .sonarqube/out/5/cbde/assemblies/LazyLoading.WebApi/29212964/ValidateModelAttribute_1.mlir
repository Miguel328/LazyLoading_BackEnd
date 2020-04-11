func @_LazyLoading.WebApi.Filters.ValidateModelAttribute.OnActionExecuting$Microsoft.AspNetCore.Mvc.Filters.ActionExecutingContext$(none) -> () loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ValidateModelAttribute.cs" :14 :8) {
^entry (%_context : none):
%0 = cbde.alloca none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ValidateModelAttribute.cs" :14 :47)
cbde.store %_context, %0 : memref<none> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ValidateModelAttribute.cs" :14 :47)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ValidateModelAttribute.cs" :16 :17) // Not a variable of known type: context
%2 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ValidateModelAttribute.cs" :16 :17) // context.ModelState (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ValidateModelAttribute.cs" :16 :17) // context.ModelState.IsValid (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ValidateModelAttribute.cs" :16 :16) // !context.ModelState.IsValid (LogicalNotExpression)
cond_br %4, ^1, ^2 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ValidateModelAttribute.cs" :16 :16)

^1: // SimpleBlock
%5 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ValidateModelAttribute.cs" :18 :16) // Not a variable of known type: context
%6 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ValidateModelAttribute.cs" :18 :16) // context.Result (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ValidateModelAttribute.cs" :18 :60) // Not a variable of known type: context
%8 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ValidateModelAttribute.cs" :18 :60) // context.ModelState (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Filters\\ValidateModelAttribute.cs" :18 :33) // new BadRequestObjectResult(context.ModelState) (ObjectCreationExpression)
br ^2

^2: // ExitBlock
return

}
