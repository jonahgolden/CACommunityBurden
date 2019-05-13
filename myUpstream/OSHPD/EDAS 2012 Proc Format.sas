proc format;
value $lic  'C' = 'Clinic'
			'H' = 'Hospital';
value $cnty '01' = 'Alameda'
			'02' = 'Alpine'
			'03' = 'Amador'
			'04' = 'Butte'
			'05' = 'Calaveras'
			'06' = 'Colusa'
			'07' = 'Contra Costa'
			'08' = 'Del Norte'
			'09' = 'El Dorado'
			'10' = 'Fresno'
			'11' = 'Glenn'
			'12' = 'Humboldt'
			'13' = 'Imperial'
			'14' = 'Inyo'
			'15' = 'Kern'
			'16' = 'Kings'
			'17' = 'Lake'
			'18' = 'Lassen'
			'19' = 'Los Angeles'
			'20' = 'Madera'
			'21' = 'Marin'
			'22' = 'Mariposa'
			'23' = 'Mendocino'
			'24' = 'Merced'
			'25' = 'Modoc'
			'26' = 'Mono'
			'27' = 'Monterey'
			'28' = 'Napa'
			'29' = 'Nevada'
			'30' = 'Orange'
			'31' = 'Placer'
			'32' = 'Plumas'
			'33' = 'Riverside'
			'34' = 'Sacramento'
			'35' = 'San Benito'
			'36' = 'San Bernardino'
			'37' = 'San Diego'
			'38' = 'San Francisco'
			'39' = 'San Joaquin'
			'40' = 'San Luis Obispo'
			'41' = 'San Mateo'
			'42' = 'Santa Barbara'
			'43' = 'Santa Clara'
			'44' = 'Santa Cruz'
			'45' = 'Shasta'
			'46' = 'Sierra'
			'47' = 'Siskiyou'
			'48' = 'Solano'
			'49' = 'Sonoma'
			'50' = 'Stanislaus'
			'51' = 'Sutter'
			'52' = 'Tehama'
			'53' = 'Trinity'
			'54' = 'Tulare'
			'55' = 'Tuolumne'
			'56' = 'Ventura'
			'57' = 'Yolo'
			'58' = 'Yuba';
Value $sex  'M'  = 'Male'
			'F'  = 'Female'
			'U'  = 'Unknown'
			'I'  = 'Invalid';
Value $eth  'E1' = 'Hispanic'
			'E2' = 'Non-Hispanic'
			'99' = 'Unknown'
			'00' = 'Invalid/Blank';
Value $race 'R1' = 'American Indian/Alaskan Native'
			'R2' = 'Asian'
			'R3' = 'Black/African American'
			'R4' = 'Native Hawaiian/Other PI'
			'R5' = 'White'
			'R9' = 'Other race'
			'99' = 'Unknown'
			'00' = 'Invalid/Blank';
Value $raceg '1' = 'White'
			 '2' = 'Black'
			 '3' = 'Hispanic'
			 '4' = 'Asian/Pacific Islander'
			 '5' = 'Native American/Eskimo/Aleut'
			 '6' = 'Other'
			 '0' = 'Unknown/Invalid/Blank';
Value $day  '1'  = 'Sunday'
			'2'  = 'Monday'
			'3'  = 'Tuesday'
			'4'  = 'Wednesday'	
			'5'  = 'Thursday'
			'6'  = 'Friday'
			'7'  = 'Saturday';
Value $mnth '01' = 'January'
			'02' = 'February'
			'03' = 'March'
			'04' = 'April'
			'05' = 'May'
			'06' = 'June'
			'07' = 'July'
			'08' = 'August'
			'09' = 'September'
			'10' = 'October'
			'11' = 'November'
			'12' = 'December';
Value $dispn '01'= 'Discharged to home/self care'
			 '02'= 'Discharged to short-term general hospital'
			 '03'= 'Discharged to SNF w/Medicare cert'
			 '04'= 'Discharged to facility w/custodial care'
			 '05'= "Discharged to cancer or children's Hospital"
			 '06'= 'Discharged to home with Home Health Service'
			 '07'= 'Left against medical advice'
			 '20'= 'Expired'
			 '21'= 'Discharged to court/law enforcement'
			 '43'= 'Discharged to federal health care facility'
			 '50'= 'Discharged home with hospice care'
			 '51'= 'Discharged to facility with hospice care'
			 '61'= 'Discharged to a Medicare approved swing bed'
			 '62'= 'Discharged to inpatient rehab facility'
			 '63'= 'Discharged to a Medicare certified LTCH'
			 '64'= 'Discharged to a Medicaid certified nursing facility'
			 '65'= 'Discharged to a psychiatric hospital'
			 '66'= 'Discharged to a Critical Access Hospital'
			 '70'= 'Discharged to another type of facility'
			 '00'= 'Other'
			 '99'= 'Invalid/Blank';
Value $pay   '09'= 'Self-Pay'
			 '11'= 'Other non-federal programs'
			 '12'= 'Preferred Provider Organization (PPO)'
			 '13'= 'Point of Service (POS)'
			 '14'= 'Exclusive Provider Organization (EPO)'
			 '16'= 'Health Maintenance Organization (HMO) Medicare Risk'
			 'AM'= 'Automobile Medical'
			 'BL'= 'Blue Cross/Blue Shield'
			 'CH'= 'CHAMPUS (TRICARE)'
			 'CI'= 'Commercial Insurance Company'
			 'DS'= 'Disability'
			 'HM'= 'Health Maintenance Organization'
			 'MA'= 'Medicare Part A'
			 'MB'= 'Medicare Part B'
			 'MC'= 'Medicaid (Medi-Cal)'
			 'OF'= 'Other Federal Program'
			 'TV'= 'Title V'
			 'VA'= 'Veterans Affairs Plan'
			 'WC'= "Workers' Compensation Health Claim"
			 '00'= 'Other'
			 '99'= 'Invalid/unknown';
Value pls  88 ='Afrikaans'
			77  ='Albanian'
			38  ='Amharic'
			2  ='Arabic'
			3  ='Armenian'
			91  ='Basque'
			65  ='Bengali'
			68  ='Bosnian'
			69  ='Bulgarian'
			63  ='Burmese'
			92  ='Catalan'
			94  ='Chamorro'
			4  ='Chinese'
			41  ='Mandarin'
			6  ='French Creole'
			82  ='Czech'
			76  ='Danish'	 
			61  ='Dutch'
			1  ='English'
			89  ='Esperanto'
			73  ='Estonian'
			71  ='Fijian'
			64  ='Filipino'
			80  ='Finnish'
			5  ='French'
			7  ='German'
			85  ='Gaelic'
			8  ='Greek'
			36  ='Gujarati'
			10  ='Hebrew'
			11  ='Hindi'
			32  ='Hmong'
			42  ='Croatian'
			12  ='Hungarian'
			53  ='Swahili'
			79  ='Swedish'
			54  ='Telugu'
			26  ='Tagalog'
			27  ='Thai'
			70  ='Tigrinya'
			55  ='Tonga'
			62  ='Turkish'
			56  ='Ukrainian'
			84  ='Igbo'
			44  ='Ilocano; Iloko'
			45  ='Indonesian'
			13  ='Italian'
			46  ='Mien; lu Mien'
			14  ='Japanese'
			15  ='Korean'
			47  ='Lao'
			90  ='Latvian'
			81  ='Lithuanian'
			93  ='Macedonian'
			78  ='Malayalam'
			87  ='Marathi'
			48  ='Mon-Khmer'
			66  ='Mongolian'
			19  ='Navajo'
			72  ='Nepali'
			75  ='Norwegian'
			1000  ='Other'
			49  ='Panjabi; Punjabi'
			20  ='Persian'
			50  ='Farsi'
			21  ='Polish'
			22  ='Portuguese'
			67  ='Pashto'
			60  ='Romanian'
			23  ='Russian'
			96  ='Sign Language'
			83  ='Sinhalese'
			86  ='Slovak'
			51  ='Samoan'
			74  ='Somali'
			25  ='Spanish'
			52  ='Serbian'
			28  ='Urdu'
			29  ='Vietnamese'
			30  ='Yiddish'
			57  ='Yoruba'
			58 ='Cantonese; Yue Chinese'
			999 ='Unknown'
			997 ='Invalid'
			998 ='Blank'; /* verified 07-25-13 */
Value $fac  '010735'='ALAMEDA HOSPITAL'
			'010739'='ALTA BATES SUMMIT MED CTR-ALTA BATES CAMPUS'
			'010776'='CHILDRENS HOSPITAL AND RESEARCH CTR AT OAKLAND'
			'010805'='EDEN MEDICAL CENTER'
			'010846'='ALAMEDA CO MED CTR - HIGHLAND CAMPUS'
			'010856'='KAISER FND HOSP - OAKLAND CAMPUS'
			'010858'='KAISER FND HOSP - HAYWARD/FREMONT'
			'010937'='ALTA BATES SUMMIT MED CTR-SUMMIT CAMPUS-HAWTHORNE'
			'010967'='ST. ROSE HOSPITAL'
			'010987'='WASHINGTON HOSPITAL - FREMONT'
			'013619'='SAN LEANDRO HOSPITAL'
			'014050'='VALLEYCARE MEDICAL CENTER'
			'034002'='SUTTER AMADOR HOSPITAL'
			'040802'='BIGGS GRIDLEY MEMORIAL HOSPITAL'
			'040875'='FEATHER RIVER HOSPITAL'
			'040937'='OROVILLE HOSPITAL'
			'040962'='ENLOE MEDICAL CENTER- ESPLANADE CAMPUS'
			'050932'="MARK TWAIN ST. JOSEPH'S HOSPITAL"
			'060870'='COLUSA REGIONAL MEDICAL CENTER'
			'070904'='DOCTORS MEDICAL CENTER - SAN PABLO'
			'070924'='CONTRA COSTA REGIONAL MEDICAL CENTER'
			'070934'='SUTTER DELTA MEDICAL CENTER'
			'070988'='JOHN MUIR MEDICAL CENTER-WALNUT CREEK CAMPUS'
			'070990'='KAISER FND HOSP - WALNUT CREEK'
			'071018'='JOHN MUIR MEDICAL CENTER-CONCORD CAMPUS'
			'074017'='SAN RAMON REGIONAL MEDICAL CENTER'
			'074097'='KAISER FOUND HSP-ANTIOCH'
			'084001'='SUTTER COAST HOSPITAL'
			'090793'='BARTON MEMORIAL HOSPITAL'
			'090933'='MARSHALL  MEDICAL CENTER (1-RH)'
			'100005'='CLOVIS COMMUNITY MEDICAL CENTER'
			'100717'='COMMUNITY REGIONAL MEDICAL CENTER-FRESNO'
			'100797'='ADVENTIST MEDICAL CENTER - REEDLEY'
			'100899'='ST. AGNES MEDICAL CENTER'
			'104047'='FRESNO SURGICAL HOSPITAL'
			'104062'='KAISER FND HOSP - FRESNO'
			'105029'='FRESNO HEART AND SURGICAL HOSPITAL'
			'110889'='GLENN MEDICAL CENTER'
			'121002'='MAD RIVER COMMUNITY HOSPITAL'
			'121051'='REDWOOD MEMORIAL HOSPITAL'
			'121080'='ST. JOSEPH HOSPITAL - EUREKA'
			'130699'='EL CENTRO REGIONAL MEDICAL CENTER'
			'130760'='PIONEERS MEMORIAL HEALTHCARE DISTRICT'
			'141273'='NORTHERN INYO HOSPITAL'
			'150706'='DELANO REGIONAL MEDICAL CENTER'
			'150722'='BAKERSFIELD MEMORIAL HOSPITAL- 34TH STREET'
			'150736'='KERN MEDICAL CENTER'
			'150737'='KERN VALLEY HEALTHCARE DISTRICT'
			'150761'='MERCY HOSPITAL - BAKERSFIELD'
			'150775'='GOOD SAMARITAN HOSPITAL-BAKERSFIELD'
			'150782'='RIDGECREST REGIONAL HOSPITAL'
			'150788'='SAN JOAQUIN COMMUNITY HOSPITAL'
			'154101'='BAKERSFIELD HEART HOSPITAL'
			'160702'='CORCORAN DISTRICT HOSPITAL'
			'164029'='ADVENTIST MEDICAL CENTER'
			'171049'='ST. HELENA HOSPITAL - CLEARLAKE'
			'171395'='SUTTER LAKESIDE HOSPITAL'
			'184008'='BANNER LASSEN MEDICAL CENTER'
			'190017'='ALHAMBRA HOSPITAL'
			'190034'='ANTELOPE VALLEY HOSPITAL'
			'190053'='ST. MARY MEDICAL CENTER'
			'190066'='BELLFLOWER MEDICAL CENTER'
			'190081'='BEVERLY HOSPITAL'
			'190110'='BROTMAN MEDICAL CENTER'
			'190125'='CALIFORNIA HOSPITAL MEDICAL CENTER - LOS ANGELES'
			'190148'='CENTINELA HOSPITAL MEDICAL CENTER'
			'190159'='TRI-CITY REGIONAL MEDICAL CENTER'
			'190170'="CHILDREN'S HOSPITAL OF LOS ANGELES"
			'190176'='CITY OF HOPE HELFORD CLINICAL RESEARCH HOSPITAL'
			'190196'='KINDRED HOSPITAL SOUTH BAY'
			'190197'='COMMUNITY HOSPITAL OF HUNTINGTON PARK'
			'190198'='LOS ANGELES COMMUNITY HOSPITAL'
			'190200'='SAN GABRIEL VALLEY MEDICAL CENTER'
			'190240'='LAKEWOOD REGIONAL MEDICAL CENTER'
			'190243'='DOWNEY REGIONAL MEDICAL CENTER'
			'190256'='EAST LOS ANGELES DOCTORS HOSPITAL'
			'190280'='ENCINO HOSPITAL MEDICAL CENTER'
			'190298'='FOOTHILL PRESBYTERIAN HOSPITAL-JOHNSTON MEMORIAL'
			'190307'='PACIFIC ALLIANCE MEDICAL CENTER, INC.'
			'190315'='GARFIELD MEDICAL CENTER'
			'190323'='GLENDALE ADVENTIST MEDICAL CENTER - WILSON TERRACE'
			'190328'='EAST VALLEY HOSPITAL MEDICAL CENTER'
			'190352'='GREATER EL MONTE COMMUNITY HOSPITAL'
			'190380'='HOLLYWOOD COMMUNITY HOSPITAL OF HOLLYWOOD'
			'190382'='HOLLYWOOD PRESBYTERIAN MEDICAL CENTER'
			'190385'='PROVIDENCE HOLY CROSS MEDICAL CENTER'
			'190392'='GOOD SAMARITAN HOSPITAL-LOS ANGELES'
			'190400'='HUNTINGTON MEMORIAL HOSPITAL'
			'190413'='CITRUS VALLEY MEDICAL CENTER - IC CAMPUS'
			'190422'='TORRANCE MEMORIAL MEDICAL CENTER'
			'190429'='KAISER FND HOSP - LOS ANGELES'
			'190431'='KAISER FND HOSP - SOUTH BAY'
			'190432'='KAISER FND HOSP - PANORAMA CITY'
			'190434'='KAISER FND HOSP - WEST LA'
			'190468'='PROMISE HOSPITAL OF EAST LOS ANGELES-EAST L.A. CAMPUS'
			'190470'='PROVIDENCE LITTLE COMPANY OF MARY MC - TORRANCE'
			'190475'='COMMUNITY HOSPITAL OF LONG BEACH'
			'190500'='MARINA DEL REY HOSPITAL'
			'190517'='PROVIDENCE TARZANA MEDICAL CENTER'
			'190521'='MEMORIAL HOSPITAL OF GARDENA'
			'190522'='GLENDALE MEMORIAL HOSPITAL AND HEALTH CENTER'
			'190524'='MISSION COMMUNITY HOSPITAL - PANORAMA CAMPUS'
			'190525'='LONG BEACH MEMORIAL MEDICAL CENTER'
			'190529'='METHODIST HOSPITAL OF SOUTHERN CALIFORNIA'
			'190534'='OLYMPIA MEDICAL CENTER'
			'190541'='MONROVIA MEMORIAL HOSPITAL'
			'190547'='MONTEREY PARK HOSPITAL'
			'190552'='MOTION PICTURE AND TELEVISION HOSPITAL'
			'190555'='CEDARS SINAI MEDICAL CENTER'
			'190568'='NORTHRIDGE HOSPITAL MEDICAL CENTER'
			'190570'='NORWALK COMMUNITY HOSPITAL'
			'190587'='PACIFIC HOSPITAL OF LONG BEACH'
			'190630'='POMONA VALLEY HOSPITAL MEDICAL CENTER'
			'190631'='PRESBYTERIAN INTERCOMMUNITY HOSPITAL'
			'190636'='CITRUS VALLEY MEDICAL CENTER - QV CAMPUS'
			'190661'='SILVER LAKE MEDICAL CENTER-DOWNTOWN CAMPUS'
			'190673'='SAN DIMAS COMMUNITY HOSPITAL'
			'190680'='PROVIDENCE LITTLE COMPANY OF MARY MC - SAN PEDRO'
			'190681'='MIRACLE MILE MEDICAL CENTER'
			'190687'='SANTA MONICA - UCLA MEDICAL CENTER & ORTHOPAEDIC HOSPITAL'
			'190696'='PACIFICA HOSPITAL OF THE VALLEY'
			'190708'='SHERMAN OAKS HOSPITAL'
			'190712'='SHRINERS HOSPITAL FOR  CHILDREN - L.A.'
			'190754'='ST. FRANCIS MEDICAL CENTER'
			'190756'="ST. JOHN'S HEALTH CENTER"
			'190758'='PROVIDENCE SAINT JOSEPH MEDICAL CENTER'
			'190762'='ST. VINCENT MEDICAL CENTER'
			'190766'='COAST PLAZA DOCTORS HOSPITAL'
			'190784'='TEMPLE COMMUNITY HOSPITAL'
			'190796'='RONALD REAGAN UCLA MEDICAL CENTER'
			'190812'='VALLEY PRESBYTERIAN HOSPITAL'
			'190818'='VERDUGO HILLS HOSPITAL'
			'190854'='LOS ANGELES METROPOLITAN MEDICAL CENTER'
			'190857'='DOCTORS HOSPITAL OF WEST COVINA, INC'
			'190859'='WEST HILLS HOSPITAL AND MEDICAL CENTER'
			'190878'='WHITE MEMORIAL MEDICAL CENTER'
			'190883'='WHITTIER HOSPITAL MEDICAL CENTER'
			'190949'='HENRY MAYO NEWHALL MEMORIAL HOSPITAL'
			'191216'='USC KENNETH NORRIS, JR. CANCER HOSPITAL'
			'191227'='LAC/HARBOR-UCLA MEDICAL CENTER'
			'191228'='LAC+USC MEDICAL CENTER'
			'191231'='LOS ANGELES COUNTY OLIVE VIEW-UCLA MEDICAL CENTER'
			'191306'='LAC/RANCHO LOS AMIGOS NATIONAL REHAB CENTER'
			'191450'='KAISER FND HOSP - WOODLAND HILLS'
			'194219'='KECK HOSPITAL OF USC'
			'196035'='KAISER FND HOSP - BALDWIN PARK'
			'196168'='EARL AND LORRAINE MILLER CHILDRENS HOSPITAL'
			'196403'='KAISER FOUNDATION HOSPITAL - DOWNEY'
			'196405'='PALMDALE REGIONAL MEDICAL CENTER'
			'201281'='MADERA COMMUNITY HOSPITAL'
			'204019'="CHILDREN'S HOSPITAL CENTRAL CALIFORNIA"
			'210992'='KAISER FND HOSP - SAN RAFAEL'
			'211006'='MARIN GENERAL HOSPITAL'
			'214034'='NOVATO COMMUNITY HOSPITAL'
			'220733'='JOHN C FREMONT HEALTHCARE DISTRICT'
			'230949'='FRANK R HOWARD MEMORIAL HOSPITAL'
			'231013'='MENDOCINO COAST DISTRICT HOSPITAL'
			'231396'='UKIAH VALLEY MEDICAL CENTER/HOSPITAL DRIVE'
			'240924'='MEMORIAL HOSPITAL LOS BANOS'
			'240942'='MERCY MEDICAL CENTER - MERCED'
			'250956'='MODOC MEDICAL CENTER'
			'260011'='MAMMOTH HOSPITAL'
			'270744'='COMMUNITY HOSPITAL MONTEREY PENINSULA'
			'270777'='GEORGE L MEE MEMORIAL HOSPITAL'
			'270875'='SALINAS VALLEY MEMORIAL HOSPITAL'
			'274043'='NATIVIDAD MEDICAL CENTER'
			'281047'='QUEEN OF THE VALLEY HOSPITAL - NAPA'
			'281078'='ST. HELENA HOSPITAL'
			'291023'='SIERRA NEVADA MEMORIAL HOSPITAL'
			'291053'='TAHOE FOREST HOSPITAL'
			'300032'="CHILDREN'S HOSPITAL OF ORANGE COUNTY"
			'300225'='ORANGE COAST MEMORIAL MEDICAL CENTER'
			'301097'='ANAHEIM GENERAL HOSPITAL'
			'301098'='AHMC ANAHEIM REGIONAL MEDICAL CENTER'
			'301132'='KAISER FND HOSP - ANAHEIM'
			'301140'='CHAPMAN MEDICAL CENTER'
			'301155'='COLLEGE HOSPITAL COSTA MESA'
			'301175'='FOUNTAIN VALLEY RGNL HOSP AND MED CTR - EUCLID'
			'301188'='WESTERN MEDICAL CENTER HOSPITAL - ANAHEIM'
			'301205'='HOAG MEMORIAL HOSPITAL PRESBYTERIAN'
			'301209'='HUNTINGTON BEACH HOSPITAL'
			'301234'='LA PALMA INTERCOMMUNITY HOSPITAL'
			'301248'='LOS ALAMITOS MEDICAL CENTER'
			'301258'='COASTAL COMMUNITIES HOSPITAL'
			'301262'='MISSION HOSPITAL REGIONAL MEDICAL CENTER'
			'301279'='UNIVERSITY OF CALIFORNIA IRVINE MEDICAL CENTER'
			'301283'='GARDEN GROVE HOSPITAL AND MEDICAL CENTER'
			'301297'='PLACENTIA LINDA HOSPITAL'
			'301317'='SADDLEBACK MEMORIAL MEDICAL CENTER'
			'301337'='MISSION HOSPITAL LAGUNA BEACH'
			'301340'='ST. JOSEPH HOSPITAL - ORANGE'
			'301342'='ST. JUDE MEDICAL CENTER'
			'301379'='WEST ANAHEIM MEDICAL CENTER'
			'301566'='WESTERN MEDICAL CENTER - SANTA ANA'
			'304113'="CHILDREN'S HOSPITAL AT MISSION"
			'304460'='HOAG ORTHOPEDIC INSTITUTE'
			'310791'='SUTTER AUBURN FAITH HOSPITAL'
			'311000'='SUTTER ROSEVILLE MEDICAL CENTER'
			'314024'='KAISER FND HOSP - ROSEVILLE'
			'320859'='EASTERN PLUMAS HOSPITAL-PORTOLA CAMPUS'
			'320986'='PLUMAS DISTRICT HOSPITAL'
			'321016'='SENECA HEALTHCARE DISTRICT'
			'331152'='CORONA REGIONAL MEDICAL CENTER-MAIN'
			'331164'='DESERT REGIONAL MEDICAL CENTER'
			'331168'='EISENHOWER MEDICAL CENTER'
			'331194'='HEMET VALLEY MEDICAL CENTER'
			'331216'='JOHN F KENNEDY MEMORIAL HOSPITAL'
			'331288'='PALO VERDE HOSPITAL'
			'331293'='PARKVIEW COMMUNITY HOSPITAL MEDICAL CENTER'
			'331312'='RIVERSIDE COMMUNITY HOSPITAL'
			'331326'='SAN GORGONIO MEMORIAL HOSPITAL'
			'334018'='MENIFEE VALLEY MEDICAL CENTER'
			'334025'='KAISER FND HOSP - RIVERSIDE'
			'334048'='KAISER FND HOSPITAL - MORENO VALLEY'
			'334068'='SOUTHWEST HEALTHCARE SYSTEM-MURRIETA'
			'334487'='RIVERSIDE COUNTY REGIONAL MEDICAL CENTER'
			'334589'='LOMA LINDA UNIVERSITY MEDICAL CENTER-MURRIETA'
			'340913'='KAISER FND HOSP - SACRAMENTO'
			'340947'='MERCY GENERAL HOSPITAL'
			'340950'='MERCY SAN JUAN HOSPITAL'
			'340951'='METHODIST HOSPITAL OF SACRAMENTO'
			'341006'='UNIVERSITY OF CALIFORNIA DAVIS MEDICAL CENTER'
			'341051'='SUTTER GENERAL HOSPITAL'
			'341052'='SUTTER MEMORIAL HOSPITAL'
			'342344'='KAISER FND HOSP - SOUTH SACRAMENTO'
			'344029'='MERCY HOSPITAL - FOLSOM'
			'344114'='SHRINERS HOSPITALS FOR CHILDREN NORTHERN CALIF.'
			'350784'='HAZEL HAWKINS MEMORIAL HOSPITAL'
			'361105'='BARSTOW COMMUNITY HOSPITAL'
			'361110'='BEAR VALLEY COMMUNITY HOSPITAL'
			'361144'='CHINO VALLEY MEDICAL CENTER'
			'361166'='MONTCLAIR HOSPITAL MEDICAL CENTER'
			'361223'='KAISER FND HOSP - FONTANA'
			'361246'='LOMA LINDA UNIVERSITY MEDICAL CENTER'
			'361266'='MOUNTAINS COMMUNITY HOSPITAL'
			'361308'='REDLANDS COMMUNITY HOSPITAL'
			'361318'='SAN ANTONIO COMMUNITY HOSPITAL'
			'361323'='COMMUNITY HOSPITAL OF SAN BERNARDINO'
			'361339'='ST. BERNARDINE MEDICAL CENTER'
			'361343'='ST. MARY REGIONAL MEDICAL CENTER'
			'361370'='VICTOR VALLEY COMMUNITY HOSPITAL'
			'361458'='COLORADO RIVER MEDICAL CENTER'
			'362041'='HI-DESERT MEDICAL CENTER'
			'364144'='DESERT VALLEY HOSPITAL'
			'364188'='KINDRED HOSPITAL RANCHO'
			'364231'='ARROWHEAD REGIONAL MEDICAL CENTER'
			'370652'='ALVARADO HOSPITAL MEDICAL CENTER'
			'370673'="RADY CHILDREN'S HOSPITAL - SAN DIEGO"
			'370689'='SHARP CORONADO HOSPITAL AND HEALTHCARE CENTER'
			'370694'='SHARP MEMORIAL HOSPITAL'
			'370695'='SHARP MARY BIRCH HOSPITAL FOR WOMEN AND NEWBORNS'
			'370705'='FALLBROOK HOSPITAL DISTRICT'
			'370714'='GROSSMONT HOSPITAL'
			'370730'='KAISER FND HOSP - SAN DIEGO'
			'370744'='SCRIPPS MERCY HOSPITAL'
			'370755'='PALOMAR HEALTH DOWNTOWN CAMPUS'
			'370759'='PARADISE VALLEY HOSPITAL'
			'370771'='SCRIPPS MEMORIAL HOSPITAL - LA JOLLA'
			'370780'='TRI-CITY MEDICAL CENTER'
			'370782'='UNIVERSITY OF CALIF-SAN DIEGO MEDICAL CENTER'
			'370787'='PROMISE HOSPITAL OF SAN DIEGO'
			'370875'='SHARP CHULA VISTA MEDICAL CENTER'
			'370977'='POMERADO HOSPITAL'
			'371256'='SCRIPPS GREEN HOSPITAL'
			'371394'='SCRIPPS MEMORIAL HOSPITAL - ENCINITAS'
			'380857'='KAISER FND HOSP - SAN FRANCISCO'
			'380929'='CALIFORNIA PACIFIC MED CTR-PACIFIC CAMPUS'
			'380933'='CALIFORNIA PACIFIC MED CTR-DAVIES CAMPUS'
			'380939'='SAN FRANCISCO GENERAL HOSPITAL'
			'380960'='ST. FRANCIS MEMORIAL HOSPITAL'
			'380964'="CALIFORNIA PACIFIC MEDICAL CENTER - ST. LUKE'S CAMPUS"
			'380965'="ST. MARY'S MEDICAL CENTER, SAN FRANCISCO"
			'381154'='UCSF MEDICAL CENTER'
			'382715'='CHINESE HOSPITAL'
			'390846'='DAMERON HOSPITAL'
			'390923'='LODI MEMORIAL HOSPITAL'
			'391010'='SAN JOAQUIN GENERAL HOSPITAL'
			'391042'="ST. JOSEPH'S MEDICAL CENTER OF STOCKTON"
			'391056'='SUTTER TRACY COMMUNITY HOSPITAL'
			'392287'='DOCTORS HOSPITAL OF MANTECA'
			'394009'='KAISER FND HOSP-MANTECA'
			'400466'='ARROYO GRANDE COMMUNITY HOSPITAL'
			'400480'='FRENCH HOSPITAL MEDICAL CENTER'
			'400524'='SIERRA VISTA REGIONAL MEDICAL CENTER'
			'400548'='TWIN CITIES COMMUNITY HOSPITAL'
			'410782'='SAN MATEO MEDICAL CENTER'
			'410804'='KAISER FND HOSP - REDWOOD CITY'
			'410806'='KAISER FND HOSP - SOUTH SAN FRANCISCO'
			'410817'='SETON MEDICAL CENTER'
			'410852'='MILLS-PENINSULA MEDICAL CENTER'
			'410891'='SEQUOIA HOSPITAL'
			'414018'='MENLO PARK SURGICAL HOSPITAL'
			'420483'='GOLETA VALLEY COTTAGE HOSPITAL'
			'420491'='LOMPOC VALLEY MEDICAL CENTER'
			'420493'='MARIAN REGIONAL MEDICAL CENTER'
			'420514'='SANTA BARBARA COTTAGE HOSPITAL'
			'420522'='SANTA YNEZ VALLEY COTTAGE HOSPITAL'
			'430705'='REGIONAL MEDICAL OF SAN JOSE'
			'430763'='EL CAMINO HOSPITAL'
			'430779'='GOOD SAMARITAN HOSPITAL-SAN JOSE'
			'430837'="O'CONNOR HOSPITAL - SAN JOSE"
			'430883'='SANTA CLARA VALLEY MEDICAL CENTER'
			'430905'='STANFORD HOSPITAL'
			'431506'='KAISER FND HOSP - SAN JOSE'
			'434040'="LUCILE SALTER PACKARD CHILDREN'S HOSP. AT STANFORD"
			'434138'='ST. LOUISE REGIONAL HOSPITAL'
			'434153'='KAISER FND HOSP - SANTA CLARA'
			'440755'='DOMINICAN HOSPITAL-SANTA CRUZ/SOQUEL'
			'444012'='SUTTER MATERNITY AND SURGERY CENTER OF SANTA CRUZ'
			'444013'='WATSONVILLE COMMUNITY HOSPITAL'
			'450936'='MAYERS MEMORIAL HOSPITAL'
			'450940'='SHASTA REGIONAL MEDICAL CENTER'
			'450949'='MERCY MEDICAL CENTER - REDDING'
			'454012'='VIBRA HOSPITAL OF NORTHERN CALIFORNIA'
			'454013'="PATIENTS' HOSPITAL OF REDDING"
			'470871'='MERCY MEDICAL CENTER MT. SHASTA'
			'474007'='FAIRCHILD MEDICAL CENTER'
			'480989'='KAISER FND HOSP - REHABILITATION CENTER VALLEJO'
			'481094'='SUTTER SOLANO MEDICAL CENTER'
			'481357'='NORTH BAY MEDICAL CENTER'
			'484044'='KAISER FOUNDATION HOSPITAL - VACAVILLE'
			'490919'='SUTTER MEDICAL CENTER OF SANTA ROSA'
			'490964'='HEALDSBURG DISTRICT HOSPITAL'
			'491001'='PETALUMA VALLEY HOSPITAL'
			'491064'='SANTA ROSA MEMORIAL HOSPITAL-MONTGOMERY'
			'491076'='SONOMA VALLEY HOSPITAL'
			'491338'='PALM DRIVE HOSPITAL'
			'494019'='KAISER FND HOSP - SANTA ROSA'
			'500852'='DOCTORS MEDICAL CENTER'
			'500867'='EMANUEL MEDICAL CENTER, INC'
			'500939'='MEMORIAL HOSPITAL MEDICAL CENTER - MODESTO'
			'500967'='OAK VALLEY DISTRICT HOSPITAL (2-RH)'
			'504038'='STANISLAUS SURGICAL HOSPITAL'
			'514030'='SUTTER SURGICAL HOSPITAL-NORTH VALLEY'
			'521041'='ST. ELIZABETH COMMUNITY HOSPITAL'
			'531059'='TRINITY HOSPITAL'
			'540734'='KAWEAH DELTA MEDICAL CENTER'
			'540798'='SIERRA VIEW DISTRICT HOSPITAL'
			'540816'='TULARE REGIONAL MEDICAL CENTER'
			'554011'='SONORA REGIONAL MEDICAL CENTER - GREENLEY'
			'560473'='COMMUNITY MEMORIAL HOSPITAL-SAN BUENAVENTURA'
			'560481'='VENTURA COUNTY MEDICAL CENTER'
			'560492'='LOS ROBLES HOSPITAL & MEDICAL CENTER'
			'560501'='OJAI VALLEY COMMUNITY HOSPITAL'
			'560508'="ST. JOHN'S PLEASANT VALLEY HOSPITAL"
			'560525'='SIMI VALLEY HOSPITAL AND HEALTH CARE SVCS-SYCAMORE'
			'560529'="ST. JOHN'S REGIONAL MEDICAL CENTER"
			'564121'='THOUSAND OAKS SURGICAL HOSPITAL'
			'571086'='WOODLAND MEMORIAL HOSPITAL'
			'574010'='SUTTER DAVIS HOSPITAL'
			'580996'='RIDEOUT MEMORIAL HOSPITAL'
			'014219'='PROCEDURE SUITES, FREMONT CENTER'
			'105047'='FRESNO DENTAL SURGERY CENTER'
			'105079'="CHILDREN'S DENTAL SURGERY CENTER OF FRESNO, INC."
			'164016'='SURGITEK OUTPATIENT CENTER, INC.'
			'196511'='HIGH DESERT HEALTH SYSTEM AMBULATORY SURGICAL CTR.'
			'197103'='MARTIN LUTHER KING JR. AMBULATORY SURGERY CENTER'
			'244030'='CASTLE SURGICENTER, PARTNERSHIP'
			'244032'='ADVANCED ENDOSCOPY CENTER'
			'301540'='FOUR SEASONS SURGERY CENTERS OF HUNTINGTON BEACH'
			'304093'='AESTHETICARE OUTPATIENT SURGERY CENTER'
			'304135'='EMPIRE SURGICAL CENTER, INC'
			'304494'='HOAG ENDOSCOPY CENTER'
			'314010'='SUTTER AUBURN SURGERY CENTER'
			'334106'='ARLINGTON PODIATRY SURGERY CENTER'
			'334440'='EL MIRADOR SURGICAL CENTER'
			'334578'='INDIO SURGERY CENTER INC.'
			'364023'='LOMA LINDA AMBULATORY SURGICAL CENTER'
			'364061'='STARPOINT HEALTH, INC.'
			'364122'='REDLANDS DENTAL SURGERY CENTER'
			'364125'='PACIFIC EYE INSTITUTE'
			'374088'='UNIVERSITY AMBULATORY SURGERY CENTER'
			'374139'='AMBULATORY CARE SURGERY CENTER'
			'374162'='SURGICAL EYE CARE CENTER'
			'394088'="CHILDREN'S DENTAL SURGERY CENTER"
			'394096'='STOCKTON SURGERY CENTER'
			'431040'='SURGECENTER OF PALO ALTO'
			'434191'='PALO ALTO MED. FDN. - CAMINO DIVISION SURGICENTER'
			'434201'='SAN JOSE DENTAL SURGERY CENTER'
			'434211'='BAY AREA DENTAL SURGERY CENTER'
			'494103'='PDI SURGERY CENTER'
			'504055'='SALIDA SURGERY CENTER'
			'544082'="VISALIA CHILDREN'S DENTAL SURGERY CENTER, INC."
			'544086'='HAPY BEAR SURGERY, LLC'
			'564219'='FAMILY PLANNING SURGERY CENTER'
			'100697'='COALINGA REGIONAL MEDICAL CENTER'
			'121031'='JEROLD PHELPS COMMUNITY HOSPITAL'
			'141338'='SOUTHERN INYO HOSPITAL'
			'150808'='TEHACHAPI HOSPITAL'
			'190045'='CATALINA ISLAND MEDICAL CENTER'
			'250955'='SURPRISE VALLEY COMMUNITY HOSPITAL'
			'410828'='SETON MEDICAL CENTER - COASTSIDE' ; /*Updated 7-25-13 */
run;
