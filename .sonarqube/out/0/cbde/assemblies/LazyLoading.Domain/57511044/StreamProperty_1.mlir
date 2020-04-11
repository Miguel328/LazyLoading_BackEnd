func @_LazyLoading.Domain.ValueObjects.StreamProperty.ToString$$() -> none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\ValueObjects\\StreamProperty.cs" :9 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\ValueObjects\\StreamProperty.cs" :11 :19) // Not a variable of known type: Value
%1 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\ValueObjects\\StreamProperty.cs" :11 :19) // Value.ToString() (InvocationExpression)
return %1 : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\ValueObjects\\StreamProperty.cs" :11 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Equals(none), it contains poisonous unsupported syntaxes

func @_LazyLoading.Domain.ValueObjects.StreamProperty.GetHashCode$$() -> i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\ValueObjects\\StreamProperty.cs" :39 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\ValueObjects\\StreamProperty.cs" :41 :19) // Not a variable of known type: Value
%1 = cbde.unknown : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\ValueObjects\\StreamProperty.cs" :41 :19) // Value.GetHashCode() (InvocationExpression)
return %1 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\ValueObjects\\StreamProperty.cs" :41 :12)

^1: // ExitBlock
cbde.unreachable

}
