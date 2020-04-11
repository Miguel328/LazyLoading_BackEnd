func @_LazyLoading.Domain.Trips.Bag.RemoveElement$LazyLoading.Domain.Trips.Element$(none) -> () loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :16 :8) {
^entry (%_element : none):
%0 = cbde.alloca none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :16 :34)
cbde.store %_element, %0 : memref<none> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :16 :34)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :18 :12) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :18 :12) // this.Elements (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :18 :33) // Not a variable of known type: element
%4 = cbde.unknown : i1 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :18 :12) // this.Elements.Remove(element) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_LazyLoading.Domain.Trips.Bag.MaxElement$$() -> none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :21 :8) {
^entry :
br ^0

^0: // ForInitializerBlock
%0 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :23 :30) // this (ThisExpression)
%1 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :23 :30) // this.Elements (SimpleMemberAccessExpression)
%2 = constant 0 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :23 :44)
%3 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :23 :30) // this.Elements[0] (ElementAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :24 :26) // Not a variable of known type: element
%6 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :24 :26) // element.Weight (SimpleMemberAccessExpression)
%7 = cbde.alloca i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :24 :16) // highest
// Initialized with unknown data
%8 = constant 0 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :26 :29)
%9 = cbde.alloca i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :26 :21) // index
cbde.store %8, %9 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :26 :21)
br ^1

^1: // BinaryBranchBlock
%10 = cbde.load %9 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :26 :32)
%11 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :26 :40) // this (ThisExpression)
%12 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :26 :40) // this.Elements (SimpleMemberAccessExpression)
%13 = cbde.unknown : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :26 :40) // this.Elements.Count (SimpleMemberAccessExpression)
%14 = cmpi "slt", %10, %13 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :26 :32)
cond_br %14, ^2, ^3 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :26 :32)

^2: // BinaryBranchBlock
%15 = cbde.load %7 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :28 :20)
%16 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :28 :30) // this (ThisExpression)
%17 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :28 :30) // this.Elements (SimpleMemberAccessExpression)
%18 = cbde.load %9 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :28 :44)
%19 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :28 :30) // this.Elements[index] (ElementAccessExpression)
%20 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :28 :30) // this.Elements[index].Weight (SimpleMemberAccessExpression)
%21 = cbde.unknown : i1  loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :28 :20) // comparison of unknown type: highest < this.Elements[index].Weight
cond_br %21, ^4, ^5 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :28 :20)

^4: // SimpleBlock
%22 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :30 :30) // this (ThisExpression)
%23 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :30 :30) // this.Elements (SimpleMemberAccessExpression)
%24 = cbde.load %9 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :30 :44)
%25 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :30 :30) // this.Elements[index] (ElementAccessExpression)
%26 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :30 :30) // this.Elements[index].Weight (SimpleMemberAccessExpression)
%27 = cbde.unknown : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :30 :30) // Dummy variable because type of %26 is incompatible
cbde.store %27, %7 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :30 :20)
%28 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :31 :30) // this (ThisExpression)
%29 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :31 :30) // this.Elements (SimpleMemberAccessExpression)
%30 = cbde.load %9 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :31 :44)
%31 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :31 :30) // this.Elements[index] (ElementAccessExpression)
br ^5

^5: // SimpleBlock
%32 = cbde.load %9 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :26 :61)
%33 = constant 1 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :26 :61)
%34 = addi %32, %33 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :26 :61)
cbde.store %34, %9 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :26 :61)
br ^1

^3: // JumpBlock
%35 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :35 :19) // Not a variable of known type: element
return %35 : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :35 :12)

^6: // ExitBlock
cbde.unreachable

}
func @_LazyLoading.Domain.Trips.Bag.MinElement$$() -> none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :38 :8) {
^entry :
br ^0

^0: // ForInitializerBlock
%0 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :40 :30) // this (ThisExpression)
%1 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :40 :30) // this.Elements (SimpleMemberAccessExpression)
%2 = constant 0 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :40 :44)
%3 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :40 :30) // this.Elements[0] (ElementAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :41 :25) // Not a variable of known type: element
%6 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :41 :25) // element.Weight (SimpleMemberAccessExpression)
%7 = cbde.alloca i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :41 :16) // lowest
// Initialized with unknown data
%8 = constant 0 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :43 :29)
%9 = cbde.alloca i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :43 :21) // index
cbde.store %8, %9 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :43 :21)
br ^1

^1: // BinaryBranchBlock
%10 = cbde.load %9 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :43 :32)
%11 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :43 :40) // this (ThisExpression)
%12 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :43 :40) // this.Elements (SimpleMemberAccessExpression)
%13 = cbde.unknown : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :43 :40) // this.Elements.Count (SimpleMemberAccessExpression)
%14 = cmpi "slt", %10, %13 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :43 :32)
cond_br %14, ^2, ^3 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :43 :32)

^2: // BinaryBranchBlock
%15 = cbde.load %7 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :45 :20)
%16 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :45 :29) // this (ThisExpression)
%17 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :45 :29) // this.Elements (SimpleMemberAccessExpression)
%18 = cbde.load %9 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :45 :43)
%19 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :45 :29) // this.Elements[index] (ElementAccessExpression)
%20 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :45 :29) // this.Elements[index].Weight (SimpleMemberAccessExpression)
%21 = cbde.unknown : i1  loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :45 :20) // comparison of unknown type: lowest > this.Elements[index].Weight
cond_br %21, ^4, ^5 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :45 :20)

^4: // SimpleBlock
%22 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :47 :29) // this (ThisExpression)
%23 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :47 :29) // this.Elements (SimpleMemberAccessExpression)
%24 = cbde.load %9 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :47 :43)
%25 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :47 :29) // this.Elements[index] (ElementAccessExpression)
%26 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :47 :29) // this.Elements[index].Weight (SimpleMemberAccessExpression)
%27 = cbde.unknown : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :47 :29) // Dummy variable because type of %26 is incompatible
cbde.store %27, %7 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :47 :20)
%28 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :48 :30) // this (ThisExpression)
%29 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :48 :30) // this.Elements (SimpleMemberAccessExpression)
%30 = cbde.load %9 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :48 :44)
%31 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :48 :30) // this.Elements[index] (ElementAccessExpression)
br ^5

^5: // SimpleBlock
%32 = cbde.load %9 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :43 :61)
%33 = constant 1 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :43 :61)
%34 = addi %32, %33 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :43 :61)
cbde.store %34, %9 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :43 :61)
br ^1

^3: // JumpBlock
%35 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :52 :19) // Not a variable of known type: element
return %35 : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\Trips\\Bag.cs" :52 :12)

^6: // ExitBlock
cbde.unreachable

}
