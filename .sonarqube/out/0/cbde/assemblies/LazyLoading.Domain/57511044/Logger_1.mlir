func @_LazyLoading.Domain.Logger.Logger.Load$int.LazyLoading.Domain.ValueObjects.DniProperty.System.DateTime.string$(i32, none, none, none) -> none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Logger\\Logger.cs" :21 :8) {
^entry (%_id : i32, %_dni : none, %_date : none, %_trips : none):
%0 = cbde.alloca i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Logger\\Logger.cs" :21 :34)
cbde.store %_id, %0 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Logger\\Logger.cs" :21 :34)
%1 = cbde.alloca none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Logger\\Logger.cs" :21 :42)
cbde.store %_dni, %1 : memref<none> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Logger\\Logger.cs" :21 :42)
%2 = cbde.alloca none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Logger\\Logger.cs" :21 :59)
cbde.store %_date, %2 : memref<none> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Logger\\Logger.cs" :21 :59)
%3 = cbde.alloca none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Logger\\Logger.cs" :21 :74)
cbde.store %_trips, %3 : memref<none> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Logger\\Logger.cs" :21 :74)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Logger\\Logger.cs" :23 :28) // new Logger              {                  Id = id,                  Dni = dni,                  Date = date,                  Trips = trips              } (ObjectCreationExpression)
%5 = cbde.load %0 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Logger\\Logger.cs" :25 :21)
%6 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Logger\\Logger.cs" :26 :22) // Not a variable of known type: dni
%7 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Logger\\Logger.cs" :27 :23) // Not a variable of known type: date
%8 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Logger\\Logger.cs" :28 :24) // Not a variable of known type: trips
%10 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Logger\\Logger.cs" :31 :19) // Not a variable of known type: logger
return %10 : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Logger\\Logger.cs" :31 :12)

^1: // ExitBlock
cbde.unreachable

}
