.so /home/patryk/.config/groff/macros
\" Comment out lines below for English (Some useful chatacters don't work here for some reason)
.PL
.ds FAM DejaVuSans

\" Math macros
.EQ
delim $$
define exp % "" sup fwd 30 %
define cube % "" sup fwd 30 3 sqrt %
define root % { "" sup fwd 30 $1 sqrt $2 } %
.EN

.TL 'center'
DZIENNIK PRAKTYKI ZAWODOWEJ

.LP
Patryk Górski klasa 2p1

Zakład pracy: TAKESCARE SP. Z.O.O.


.ce 1
Opiekun praktyki: Dominik Mazur

.bp

.CSH "18 Stycznia"

.SH
Wykonane zadania
.PP
Praktyki rozpocząłem od zdobycia na polecenie opiekuna niezbędnych informacji z zakresu tworzenia i komunikowania się z API w środowisku .NET Core.
W tym celu zapoznałem się z dokumentacją technologii ASP.NET oraz standardu REST, a także stworzyłem przykładowe aplikacje opierające się na relacji "klient\-serwer".
.SH
Zdobyte umiejętności
.IP - 2
Znajomość standardu REST.
.IP - 2
Obsługa technologi .NET w środowisku serwerowym.
.IP - 2
Komunikacja z serwerem i obsługa danych w formacie JSON po stronie klienckiej.
.IP - 2
Testowanie rozwiązań serwerowych za pomocą wbudowanych narzędzi środowiska .NET, a także zewnętrznych narzędzi jak n.p.
.I Postman .

.bp

.CSH "19 Stycznia"

.SH
Wykonane zadania
.PP
Czas praktyk spędziłem zaznajamiając się ze stosowaną w firmie techniką kontroli zależności
.I "Dependency Injection" ,
a także dopracowując stworzone poprzedniego dnia przykładowe aplikacje, które następnie przesłałem mojemu opiekunowi.
.SH
Zdobyte umiejętności
.IP - 2
Znajomość techniki
.I "Dependency Injection" ,
oraz umiejętność zastosowania jej w środowisku .NET.
.IP - 2
Głębsze zrozumienie programów działających asynchronicznie.
.IP - 2
Znajomość działania zaawansowanego API w praktyce na przykładzie
.I "GitHub REST API"

.bp

.CSH "20 Stycznia"

.SH
Wykonane zadania
.PP
Tego dnia zapoznałem się z bibliotekami
.I RestSharp
oraz
.I RestEase
Wykorzystywanymi w projekcie nad którym będę pracował przepisując z ich zastosowaniem wykonaną w poprzednich dniach przykładową aplikację kliencką.
Aby lepiej zrozumieć działanie bibliotek pogłębiłem także moją wiedzę na temat używanych przez nie metod protokołu HTTP.
Wyniki mojej pracy przekazałem opiekunowi.

.SH
Zdobyte umiejętności
.IP - 2
Umiejętność wykorzystania bibliotek
.I RestSharp
i
.I RestEase
w celu stworzenia aplikacji klienckiej w środowisku .NET.
.IP - 2
Znajomość protokołu HTTP oraz zdolność wykorzystania go w komunikacji z serwerem.

.bp

.CSH "21 Stycznia"

.SH
Wykonane zadania
.PP
Aby efektywniej pracować z API zaznajomiłem się z technologią integracji zapytań w języku C# LINQ oraz interfejsem środowiska .NET
.I IHttpClientFactory .
Na polecenie mojego opiekuna przygotowałem odpowiednie przykłady implementacji klienta z użyciem tych technologii.

.SH
Zdobyte umiejętności
.IP - 2
Znajomość i umiejętność obsługi zapytań w języku C# za pośrednictwem LINQ.
.IP - 2
Zdolność wykorzystania interfejsu
.I IHttpClientFactory
w celu komunikacji z serwerem.
.IP - 2
Znajomość podziału sposobów rejestracji typów w języku C# ze względu na czas życia instancji.

.bp

.CSH "22 Stycznia"

.SH
Wykonane zadania
.PP
W ostatni dzień pierwszego tygodnia praktyk usprawniłem i przekazałem opiekunowi przygotowany przeze mnie przykładowy program wykorzystujący zapytania LINQ.
Zapoznałem się również z działaniem funkcji
.I fetch
w języku
.I JavaScript
i w ramach ćwiczeń stworzyłem z jej pomocą prostego, webowego klienta
.I "GitHub REST API"

.SH
Zdobyte umiejętności
.IP - 2
Znajomość różnic i zaawansowanych operacji na typach
.I "IEnumerable<T>"
oraz
.I "List<T>"
w języku C#.
.IP - 2
Umiejętność wykorzystania funkcji języka
.I JavaScript
.I fetch
w celu stworzenia webowego klienta API.

.bp

.CSH "25 Stycznia"

.SH
Wykonane zadania
.PP
Ostatnią technologią której wykorzystania się nauczyłem jest biblioteka
.I HandleBars
języka
.I JavaScript
wykorzystywana przez klienta aplikacji nad którą będę pracować.
Jako ćwiczenie stworzyłem klienta opartego na tej bibliotece a także przykładowe API z którym mógł się komunikować.

.SH
Zdobyte umiejętności
.IP - 2
Umiejętność wykorzystania bibliotek języka
.I JavaScript
.I HandleBars ). "(np. "
w środowisku produkcyjnym
.IP - 2
Doświadczenie w testowaniu aplikacji opartych na relacji "klient\-serwer".

.bp

.CSH "26 Stycznia"

.SH
Wykonane zadania
.PP
Na polecenie mojego opiekuna przepisałem API z poprzedniego dnia w oparciu o architekturę oprogramowania
.I Onion
oraz reguły SOLID.

.SH
Zdobyte umiejętności
.IP - 2
Znajomość standardów tworzenia aplikacji
.I "Onion Application Architecture"
oraz SOLID.
.IP - 2
Umiejętność wykorzystania bazy danych w aplikacji serwerowej w oparciu o klasę
.I DbContext
środowiska .NET.

.bp

.CSH "27 Stycznia"

.SH
Wykonane zadania
.PP
W celu wyćwiczenia najlepszych praktyk w zakresie zasady jednej odpowiedzialności podzieliłem część mojej aplikacji na klasy odpowiedzialne za komunikację z bazą danych oraz z zewnętrznym serwisem. Przeniosłem także część danych potrzebnych do działania programu do pliku konfiguracyjnego
.I appsettings.json .
.SH
Zdobyte umiejętności
.IP - 2
Głębsze zrozumienie praktycznego zastosowania techniki
.I "Dependency Injection" .
.IP - 2
Wykorzystanie interfejsu
.I IConfiguration
środowiska ASP.NET w celu usunięcia magicznych ciągów z kodu.

.bp

.CSH "28 Stycznia"
.SH
Wykonane zadania
.PP
W Czwartek na polecenie opiekuna wyodrębniłem z bazo-danowej części mojej przykładowej aplikacji warstwę logiki biznesowej (BLL), aby zapewnić większą odrębność poszczególnych części programu.
.SH
Zdobyte umiejętności
.IP - 2
Zdolność stworzenia i wykorzystania warstwy biznesowej aplikacji serwerowej w celu umożliwienia tzw.
.I reużywalności
kodu.

.bp

.CSH "29 Stycznia"
.SH
Wykonane zadania
.PP
W nowo stworzonej warstwie logiki biznesowej umieściłem część programu odpowiedzialną za transformację danych do obiektów transferu danych (DTO).
.SH
Zdobyte umiejętności
.IP - 2
Wykorzystanie BLL w celu transformacji danych wyjściowych programu.
.IP - 2
Znajomość bibliotek środowiska .NET odpowiedzialnych za zaawansowaną transformację danych (np.
.I Mapster
oraz
.I AutoMapper ).

.bp

.CSH "1 Luty"
.SH
Wykonane zadania
.PP
Konfigurację części mojej aplikacji odpowiedzialnej za komunikację z zewnętrznym serwerem opakowałem w osobną klasę języka C# z pomocą m.in. metody
.I Bind()
oraz interfejsu
.I IConfiguration .
.SH
Zdobyte umiejętności
.IP - 2
Umiejętność wykorzystania wzorców opcji w środowisku ASP.NET.

.bp

.CSH "2 Luty"
.SH
Wykonane zadania
.PP
Tego dnia zaopatrzyłem mój przykładowy projekt API w podstawową obsługę błędów pozwalającą zapobiec wyjątkom w razie n.p. niepoprawnego żądania.
.SH
Zdobyte umiejętności
.IP - 2
Zdolność obsługi wyjątków i błędów w większej aplikacji serwerowej środowiska .NET.
.bp

.CSH "3 Luty"
.SH
Wykonane zadania
.PP
Zamieniłem prostą obsługę wyjątków mojej aplikacji na bardziej zbliżone do standardów produkcyjnych dedykowane
.I Middleware ,
co znacznie usprawniło i uprościło działanie.
.SH
Zdobyte umiejętności
.IP - 2
Zaawansowana obsługa błędów po stronie serwera z użyciem
.I Middleware .
.IP - 2
Głębsze zrozumienie potoku danych i obsługi żądań w aplikacji serwerowej.
.bp

.CSH "4\-5 Luty"
.SH
Wykonane zadania
.PP
Dwa dni spędziłem zaznajamiając się z szeroko używanym protokołem SOAP.
Zacząłem też zagłębiać się w dokumentację systemu NFZ - eWUŚ, opierającego się na właśnie tym standardzie komunikacji.
.SH
Zdobyte umiejętności
.IP - 2
Znajomość protokołu SOAP oraz zaawansowanej funkcjonalności języka XML.
.IP - 2
Zdolność wykorzystania plików WSDL do komunikacji z serwisem sieciowym.
.IP - 2
Zrozumienie budowy zaawansowanych API oraz umiejętność komunikowania się z nimi na podstawie oficjalnej dokumentacji.
.bp

.CSH "8\-9 Luty"
.SH
Wykonane zadania
.PP
W ramach ćwiczenia w wykorzystaniu standardu SOAP z użyciem środowiska .NET stworzyłem aplikację konsolową komunikującą się z API serwisu
.I Flickr ,
wykonującą dwukrotne zapytanie w celu uzyskania
.I galerii
podanego użytkownika.
.SH
Zdobyte umiejętności
.IP - 2
Głębsze zrozumienie bezpośredniej integracji z serwisami opartymi na SOAP.
.IP - 2
Zaawansowana manipulacja elementami języka XML przy użyciu
.I "LINQ to XML" ,
oraz klasy środowiska .NET
.I XmlSerializer .
.IP - 2
Wykorzystanie interfejsów
.I IServicesCollection
i
.I IHttpClientFactory
poza kontekstem ASP.NET.
.bp

.CSH "10\-12 Luty"
.SH
Wykonane zadania
.PP
Ostatnie trzy dni praktyk spędziłem implementując kompletnego (wykorzystującego całą dostępną funkcjonalność) webowego klienta platformy eWUŚ. Wykorzystałem do tego m.in. możliwości języka PHP, jak i
.I JavaScript
(szczególnie biblioteki
.I HandleBars ).
.SH
Zdobyte umiejętności
.IP - 2
Umiejętność wykorzystania klasy
.I SoapClient
standardowej implementacji języka PHP w celu komunikacji z serwerem.
.IP - 2
Wykorzystanie integracji między językami PHP oraz
.I JavaScript .
.IP - 2
Zachowywanie i zabezpieczanie sesji użytkownika w większej aplikacji.
.IP - 2
Głębsze zrozumienie standardów administracyjnych i deweloperskich serwisów rządowych.
.bp

Opinia i proponowana ocena z przebiegu praktyki:












































Proponowana ocena ____________________________________


Kraków, ____________________               ______________________________
.SM
                                                                                         Podpis zakładowego
                                                                                           opiekuna praktyki


(skala ocen szkolnych: celujący, bardzo dobry, dobry, dostateczny, dopuszczający, niedostateczny)
