func @_LazyLoading.WebApi.Program.Main$string$$$(none) -> () loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Program.cs" :21 :8) {
^entry (%_args : none):
%0 = cbde.alloca none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Program.cs" :21 :32)
cbde.store %_args, %0 : memref<none> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Program.cs" :21 :32)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: BuildWebHost
%1 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Program.cs" :23 :25) // Not a variable of known type: args
%2 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Program.cs" :23 :12) // BuildWebHost(args) (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Program.cs" :23 :12) // BuildWebHost(args).Run() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function BuildWebHost(none), it contains poisonous unsupported syntaxes

