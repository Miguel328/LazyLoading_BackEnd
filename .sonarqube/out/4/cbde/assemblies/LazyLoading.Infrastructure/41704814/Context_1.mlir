func @_LazyLoading.Infrastructure.EntityFrameworkDataAccess.Context.OnModelCreating$Microsoft.EntityFrameworkCore.ModelBuilder$(none) -> () loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Infrastructure\\EntityFrameworkDataAccess\\Context.cs" :13 :8) {
^entry (%_modelBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Infrastructure\\EntityFrameworkDataAccess\\Context.cs" :13 :48)
cbde.store %_modelBuilder, %0 : memref<none> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Infrastructure\\EntityFrameworkDataAccess\\Context.cs" :13 :48)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Infrastructure\\EntityFrameworkDataAccess\\Context.cs" :15 :12) // Not a variable of known type: modelBuilder
%2 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Infrastructure\\EntityFrameworkDataAccess\\Context.cs" :15 :12) // modelBuilder.Entity<Entities.Logger>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Infrastructure\\EntityFrameworkDataAccess\\Context.cs" :15 :59) // "Logger" (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Infrastructure\\EntityFrameworkDataAccess\\Context.cs" :15 :12) // modelBuilder.Entity<Entities.Logger>().ToTable("Logger") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
