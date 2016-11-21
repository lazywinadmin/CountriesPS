# CountriesPS

PowerShell module to retrieve data about countries using the Restful API RestCountries (https://github.com/fayder/restcountries)

## Installation
#### Download from PowerShell Gallery
``` powershell
Install-Module CountriesPS
```
#### Download from GitHub repository

* Download the repository
* Unblock the zip file
* Extract the folder CountriesPS to a module path (e.g. $home\Documents\WindowsPowerShell\Modules)

## Getting Started

``` powershell
# Loading the module
Import-Module CountriesPS

# Retrieving a country per Name
Get-Country -CountryCode CA
	
	name           : Canada
	topLevelDomain : {.ca}
	alpha2Code     : CA
	alpha3Code     : CAN
	callingCodes   : {1}
	capital        : Ottawa
	altSpellings   : {CA}
	relevance      : 2
	region         : Americas
	subregion      : Northern America
	translations   : @{de=Kanada; es=Canadá; fr=Canada; ja=カナダ; it=Canada}
	population     : 35749600
	latlng         : {60.0, -95.0}
	demonym        : Canadian
	area           : 9984670.0
	gini           : 32.6
	timezones      : {UTC-08:00, UTC-07:00, UTC-06:00, UTC-05:00...}
	borders        : {USA}
	nativeName     : Canada
	numericCode    : 124
	currencies     : {CAD}
	languages      : {en, fr}
	
# Retrieving a country calling code
Get-Country -CallingCode 32
	
	name           : Belgium
	topLevelDomain : {.be}
	alpha2Code     : BE
	alpha3Code     : BEL
	callingCodes   : {32}
	capital        : Brussels
	altSpellings   : {BE, België, Belgie, Belgien...}
	relevance      : 1.5
	region         : Europe
	subregion      : Western Europe
	translations   : @{de=Belgien; es=Bélgica; fr=Belgique; ja=ベルギー; it=Belgio}
	population     : 11248330
	latlng         : {50.83333333, 4.0}
	demonym        : Belgian
	area           : 30528.0
	gini           : 33.0
	timezones      : {UTC+01:00}
	borders        : {FRA, DEU, LUX, NLD}
	nativeName     : België
	numericCode    : 056
	currencies     : {EUR}
	languages      : {nl, fr, de}
	
# Retrieving a country per its Capital
	Get-Country -Capital Amsterdam
	
	name           : Netherlands
	topLevelDomain : {.nl}
	alpha2Code     : NL
	alpha3Code     : NLD
	callingCodes   : {31}
	capital        : Amsterdam
	altSpellings   : {NL, Holland, Nederland}
	relevance      : 1.5
	region         : Europe
	subregion      : Western Europe
	translations   : @{de=Niederlande; es=Países Bajos; fr=Pays-Bas; ja=オランダ; it=Paesi Bassi}
	population     : 16916000
	latlng         : {52.5, 5.75}
	demonym        : Dutch
	area           : 41850.0
	gini           : 30.9
	timezones      : {UTC-04:00, UTC+01:00}
	borders        : {BEL, DEU}
	nativeName     : Nederland
	numericCode    : 528
	currencies     : {EUR}
	languages      : {nl}
	
# Retrieving countries using Euros
Get-Country -Currency Eur | Select-Object -Property Name
	
	Åland Islands                      
	Andorra                            
	Austria                            
	Belgium                            
	Cyprus                             
	Estonia                            
	Finland                            
	France                             
	French Guiana                      
	French Southern and Antarctic Lands
	Germany                            
	Greece                             
	Guadeloupe                         
	Holy See                           
	Republic of Ireland                
	Italy                              
	Latvia                             
	Lithuania                          
	Luxembourg                         
	Malta                              
	Martinique                         
	Mayotte                            
	Monaco                             
	Montenegro                         
	Netherlands                        
	Portugal                           
	Republic of Kosovo                 
	Réunion                            
	Saint Barthélemy                   
	Saint Martin                       
	Saint Pierre and Miquelon          
	San Marino                         
	Slovakia                           
	Slovenia                           
	Spain                              

#Retrieving countries where German is spoken
	Get-Country -Language De
	
	name           : Austria
	topLevelDomain : {.at}
	alpha2Code     : AT
	alpha3Code     : AUT
	callingCodes   : {43}
	capital        : Vienna
	altSpellings   : {AT, ╓sterreich, Osterreich, Oesterreich}
	relevance      : 0
	region         : Europe
	subregion      : Western Europe
	translations   : @{de=╓sterreich; es=Austria; fr=Autriche; ja=??????; it=Austria}
	population     : 8602112
	latlng         : {47.33333333, 13.33333333}
	demonym        : Austrian
	area           : 83871.0
	gini           : 26.0
	timezones      : {UTC+01:00}
	borders        : {CZE, DEU, HUN, ITA...}
	nativeName     : ╓sterreich
	numericCode    : 040
	currencies     : {EUR}
	languages      : {de}

	name           : Belgium
	topLevelDomain : {.be}
	alpha2Code     : BE
	alpha3Code     : BEL
	callingCodes   : {32}
	capital        : Brussels
	altSpellings   : {BE, Belgiδ, Belgie, Belgien...}
	relevance      : 1.5
	region         : Europe
	subregion      : Western Europe
	translations   : @{de=Belgien; es=BΘlgica; fr=Belgique; ja=????; it=Belgio}
	population     : 11248330
	latlng         : {50.83333333, 4.0}
	demonym        : Belgian
	area           : 30528.0
	gini           : 33.0
	timezones      : {UTC+01:00}
	borders        : {FRA, DEU, LUX, NLD}
	nativeName     : Belgiδ
	numericCode    : 056
	currencies     : {EUR}
	languages      : {nl, fr, de}

	name           : Germany
	topLevelDomain : {.de}
	alpha2Code     : DE
	alpha3Code     : DEU
	callingCodes   : {49}
	capital        : Berlin
	altSpellings   : {DE, Federal Republic of Germany, Bundesrepublik Deutschland}
	relevance      : 3
	region         : Europe
	subregion      : Western Europe
	translations   : @{de=Deutschland; es=Alemania; fr=Allemagne; ja=???; it=Germania}
	population     : 81083600
	latlng         : {51.0, 9.0}
	demonym        : German
	area           : 357114.0
	gini           : 28.3
	timezones      : {UTC+01:00}
	borders        : {AUT, BEL, CZE, DNK...}
	nativeName     : Deutschland
	numericCode    : 276
	currencies     : {EUR}
	languages      : {de}

	name           : Holy See
	topLevelDomain : {.va}
	alpha2Code     : VA
	alpha3Code     : VAT
	callingCodes   : {379}
	capital        : Rome
	altSpellings   : {Sancta Sedes, Vatican, The Vatican}
	relevance      : 
	region         : Europe
	subregion      : Southern Europe
	translations   : @{de=Heiliger Stuhl; es=Santa Sede; fr=voir Saint; ja=??; it=Santa Sede}
	population     : 451
	latlng         : {41.9, 12.45}
	demonym        : 
	area           : 0.44
	gini           : 
	timezones      : {UTC+01:00}
	borders        : {ITA}
	nativeName     : Sancta Sedes
	numericCode    : 
	currencies     : {EUR}
	languages      : {la, it, fr, de}

	name           : Liechtenstein
	topLevelDomain : {.li}
	alpha2Code     : LI
	alpha3Code     : LIE
	callingCodes   : {423}
	capital        : Vaduz
	altSpellings   : {LI, Principality of Liechtenstein, Fⁿrstentum Liechtenstein}
	relevance      : 0
	region         : Europe
	subregion      : Western Europe
	translations   : @{de=Liechtenstein; es=Liechtenstein; fr=Liechtenstein; ja=?????????; it=Liechtenstein}
	population     : 37370
	latlng         : {47.26666666, 9.53333333}
	demonym        : Liechtensteiner
	area           : 160.0
	gini           : 
	timezones      : {UTC+01:00}
	borders        : {AUT, CHE}
	nativeName     : Liechtenstein
	numericCode    : 438
	currencies     : {CHF}
	languages      : {de}

	name           : Luxembourg
	topLevelDomain : {.lu}
	alpha2Code     : LU
	alpha3Code     : LUX
	callingCodes   : {352}
	capital        : Luxembourg
	altSpellings   : {LU, Grand Duchy of Luxembourg, Grand-DuchΘ de Luxembourg, Gro▀herzogtum Luxemburg...}
	relevance      : 0
	region         : Europe
	subregion      : Western Europe
	translations   : @{de=Luxemburg; es=Luxemburgo; fr=Luxembourg; ja=???????; it=Lussemburgo}
	population     : 562958
	latlng         : {49.75, 6.16666666}
	demonym        : Luxembourger
	area           : 2586.0
	gini           : 30.8
	timezones      : {UTC+01:00}
	borders        : {BEL, FRA, DEU}
	nativeName     : Luxembourg
	numericCode    : 442
	currencies     : {EUR}
	languages      : {fr, de, lb}

	name           : Switzerland
	topLevelDomain : {.ch}
	alpha2Code     : CH
	alpha3Code     : CHE
	callingCodes   : {41}
	capital        : Bern
	altSpellings   : {CH, Swiss Confederation, Schweiz, Suisse...}
	relevance      : 1.5
	region         : Europe
	subregion      : Western Europe
	translations   : @{de=Schweiz; es=Suiza; fr=Suisse; ja=???; it=Svizzera}
	population     : 8256000
	latlng         : {47.0, 8.0}
	demonym        : Swiss
	area           : 41284.0
	gini           : 33.7
	timezones      : {UTC+01:00}
	borders        : {AUT, FRA, ITA, LIE...}
	nativeName     : Schweiz
	numericCode    : 756
	currencies     : {CHE, CHF, CHW}
	languages      : {de, fr, it}
```