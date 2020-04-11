á

yC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Infrastructure\EntityFrameworkDataAccess\Context.cs
	namespace 	
LazyLoading
 
. 
Infrastructure $
.$ %%
EntityFrameworkDataAccess% >
{ 
public 

class 
Context 
: 
	DbContext $
{ 
public 
Context 
( 
DbContextOptions '
options( /
)/ 0
:1 2
base3 7
(7 8
options8 ?
)? @
{ 	
}

 	
public 
DbSet 
< 
Entities 
. 
Logger $
>$ %
Logger& ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
modelBuilder 
. 
Entity 
<  
Entities  (
.( )
Logger) /
>/ 0
(0 1
)1 2
.2 3
ToTable3 :
(: ;
$str; C
)C D
;D E
} 	
} 
} ·
C:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Infrastructure\EntityFrameworkDataAccess\Entities\Logger.cs
	namespace 	
LazyLoading
 
. 
Infrastructure $
.$ %%
EntityFrameworkDataAccess% >
.> ?
Entities? G
{ 
public 

class 
Logger 
{ 
[ 	
Key	 
] 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
public

 
string

 
Dni

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Trips 
{ 
get !
;! "
set# &
;& '
}( )
} 
} Ä
xC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Infrastructure\EntityFrameworkDataAccess\Module.cs
	namespace 	
LazyLoading
 
. 
Infrastructure $
.$ %%
EntityFrameworkDataAccess% >
{ 
public 

class 
Module 
: 
Autofac !
.! "
Module" (
{ 
public 
string 
ConnectionString &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
	protected

 
override

 
void

 
Load

  $
(

$ %
ContainerBuilder

% 5
builder

6 =
)

= >
{ 	
var 
optionsBuilder 
=  
new! $#
DbContextOptionsBuilder% <
<< =
	DbContext= F
>F G
(G H
)H I
;I J
optionsBuilder 
. 
UseSqlServer '
(' (
ConnectionString( 8
)8 9
;9 :
optionsBuilder 
. &
EnableSensitiveDataLogging 5
(5 6
true6 :
): ;
;; <
builder 
. 
RegisterType  
<  !
Context! (
>( )
() *
)* +
. 
WithParameter 
( 
new  
TypedParameter! /
(/ 0
typeof0 6
(6 7
DbContextOptions7 G
)G H
,H I
optionsBuilderJ X
.X Y
OptionsY `
)` a
)a b
. $
InstancePerLifetimeScope '
(' (
)( )
;) *
builder 
. !
RegisterAssemblyTypes )
() *
typeof* 0
(0 1#
InfrastructureException1 H
)H I
.I J
AssemblyJ R
)R S
. 
Where 
( 
type 
=> 
type #
.# $
	Namespace$ -
.- .
Contains. 6
(6 7
$str7 R
)R S
)S T
. #
AsImplementedInterfaces (
(( )
)) *
. $
InstancePerLifetimeScope )
() *
)* +
;+ ,
} 	
} 
} æ
C:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Infrastructure\EntityFrameworkDataAccess\Repositories\LoggerRepository.cs
	namespace 	
LazyLoading
 
. 
Infrastructure $
.$ %%
EntityFrameworkDataAccess% >
.> ?
Repositories? K
{ 
public 

sealed 
class 
LoggerRepository (
:) *&
ILoggerWriteOnlyRepository+ E
{		 
private

 
readonly

 
Context

  
Context

! (
;

( )
public 
LoggerRepository 
(  
Context  '
context( /
)/ 0
{ 	
Context 
= 
context 
??  
throw! &
new' *!
ArgumentNullException+ @
(@ A
nameofA G
(G H
contextH O
)O P
)P Q
;Q R
} 	
public 
async 
Task 
Add 
( 
Logger $
logger% +
)+ ,
{ 	
Entities 
. 
Logger 
entity "
=# $
new% (
Entities) 1
.1 2
Logger2 8
{ 
Dni 
= 
logger 
. 
Dni  
,  !
Date 
= 
logger 
. 
Date "
," #
Trips 
= 
logger 
. 
Trips $
} 
; 
await 
Context 
. 
Logger  
.  !
AddAsync! )
() *
entity* 0
)0 1
;1 2
await 
Context 
. 
SaveChangesAsync *
(* +
)+ ,
;, -
} 	
} 
} ‰
oC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Infrastructure\InfrastructureException.cs
	namespace 	
LazyLoading
 
. 
Infrastructure $
{ 
[ 
Serializable 
] 
public 

class #
InfrastructureException (
:) *
	Exception+ 4
{ 
internal #
InfrastructureException (
(( )
string) /
businessMessage0 ?
)? @
:A B
baseC G
(G H
businessMessageH W
)W X
{		 	
}

 	
public #
InfrastructureException &
(& '
)' (
{ 	
} 	
public #
InfrastructureException &
(& '
string' -
message. 5
,5 6
	Exception7 @
innerExceptionA O
)O P
:Q R
baseS W
(W X
messageX _
,_ `
innerExceptiona o
)o p
{ 	
} 	
	protected #
InfrastructureException )
() *
System* 0
.0 1
Runtime1 8
.8 9
Serialization9 F
.F G
SerializationInfoG X
serializationInfoY j
,j k
Systeml r
.r s
Runtimes z
.z {
Serialization	{ ˆ
.
ˆ ‰
StreamingContext
‰ ™
streamingContext
š ª
)
ª «
:
¬ ­
base
® ²
(
² ³
serializationInfo
³ Ä
,
Ä Å
streamingContext
Æ Ö
)
Ö ×
{ 	
} 	
} 
} ‡
qC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.Infrastructure\Modules\ApplicationModule.cs
	namespace 	
LazyLoading
 
. 
Infrastructure $
.$ %
Modules% ,
{ 
public 

class 
ApplicationModule "
:# $
Autofac% ,
., -
Module- 3
{ 
	protected 
override 
void 
Load  $
($ %
ContainerBuilder% 5
builder6 =
)= >
{		 	
builder

 
.

 !
RegisterAssemblyTypes

 )
(

) *
typeof

* 0
(

0 1 
ApplicationException

1 E
)

E F
.

F G
Assembly

G O
)

O P
. #
AsImplementedInterfaces (
(( )
)) *
. $
InstancePerLifetimeScope )
() *
)* +
;+ ,
} 	
} 
} 