Ò
iC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Application\ApplicationException.cs
	namespace 	
LazyLoading
 
. 
Application !
{ 
[ 
Serializable 
] 
public 

class  
ApplicationException %
:& '
	Exception( 1
{ 
internal  
ApplicationException %
(% &
string& ,
businessMessage- <
)< =
:> ?
base@ D
(D E
businessMessageE T
)T U
{		 	
}

 	
public  
ApplicationException #
(# $
)$ %
{ 	
} 	
public  
ApplicationException #
(# $
string$ *
message+ 2
,2 3
	Exception4 =
innerException> L
)L M
:N O
baseP T
(T U
messageU \
,\ ]
innerException^ l
)l m
{ 	
} 	
	protected  
ApplicationException &
(& '
System' -
.- .
Runtime. 5
.5 6
Serialization6 C
.C D
SerializationInfoD U
serializationInfoV g
,g h
Systemi o
.o p
Runtimep w
.w x
Serialization	x Ö
.
Ö Ü
StreamingContext
Ü ñ
streamingContext
ó ß
)
ß ®
:
© ™
base
´ Ø
(
Ø ∞
serializationInfo
∞ ¡
,
¡ ¬
streamingContext
√ ”
)
” ‘
{ 	
} 	
} 
} à"
ÄC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Application\Commands\CalculateBags\CalculateBagsUseCase.cs
	namespace 	
LazyLoading
 
. 
Application !
.! "
Commands" *
.* +
CalculateBags+ 8
{ 
public 

sealed 
class  
CalculateBagsUseCase ,
:- .!
ICalculateBagsUseCase/ D
{		 
public

  
CalculateBagsUseCase

 #
(

# $
)

$ %
{

& '
}

( )
public 
Task 
< 
List 
< 
Bag 
> 
> 
Execute &
(& '
List' +
<+ ,
Element, 3
>3 4
elements5 =
)= >
{ 	
List 
< 
Element 
> 
elementsPerBag (
=) *
new+ .
List/ 3
<3 4
Element4 ;
>; <
(< =
)= >
;> ?
List 
< 
Bag 
> 
bags 
= 
new  
List! %
<% &
Bag& )
>) *
(* +
)+ ,
;, -
Element 
max 
= 
elements "
." #
OrderByDescending# 4
(4 5
o5 6
=>7 9
o: ;
.; <
Weight< B
.B C
ValueC H
)H I
.I J
FirstOrDefaultJ X
(X Y
)Y Z
;Z [
elementsPerBag 
. 
Add 
( 
max "
)" #
;# $
elements 
. 
Remove 
( 
max 
)  
;  !
int 
weight 
= 
$num 
; 
int 
index 
= 
$num 
; 
bool 
isvalid 
= 
true 
;  
while   
(   
weight   
<   
$num   
&&   !
max  " %
.  % &
Weight  & ,
<  - .
$num  / 1
)  1 2
{!! 
if"" 
("" 
elements"" 
."" 
Count"" "
>""# $
$num""% &
)""& '
{## 
Element$$ 
lowest$$ "
=$$# $
elements$$% -
.$$- .
OrderBy$$. 5
($$5 6
o$$6 7
=>$$8 :
o$$; <
.$$< =
Weight$$= C
.$$C D
Value$$D I
)$$I J
.$$J K
FirstOrDefault$$K Y
($$Y Z
)$$Z [
;$$[ \
elementsPerBag%% "
.%%" #
Add%%# &
(%%& '
lowest%%' -
)%%- .
;%%. /
elements&& 
.&& 
Remove&& #
(&&# $
lowest&&$ *
)&&* +
;&&+ ,
index'' 
++'' 
;'' 
weight(( 
=(( 
max((  
.((  !
Weight((! '
*((( )
index((* /
;((/ 0
})) 
else** 
{++ 
isvalid,, 
=,, 
false,, #
;,,# $
break-- 
;-- 
}.. 
}// 
if11 
(11 
isvalid11 
)11 
{22 
bags33 
.33 
Add33 
(33 
new33 
Bag33  
(33  !
elementsPerBag33! /
)33/ 0
)330 1
;331 2
if55 
(55 
elements55 
.55 
Count55 "
>55# $
$num55% &
)55& '
{66 
bags77 
.77 
AddRange77 !
(77! "
Execute77" )
(77) *
elements77* 2
)772 3
.773 4
Result774 :
)77: ;
;77; <
}88 
}99 
return;; 
Task;; 
.;; 

FromResult;; "
(;;" #
bags;;# '
);;' (
;;;( )
}<< 	
}== 
}>> Ω
ÅC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Application\Commands\CalculateBags\ICalculateBagsUseCase.cs
	namespace 	
LazyLoading
 
. 
Application !
.! "
Commands" *
.* +
CalculateBags+ 8
{ 
public 

	interface !
ICalculateBagsUseCase *
{ 
Task		 
<		 
List		 
<		 
Bag		 
>		 
>		 
Execute		 
(		  
List		  $
<		$ %
Element		% ,
>		, -
elements		. 6
)		6 7
;		7 8
}

 
} €
ÇC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Application\Commands\CalculateTrips\CalculateTripsUseCase.cs
	namespace 	
LazyLoading
 
. 
Application !
.! "
Commands" *
.* +
CalculateTrips+ 9
{ 
public

 

sealed

 
class

 !
CalculateTripsUseCase

 -
:

. /"
ICalculateTripsUseCase

0 F
{ 
private 
readonly !
ICalculateBagsUseCase . 
CalculateBagsUseCase/ C
;C D
public !
CalculateTripsUseCase $
($ %!
ICalculateBagsUseCase% : 
calculateBagsUseCase; O
)O P
{ 	
this 
.  
CalculateBagsUseCase %
=& ' 
calculateBagsUseCase( <
;< =
} 	
public 
Task 
< 
List 
< '
CalculateTripsUseCaseResult 4
>4 5
>5 6
Execute7 >
(> ?

Dictionary? I
<I J
intJ M
,M N
ListO S
<S T
intT W
>W X
>X Y
elementsPerDayZ h
)h i
{ 	
List 
< '
CalculateTripsUseCaseResult ,
>, -
results. 5
=6 7
new8 ;
List< @
<@ A'
CalculateTripsUseCaseResultA \
>\ ]
(] ^
)^ _
;_ `
try 
{ 
TotalDaysProperty !
	totalDays" +
=, -
elementsPerDay. <
.< =
Count= B
;B C
for!! 
(!! 
int!! 
indexDay!! !
=!!" #
$num!!$ %
;!!% &
indexDay!!' /
<=!!0 2
	totalDays!!3 <
;!!< =
indexDay!!> F
++!!F H
)!!H I
{"" 
List## 
<## 
int## 
>## 
data## "
=### $
elementsPerDay##% 3
[##3 4
indexDay##4 <
]##< =
;##= >
List$$ 
<$$ 
Element$$  
>$$  !
elements$$" *
=$$+ ,
new$$- 0
List$$1 5
<$$5 6
Element$$6 =
>$$= >
($$> ?
)$$? @
;$$@ A
foreach&& 
(&& 
int&&  
weigh&&! &
in&&' )
data&&* .
)&&. /
{'' 
Element)) 
element))  '
=))( )
new))* -
Element)). 5
())5 6
weigh))6 ;
))); <
;))< =
elements**  
.**  !
Add**! $
(**$ %
element**% ,
)**, -
;**- .
}++ 
List// 
<// 
Bag// 
>// 
bags// "
=//# $
this//% )
.//) * 
CalculateBagsUseCase//* >
.//> ?
Execute//? F
(//F G
elements//G O
)//O P
.//P Q
Result//Q W
;//W X
results00 
.00 
Add00 
(00  
new00  #'
CalculateTripsUseCaseResult00$ ?
(00? @
indexDay00@ H
,00H I
bags00J N
.00N O
Count00O T
,00T U
bags00V Z
)00Z [
)00[ \
;00\ ]
}11 
}22 
catch33 
(33 
	Exception33 
	exception33 &
)33& '
{44 
throw55 
new55 
Application55 %
.55% & 
ApplicationException55& :
(55: ;
	exception55; D
.55D E
Message55E L
)55L M
;55M N
}66 
return88 
Task88 
.88 

FromResult88 "
(88" #
results88# *
)88* +
;88+ ,
}99 	
}:: 
};; ç	
àC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Application\Commands\CalculateTrips\CalculateTripsUseCaseResult.cs
	namespace 	
LazyLoading
 
. 
Application !
.! "
Commands" *
.* +
CalculateTrips+ 9
{ 
public 

sealed 
class '
CalculateTripsUseCaseResult 3
{ 
public		  
CalculateTripsResult		 #
CalculateTrips		$ 2
{		3 4
get		5 8
;		8 9
}		: ;
public '
CalculateTripsUseCaseResult *
(* +
int+ .
day/ 2
,2 3
int4 7
trips8 =
,= >
List? C
<C D
BagD G
>G H
bagsI M
)M N
{ 	
this 
. 
CalculateTrips 
=  !
new" % 
CalculateTripsResult& :
(: ;
day; >
,> ?
trips@ E
,E F
bagsG K
)K L
;L M
} 	
} 
} ±
ÉC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Application\Commands\CalculateTrips\ICalculateTripsUseCase.cs
	namespace 	
LazyLoading
 
. 
Application !
.! "
Commands" *
.* +
CalculateTrips+ 9
{ 
public 

	interface "
ICalculateTripsUseCase +
{ 
Task 
< 
List 
< '
CalculateTripsUseCaseResult -
>- .
>. /
Execute0 7
(7 8

Dictionary8 B
<B C
intC F
,F G
ListH L
<L M
intM P
>P Q
>Q R
elementsPerDayS a
)a b
;b c
}		 
}

 Æ
îC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Application\Commands\ConvertContentInputFile\ConvertContentInputFileUseCase.cs
	namespace 	
LazyLoading
 
. 
Application !
.! "
Commands" *
.* +#
ConvertContentInputFile+ B
{ 
public 

sealed 
class *
ConvertContentInputFileUseCase 6
:7 8+
IConvertContentInputFileUseCase9 X
{		 
public

 *
ConvertContentInputFileUseCase

 -
(

- .
)

. /
{

0 1
}

2 3
public 
Task 
< 

Dictionary 
< 
int "
," #
List$ (
<( )
int) ,
>, -
>- .
>. /
Execute0 7
(7 8
string8 >
[> ?
]? @
linesA F
)F G
{ 	
try 
{ 
ContentFile 
contentFile '
=( )
new* -
ContentFile. 9
(9 :
lines: ?
)? @
;@ A

Dictionary 
< 
int 
, 
List  $
<$ %
int% (
>( )
>) *
result+ 1
=2 3
(4 5
contentFile5 @
.@ A
ConvertA H
(H I
)I J
)J K
.K L
ResultL R
;R S
return 
Task 
. 

FromResult &
(& '
result' -
)- .
;. /
} 
catch 
( 
	Exception 
	exception &
)& '
{ 
throw 
new 
Application %
.% & 
ApplicationException& :
(: ;
	exception; D
.D E
MessageE L
)L M
;M N
} 
} 	
} 
} •
ïC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Application\Commands\ConvertContentInputFile\IConvertContentInputFileUseCase.cs
	namespace 	
LazyLoading
 
. 
Application !
.! "
Commands" *
.* +#
ConvertContentInputFile+ B
{ 
public 

	interface +
IConvertContentInputFileUseCase 4
{ 
Task 
< 

Dictionary 
< 
int 
, 
List !
<! "
int" %
>% &
>& '
>' (
Execute) 0
(0 1
string1 7
[7 8
]8 9
lines: ?
)? @
;@ A
}		 
}

 ˘
ÅC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Application\Commands\ReadInputFile\IReadInputFileUseCase.cs
	namespace 	
LazyLoading
 
. 
Application !
.! "
Commands" *
.* +
ReadInputFile+ 8
{ 
public 

	interface !
IReadInputFileUseCase *
{ 
Task 
< 
string 
[ 
] 
> 
Execute 
( 
Stream %
file& *
)* +
;+ ,
}		 
}

 é
ÄC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Application\Commands\ReadInputFile\ReadInputFileUseCase.cs
	namespace 	
LazyLoading
 
. 
Application !
.! "
Commands" *
.* +
ReadInputFile+ 8
{ 
public 

sealed 
class  
ReadInputFileUseCase ,
:- .!
IReadInputFileUseCase/ D
{		 
public

  
ReadInputFileUseCase

 #
(

# $
)

$ %
{

& '
}

( )
public 
async 
Task 
< 
string  
[  !
]! "
>" #
Execute$ +
(+ ,
Stream, 2
file3 7
)7 8
{ 	
try 
{ 
	InputFile 
	inputFile #
=$ %
new& )
	InputFile* 3
(3 4
file4 8
)8 9
;9 :
string 
[ 
] 
lines 
=  
await! &
	inputFile' 0
.0 1
	ReadAsync1 :
(: ;
); <
;< =
return 
lines 
; 
} 
catch 
( 
	Exception 
	exception &
)& '
{ 
throw 
new 
Application %
.% & 
ApplicationException& :
(: ;
	exception; D
.D E
MessageE L
)L M
;M N
} 
} 	
} 
} …
wC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Application\Commands\Register\IRegisterUseCase.cs
	namespace 	
LazyLoading
 
. 
Application !
.! "
Commands" *
.* +
Register+ 3
{ 
public 

	interface 
IRegisterUseCase %
{ 
Task 
Execute 
( 
string 
dni 
,  
string! '
trips( -
)- .
;. /
} 
}		 …
vC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Application\Commands\Register\RegisterUseCase.cs
	namespace 	
LazyLoading
 
. 
Application !
.! "
Commands" *
.* +
Register+ 3
{ 
public 

sealed 
class 
RegisterUseCase '
:( )
IRegisterUseCase* :
{		 
private

 
readonly

 &
ILoggerWriteOnlyRepository

 3%
LoggerWriteOnlyRepository

4 M
;

M N
public 
RegisterUseCase 
( &
ILoggerWriteOnlyRepository 9%
loggerWriteOnlyRepository: S
)S T
{ 	
this 
. %
LoggerWriteOnlyRepository *
=+ ,%
loggerWriteOnlyRepository- F
;F G
} 	
public 
async 
Task 
Execute !
(! "
string" (
dni) ,
,, -
string. 4
trips5 :
): ;
{ 	
Logger 
logger 
= 
new 
Logger  &
(& '
dni' *
,* +
DateTime, 4
.4 5
Now5 8
,8 9
trips: ?
)? @
;@ A
await 
this 
. %
LoggerWriteOnlyRepository 0
.0 1
Add1 4
(4 5
logger5 ;
); <
;< =
} 	
} 
} „

qC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Application\Results\CalculateTripsResult.cs
	namespace 	
LazyLoading
 
. 
Application !
.! "
Results" )
{ 
public		 

sealed		 
class		  
CalculateTripsResult		 ,
{

 
public 
int 
Day 
{ 
get 
; 
} 
public 
int 
Trips 
{ 
get 
; 
}  !
public 
List 
< 
Bag 
> 
Bags 
{ 
get  #
;# $
}% &
public  
CalculateTripsResult #
(# $
int$ '
day( +
,+ ,
int- 0
trips1 6
,6 7
List8 <
<< =
Bag= @
>@ A
bagsB F
)F G
{ 	
this 
. 
Day 
= 
day 
; 
this 
. 
Trips 
= 
trips 
; 
this 
. 
Bags 
= 
bags 
; 
} 	
} 
} 