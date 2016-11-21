function Get-Country
{
<#
.SYNOPSIS
	function to retrieve information about one or more countries

.DESCRIPTION
	function to retrieve information about one or more countries

.PARAMETER CountryCode
	Specifies one or multiple country codes

.PARAMETER Name
	Specifies the name of the country

.PARAMETER CallingCode
	Specifies a country calling code

.PARAMETER Capital
	Specifies a country capital.
	
	Examples:
		Paris
		Ottawa
		Washington

.PARAMETER Currency
	Specifies the currency of the country/countries you are looking for

.PARAMETER Language
	Specifies the language of the country

.PARAMETER Region
	Specifies the Region of the world

	Values:
		Africa
		Americas
		Asia
		Europe
		Oceania
		Polar

.PARAMETER SubRegion
	Specifies the Subregion of the world
	
	Values:
		Australia and New Zealand
		Caribbean
		Central America
		Central Asia
		Eastern Africa
		Eastern Asia
		Eastern Europe
		Melanesia
		Micronesia
		Middle Africa
		Northern Africa
		Northern America
		Northern Europe
		Polynesia
		South America
		South-Eastern Asia
		Southern Africa
		Southern Asia
		Southern Europe
		Western Africa
		Western Asia
		Western Europe


.EXAMPLE
	Get-Country
	
	Retrieve all the countries
.EXAMPLE
	Get-Country -Name France
	
	Retrieve information about France
	
	name           : France
	topLevelDomain : {.fr}
	alpha2Code     : FR
	alpha3Code     : FRA
	callingCodes   : {33}
	capital        : Paris
	altSpellings   : {FR, French Republic, République française}
	relevance      : 2.5
	region         : Europe
	subregion      : Western Europe
	translations   : @{de=Frankreich; es=Francia; fr=France; ja=フランス; it=Francia}
	population     : 66186000
	latlng         : {46.0, 2.0}
	demonym        : French
	area           : 640679.0
	gini           : 32.7
	timezones      : {UTC-10:00, UTC-09:30, UTC-09:00, UTC-08:00...}
	borders        : {AND, BEL, DEU, ITA...}
	nativeName     : France
	numericCode    : 250
	currencies     : {EUR}
	languages      : {fr}
	
.EXAMPLE
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
	
.EXAMPLE
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
	
.EXAMPLE
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
	
.EXAMPLE
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

.EXAMPLE
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

.EXAMPLE
	Get-Country -Region Europe
	
	
.EXAMPLE
	Get-Country -SubRegion 'Southern Europe'

.NOTES
	Francois-Xavier Cat
	lazywinadmin.com
	@lazywinadm
	github.com/lazywinadmin
#>	
[CmdletBinding(DefaultParameterSetName='Name')]
	PARAM (
		[Parameter(ParameterSetName = 'CountryCode')]
		[System.String[]]$CountryCode,
		
		[Parameter(ParameterSetName='Name')]
		[System.String]$Name,
		
		[Parameter(ParameterSetName = 'CallingCode')]
		[System.Int32]$CallingCode,
		
		[Parameter(ParameterSetName = 'Capital')]
		[System.String]$Capital,
		
		[Parameter(ParameterSetName = 'Currency')]
		[System.String]$Currency,
		
		[Parameter(ParameterSetName = 'Language')]
		[System.String]$Language,
		
		[Parameter(ParameterSetName = 'Region')]
		[System.String]$Region,
		
		[Parameter(ParameterSetName = 'SubRegion')]
		[System.String]$SubRegion
    )
	BEGIN
	{
	}
	PROCESS
	{
		TRY
		{
			if ($Name)
			{
				Write-Verbose "Name = $Name"
				$URI = "https://restcountries.eu/rest/v1/name/$Name"
			}
			elseif ($CountryCode)
			{
				Write-Verbose "CountryCode = $CountryCode"
				if ($CountryCode.count -gt 1)
				{
					$URI = "https://restcountries.eu/rest/v1/alpha/?codes=$($CountryCode -join "%3B")"
				}
				else
				{
					$URI = "https://restcountries.eu/rest/v1/alpha/$CountryCode"
				}
			}
			elseif ($CallingCode)
			{
				Write-Verbose "CallingCode = $CallingCode"
				$URI = "https://restcountries.eu/rest/v1/callingcode/$CallingCode"
			}
			elseif ($Capital)
			{
				Write-Verbose "Capital = $Capital"
				$URI = "https://restcountries.eu/rest/v1/capital/$Capital"
			}
			elseif ($Currency)
			{
				Write-Verbose "Currency = $Currency"
				$URI = "https://restcountries.eu/rest/v1/currency/$Currency"
			}
			elseif ($Language)
			{
				Write-Verbose "Language = $Language"
				$Uri = "https://restcountries.eu/rest/v1/lang/$Language"
			}
			elseif ($Region)
			{
				Write-Verbose "Region = $Region"
				$Uri = "https://restcountries.eu/rest/v1/region/$Region"
			}
			elseif ($SubRegion)
			{
				Write-Verbose "SubRegion = $SubRegion"
				$Uri = "https://restcountries.eu/rest/v1/subregion/$SubRegion"
			}
			else
			{
				Write-Verbose "No parameter specified. Retrieving all countries"
				$URI = "https://restcountries.eu/rest/v1/all"
			}
			
			
			Write-Verbose "URI = $Uri"
			(Invoke-RestMethod -Uri $URI) -as [pscustomobject]

		}
		CATCH
		{
			Write-Error -Message $Error[0]	
		}
	}
	END
	{
		Write-Verbose "End."
	}
}