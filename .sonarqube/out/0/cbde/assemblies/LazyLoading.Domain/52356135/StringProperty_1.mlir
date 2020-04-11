func @_LazyLoading.Domain.ValueObjects.StringProperty.ToString$$() -> none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\ValueObjects\\StringProperty.cs" :6 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\ValueObjects\\StringProperty.cs" :8 :19) // Not a variable of known type: Value
return %0 : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\ValueObjects\\StringProperty.cs" :8 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Equals(none), it contains poisonous unsupported syntaxes

func @_LazyLoading.Domain.ValueObjects.StringProperty.GetHashCode$$() -> i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\ValueObjects\\StringProperty.cs" :36 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\ValueObjects\\StringProperty.cs" :38 :19) // Not a variable of known type: Value
%1 = cbde.unknown : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\ValueObjects\\StringProperty.cs" :38 :19) // Value.GetHashCode() (InvocationExpression)
return %1 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\ValueObjects\\StringProperty.cs" :38 :12)

^1: // ExitBlock
cbde.unreachable

}
