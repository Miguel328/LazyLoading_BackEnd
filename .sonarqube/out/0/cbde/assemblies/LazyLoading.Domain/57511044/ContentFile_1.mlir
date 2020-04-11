func @_LazyLoading.Domain.FileInput.ContentFile.Convert$$() -> none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :18 :8) {
^entry :
br ^0

^0: // ForInitializerBlock
%0 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :20 :48) // new Dictionary<int, List<int>>() (ObjectCreationExpression)
%2 = constant 0 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :21 :22)
%3 = cbde.alloca i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :21 :16) // day
cbde.store %2, %3 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :21 :16)
%4 = constant 1 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :22 :33)
%5 = cbde.alloca i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :22 :21) // indexLine
cbde.store %4, %5 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :22 :21)
br ^1

^1: // BinaryBranchBlock
%6 = cbde.load %5 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :22 :36)
%7 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :22 :49) // this (ThisExpression)
%8 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :22 :49) // this.Lines (SimpleMemberAccessExpression)
%9 = cbde.unknown : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :22 :49) // this.Lines.Length (SimpleMemberAccessExpression)
%10 = constant 1 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :22 :69)
%11 = subi %9, %10 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :22 :49)
%12 = cmpi "slt", %6, %11 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :22 :36)
cond_br %12, ^2, ^3 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :22 :36)

^2: // ForInitializerBlock
%13 = cbde.load %3 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :24 :16)
%14 = constant 1 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :24 :16)
%15 = addi %13, %14 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :24 :16)
cbde.store %15, %3 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :24 :16)
// Entity from another assembly: System
%16 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :25 :34) // System.Convert (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :25 :57) // this (ThisExpression)
%18 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :25 :57) // this.Lines (SimpleMemberAccessExpression)
%19 = cbde.load %5 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :25 :68)
%20 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :25 :57) // this.Lines[indexLine] (ElementAccessExpression)
%21 = cbde.unknown : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :25 :34) // System.Convert.ToInt32(this.Lines[indexLine]) (InvocationExpression)
%22 = cbde.alloca i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :25 :20) // totalEments
cbde.store %21, %22 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :25 :20)
%23 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :26 :41) // new List<int>() (ObjectCreationExpression)
%25 = cbde.alloca i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :28 :20) // indexElement
%26 = cbde.load %5 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :29 :37)
%27 = constant 1 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :29 :49)
%28 = addi %26, %27 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :29 :37)
cbde.store %28, %25 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :29 :21)
br ^4

^4: // BinaryBranchBlock
%29 = cbde.load %25 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :29 :53)
%30 = cbde.load %5 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :29 :70)
%31 = cbde.load %22 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :29 :82)
%32 = addi %30, %31 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :29 :70)
%33 = cmpi "sle", %29, %32 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :29 :53)
cond_br %33, ^5, ^6 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :29 :53)

^5: // SimpleBlock
%34 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :31 :20) // Not a variable of known type: listElements
// Entity from another assembly: System
%35 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :31 :37) // System.Convert (SimpleMemberAccessExpression)
%36 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :31 :60) // this (ThisExpression)
%37 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :31 :60) // this.Lines (SimpleMemberAccessExpression)
%38 = cbde.load %25 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :31 :71)
%39 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :31 :60) // this.Lines[indexElement] (ElementAccessExpression)
%40 = cbde.unknown : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :31 :37) // System.Convert.ToInt32(this.Lines[indexElement]) (InvocationExpression)
%41 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :31 :20) // listElements.Add(System.Convert.ToInt32(this.Lines[indexElement])) (InvocationExpression)
br ^7

^7: // SimpleBlock
%42 = cbde.load %25 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :29 :96)
%43 = constant 1 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :29 :96)
%44 = addi %42, %43 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :29 :96)
cbde.store %44, %25 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :29 :96)
br ^4

^6: // SimpleBlock
%45 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :34 :16) // Not a variable of known type: result
%46 = cbde.load %3 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :34 :27)
%47 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :34 :32) // Not a variable of known type: listElements
%48 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :34 :16) // result.Add(day, listElements) (InvocationExpression)
%49 = cbde.load %25 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :35 :28)
%50 = constant 1 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :35 :43)
%51 = subi %49, %50 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :35 :28)
cbde.store %51, %5 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :35 :16)
br ^8

^8: // SimpleBlock
%52 = cbde.load %5 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :22 :73)
%53 = constant 1 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :22 :73)
%54 = addi %52, %53 : i32 loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :22 :73)
cbde.store %54, %5 : memref<i32> loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :22 :73)
br ^1

^3: // JumpBlock
// Entity from another assembly: Task
%55 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :38 :35) // Not a variable of known type: result
%56 = cbde.unknown : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :38 :19) // Task.FromResult(result) (InvocationExpression)
return %56 : none loc("C:\\Users\\mihernandez\\Documents\\GitHub\\LazyLoading_BackEnd\\LazyLoading.Domain\\FileInput\\ContentFile.cs" :38 :12)

^9: // ExitBlock
cbde.unreachable

}
