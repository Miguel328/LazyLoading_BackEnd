£

gC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.WebApi\Filters\ExceptionFilter.cs
	namespace 	
LazyLoading
 
. 
WebApi 
. 
Filters $
{ 
public 

sealed 
class 
ExceptionFilter '
:( )
IExceptionFilter* :
{ 
public 
void 
OnException 
(  
ExceptionContext  0
context1 8
)8 9
{ 	
string 
json 
= 
JsonConvert %
.% &
SerializeObject& 5
(5 6
context6 =
.= >
	Exception> G
.G H
MessageH O
)O P
;P Q
context 
. 
Result 
= 
new  "
BadRequestObjectResult! 7
(7 8
json8 <
)< =
;= >
context 
. 
HttpContext 
.  
Response  (
.( )

StatusCode) 3
=4 5
(6 7
int7 :
): ;
HttpStatusCode; I
.I J

BadRequestJ T
;T U
} 	
} 
} û
nC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.WebApi\Filters\ValidateModelAttribute.cs
	namespace 	
LazyLoading
 
. 
WebApi 
. 
Filters $
{ 
public		 

sealed		 
class		 "
ValidateModelAttribute		 .
:		/ 0!
ActionFilterAttribute		1 F
{

 
public 
override 
void 
OnActionExecuting .
(. /"
ActionExecutingContext/ E
contextF M
)M N
{ 	
if 
( 
! 
context 
. 

ModelState #
.# $
IsValid$ +
)+ ,
{ 
context 
. 
Result 
=  
new! $"
BadRequestObjectResult% ;
(; <
context< C
.C D

ModelStateD N
)N O
;O P
} 
} 	
} 
} º
WC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.WebApi\Program.cs
	namespace 	
LazyLoading
 
. 
WebApi 
{ 
public 

class 
Program 
{ 
private 
Program 
( 
) 
{ 
} 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
BuildWebHost 
( 
args 
) 
. 
Run "
(" #
)# $
;$ %
} 	
private 
static 
IWebHost 
BuildWebHost  ,
(, -
string- 3
[3 4
]4 5
args6 :
): ;
{ 	
return 
WebHost 
.  
CreateDefaultBuilder /
(/ 0
args0 4
)4 5
. 

UseStartup 
<  
Startup  '
>' (
(( )
)) *
. %
ConfigureAppConfiguration .
(. /
(/ 0
builderContext0 >
,> ?
config@ F
)F G
=>H J
{   
config!! 
.!! 
AddJsonFile!! *
(!!* +
$str!!+ 9
)!!9 :
;!!: ;
config"" 
."" #
AddEnvironmentVariables"" 6
(""6 7
)""7 8
;""8 9
}## 
)## 
.$$ 

UseSerilog$$ 
($$  
($$  !
hostingContext$$! /
,$$/ 0
loggerConfiguration$$1 D
)$$D E
=>$$F H
{%% 
loggerConfiguration&& +
.&&+ ,
MinimumLevel&&, 8
.&&8 9
Debug&&9 >
(&&> ?
)&&? @
.'' 
MinimumLevel'' )
.'') *
Override''* 2
(''2 3
$str''3 >
,''> ?
LogEventLevel''@ M
.''M N
Information''N Y
)''Y Z
.(( 
Enrich(( #
.((# $
FromLogContext(($ 2
(((2 3
)((3 4
.)) 
WriteTo)) $
.))$ %
RollingFile))% 0
())0 1
Path))1 5
.))5 6
Combine))6 =
())= >
hostingContext))> L
.))L M
HostingEnvironment))M _
.))_ `
ContentRootPath))` o
,))o p
$str	))q Ü
)
))Ü á
)
))á à
;
))à â
}** 
)** 
.++ 
ConfigureServices++ &
(++& '
services++' /
=>++0 2
services++3 ;
.++; <

AddAutofac++< F
(++F G
)++G H
)++H I
.,, 
Build,, 
(,, 
),, 
;,, 
}-- 	
}.. 
}// Ä4
WC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.WebApi\Startup.cs
	namespace 	
LazyLoading
 
. 
WebApi 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public$$ !
IConfigurationSection$$ $
JwtAppSettings$$% 3
{$$4 5
get$$6 9
;$$9 :
private$$; B
set$$C F
;$$F G
}$$H I
public** 
void** 
ConfigureServices** %
(**% &
IServiceCollection**& 8
services**9 A
)**A B
{++ 	
services,, 
.,, 
AddCors,, 
(,, 
options,, $
=>,,% '
{-- 
options.. 
... 
	AddPolicy.. !
(..! "
$str.." .
,... /
builder// 
=>// 
builder// &
.00 
SetIsOriginAllowed00 '
(00' (
_00( )
=>00* ,
true00- 1
)001 2
.11 
AllowAnyMethod11 #
(11# $
)11$ %
.22 
AllowAnyHeader22 #
(22# $
)22$ %
.33 
AllowCredentials33 %
(33% &
)33& '
)44 
;44 
}55 
)55 
;55 
services77 
.77 
AddMvc77 
(77 
options77 #
=>77$ &
{88 
options99 
.99 
Filters99 
.99  
Add99  #
(99# $
typeof99$ *
(99* +
ExceptionFilter99+ :
)99: ;
)99; <
;99< =
options:: 
.:: 
Filters:: 
.::  
Add::  #
(::# $
typeof::$ *
(::* +"
ValidateModelAttribute::+ A
)::A B
)::B C
;::C D
};; 
);; 
;;; 
services== 
.== 
AddSwaggerGen== "
(==" #
options==# *
=>==+ -
{>> 
options?? 
.?? 
IncludeXmlComments?? *
(??* +
Path??+ /
.??/ 0
ChangeExtension??0 ?
(??? @
typeof??@ F
(??F G
Startup??G N
)??N O
.??O P
Assembly??P X
.??X Y
Location??Y a
,??a b
$str??c h
)??h i
)??i j
;??j k
options@@ 
.@@ 

SwaggerDoc@@ "
(@@" #
$str@@# '
,@@' (
new@@) ,
OpenApiInfo@@- 8
{AA 
TitleBB 
=BB 
ConfigurationBB )
[BB) *
$strBB* 5
]BB5 6
,BB6 7
VersionCC 
=CC 
ConfigurationCC +
[CC+ ,
$strCC, 9
]CC9 :
,CC: ;
DescriptionDD 
=DD  !
ConfigurationDD" /
[DD/ 0
$strDD0 A
]DDA B
,DDB C
}EE 
)EE 
;EE 
optionsFF 
.FF 
CustomSchemaIdsFF '
(FF' (
xFF( )
=>FF* ,
xFF- .
.FF. /
FullNameFF/ 7
)FF7 8
;FF8 9
optionsGG 
.GG !
AddSecurityDefinitionGG -
(GG- .
$strGG. 6
,GG6 7
newGG8 ;!
OpenApiSecuritySchemeGG< Q
{HH 
DescriptionII 
=II  !
$str	II" Ä
,
IIÄ Å
NameJJ 
=JJ 
$strJJ *
,JJ* +
InKK 
=KK 
ParameterLocationKK *
.KK* +
HeaderKK+ 1
,KK1 2
TypeLL 
=LL 
SecuritySchemeTypeLL -
.LL- .
ApiKeyLL. 4
}MM 
)MM 
;MM 
optionsNN 
.NN "
AddSecurityRequirementNN .
(NN. /
newNN/ 2&
OpenApiSecurityRequirementNN3 M
{OO 
{PP 
newQQ !
OpenApiSecuritySchemeQQ 3
{RR 
	ReferenceSS  )
=SS* +
newSS, /
OpenApiReferenceSS0 @
{TT  !
TypeUU$ (
=UU) *
ReferenceTypeUU+ 8
.UU8 9
SecuritySchemeUU9 G
,UUG H
IdVV$ &
=VV' (
$strVV) 1
}WW  !
}XX 
,XX 
ArrayYY !
.YY! "
EmptyYY" '
<YY' (
stringYY( .
>YY. /
(YY/ 0
)YY0 1
}ZZ 
}[[ 
)[[ 
;[[ 
}\\ 
)\\ 
;\\ 
services^^ 
.^^ 

AddSignalR^^ 
(^^  
)^^  !
;^^! "
}__ 	
publicee 
voidee 
ConfigureContaineree &
(ee& '
ContainerBuilderee' 7
builderee8 ?
)ee? @
{ff 	
buildergg 
.gg 
RegisterModulegg "
(gg" #
newgg# &
ConfigurationModulegg' :
(gg: ;
Configurationgg; H
)ggH I
)ggI J
;ggJ K
}hh 	
publicoo 
voidoo 
	Configureoo 
(oo 
IApplicationBuilderoo 1
appoo2 5
,oo5 6
IHostingEnvironmentoo7 J
envooK N
)ooN O
{pp 	
ifqq 
(qq 
envqq 
.qq 
IsDevelopmentqq !
(qq! "
)qq" #
)qq# $
{rr 
appss 
.ss %
UseDeveloperExceptionPagess -
(ss- .
)ss. /
;ss/ 0
}tt 
appvv 
.vv 
UseCorsvv 
(vv 
$strvv $
)vv$ %
;vv% &
appxx 
.xx 
UseMvcxx 
(xx 
)xx 
;xx 
appzz 
.zz 

UseSwaggerzz 
(zz 
)zz 
.{{ 
UseSwaggerUI{{ 
({{ 
c{{ 
=>{{ !
{|| 
c}} 
.}} 
SwaggerEndpoint}} $
(}}$ %
$str}}% ?
,}}? @
$str}}A V
)}}V W
;}}W X
}~~ 
)~~ 
;~~ 
} 	
}
ÄÄ 
}ÅÅ È!
rC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.WebApi\UsesCases\Calculate\MoveController.cs
	namespace 	
LazyLoading
 
. 
WebApi 
. 
	UsesCases &
.& '
	Calculate' 0
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
MoveController 
:  !
ControllerBase" 0
{ 
private 
readonly !
IReadInputFileUseCase .
ReadInputFile/ <
;< =
private 
readonly +
IConvertContentInputFileUseCase 8#
ConvertContentInputFile9 P
;P Q
private 
readonly "
ICalculateTripsUseCase /
CalculateTrips0 >
;> ?
private 
readonly 
IRegisterUseCase )
RegisterUseCase* 9
;9 :
public!! 
MoveController!! 
(!! !
IReadInputFileUseCase"" !
readInputFile""" /
,""/ 0+
IConvertContentInputFileUseCase## +#
convertContentInputFile##, C
,##C D"
ICalculateTripsUseCase$$ "
calculateTrips$$# 1
,$$1 2
IRegisterUseCase%% 
registerUseCase%% ,
)%%, -
{&& 	
this'' 
.'' 
ReadInputFile'' 
=''  
readInputFile''! .
;''. /
this(( 
.(( #
ConvertContentInputFile(( (
=(() *#
convertContentInputFile((+ B
;((B C
this)) 
.)) 
CalculateTrips)) 
=))  !
calculateTrips))" 0
;))0 1
this** 
.** 
RegisterUseCase**  
=**! "
registerUseCase**# 2
;**2 3
}++ 	
[22 	
Route22	 
(22 
$str22 
)22 
]22 
[33 	
AllowAnonymous33	 
]33 
[44 	
HttpPost44	 
]44 
public55 
async55 
Task55 
<55 
IActionResult55 '
>55' (
	Calculate55) 2
(552 3
MoveRequest553 >
request55? F
)55F G
{66 	
try77 
{88 
string:: 
[:: 
]:: 
lines:: 
=::  
await::! &
this::' +
.::+ ,
ReadInputFile::, 9
.::9 :
Execute::: A
(::A B
request::B I
.::I J
File::J N
?::N O
.::O P
OpenReadStream::P ^
(::^ _
)::_ `
)::` a
;::a b

Dictionary<< 
<<< 
int<< 
,<< 
List<<  $
<<<$ %
int<<% (
><<( )
><<) *
content<<+ 2
=<<3 4
this<<5 9
.<<9 :#
ConvertContentInputFile<<: Q
.<<Q R
Execute<<R Y
(<<Y Z
lines<<Z _
)<<_ `
.<<` a
Result<<a g
;<<g h
List>> 
<>> '
CalculateTripsUseCaseResult>> 0
>>>0 1
result>>2 8
=>>9 :
this>>; ?
.>>? @
CalculateTrips>>@ N
.>>N O
Execute>>O V
(>>V W
content>>W ^
)>>^ _
.>>_ `
Result>>` f
;>>f g
await@@ 
this@@ 
.@@ 
RegisterUseCase@@ *
.@@* +
Execute@@+ 2
(@@2 3
request@@3 :
.@@: ;
Dni@@; >
,@@> ?
JsonConvert@@@ K
.@@K L
SerializeObject@@L [
(@@[ \
result@@\ b
)@@b c
)@@c d
;@@d e
returnAA 
OkAA 
(AA 
resultAA  
)AA  !
;AA! "
}BB 
catchCC 
(CC 
	ExceptionCC 
exCC 
)CC  
{DD 
throwEE 
newEE 
WebApiExceptionEE )
(EE) *
exEE* ,
.EE, -
MessageEE- 4
)EE4 5
;EE5 6
}FF 
}GG 	
}HH 
}II ∏
oC:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.WebApi\UsesCases\Calculate\MoveRequest.cs
	namespace 	
LazyLoading
 
. 
WebApi 
. 
	UsesCases &
.& '
	Calculate' 0
{ 
public 

class 
MoveRequest 
{		 
public 
string 
Dni 
{ 
get 
;  
set! $
;$ %
}& '
public 
	IFormFile 
File 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} π
_C:\Users\mihernandez\Documents\GitHub\LazyLoading_BackEnd\LazyLoading.WebApi\WebApiException.cs
	namespace 	
LazyLoading
 
. 
WebApi 
{ 
[ 
Serializable 
] 
public		 

class		 
WebApiException		  
:		! "
	Exception		# ,
{

 
internal 
WebApiException  
(  !
string! '
message( /
)/ 0
:1 2
base3 7
(7 8
message8 ?
)? @
{ 	
} 	
public 
WebApiException 
( 
)  
{ 	
} 	
public 
WebApiException 
( 
string %
message& -
,- .
	Exception/ 8
innerException9 G
)G H
:I J
baseK O
(O P
messageP W
,W X
innerExceptionY g
)g h
{ 	
} 	
	protected$$ 
WebApiException$$ !
($$! "
System$$" (
.$$( )
Runtime$$) 0
.$$0 1
Serialization$$1 >
.$$> ?
SerializationInfo$$? P
serializationInfo$$Q b
,$$b c
System$$d j
.$$j k
Runtime$$k r
.$$r s
Serialization	$$s Ä
.
$$Ä Å
StreamingContext
$$Å ë
streamingContext
$$í ¢
)
$$¢ £
:
$$§ •
base
$$¶ ™
(
$$™ ´
serializationInfo
$$´ º
,
$$º Ω
streamingContext
$$æ Œ
)
$$Œ œ
{%% 	
}&& 	
}'' 
}(( 