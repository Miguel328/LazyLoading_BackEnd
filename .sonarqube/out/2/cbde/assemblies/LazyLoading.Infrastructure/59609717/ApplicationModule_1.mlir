func @_LazyLoading.Infrastructure.Modules.ApplicationModule.Load$Autofac.ContainerBuilder$(none) -> () loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Infrastructure\\Modules\\ApplicationModule.cs" :7 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Infrastructure\\Modules\\ApplicationModule.cs" :7 :37)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Infrastructure\\Modules\\ApplicationModule.cs" :7 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Infrastructure\\Modules\\ApplicationModule.cs" :9 :12) // Not a variable of known type: builder
%2 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Infrastructure\\Modules\\ApplicationModule.cs" :9 :42) // typeof(ApplicationException) (TypeOfExpression)
%3 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Infrastructure\\Modules\\ApplicationModule.cs" :9 :42) // typeof(ApplicationException).Assembly (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Infrastructure\\Modules\\ApplicationModule.cs" :9 :12) // builder.RegisterAssemblyTypes(typeof(ApplicationException).Assembly) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Infrastructure\\Modules\\ApplicationModule.cs" :9 :12) // builder.RegisterAssemblyTypes(typeof(ApplicationException).Assembly)                 .AsImplementedInterfaces() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Infrastructure\\Modules\\ApplicationModule.cs" :9 :12) // builder.RegisterAssemblyTypes(typeof(ApplicationException).Assembly)                 .AsImplementedInterfaces()                 .InstancePerLifetimeScope() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
