// Skipping function ConfigureServices(none), it contains poisonous unsupported syntaxes

func @_LazyLoading.WebApi.Startup.ConfigureContainer$Autofac.ContainerBuilder$(none) -> () loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Startup.cs" :100 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Startup.cs" :100 :39)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Startup.cs" :100 :39)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Startup.cs" :102 :12) // Not a variable of known type: builder
%2 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Startup.cs" :102 :59) // Not a variable of known type: Configuration
%3 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Startup.cs" :102 :35) // new ConfigurationModule(Configuration) (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.WebApi\\Startup.cs" :102 :12) // builder.RegisterModule(new ConfigurationModule(Configuration)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function Configure(none, none), it contains poisonous unsupported syntaxes

