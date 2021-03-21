BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `utilizatori` (
	`username`	TEXT NOT NULL,
	`password`	TEXT NOT NULL,
	`prenume`	TEXT NOT NULL,
	`nume`	TEXT NOT NULL,
	PRIMARY KEY(`username`)
);
INSERT INTO `utilizatori` VALUES ('Andreea','d74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1','andreea','Popescu');
INSERT INTO `utilizatori` VALUES ('Ana','b28a23c85bed4b50f9ee8c18738e9e3a320ae9e9ead3e5c61c59a11c38d694fe','Ana','Pop');
INSERT INTO `utilizatori` VALUES ('contnou','a80b568a237f50391d2f1f97beaf99564e33d2e1c8a2e5cac21ceda701570312','Ion','Pop');
INSERT INTO `utilizatori` VALUES ('contnou2','252f10c83610ebca1a059c0bae8255eba2f95be4d1d7bcfa89d7248a82d9f111','Ioana','Nechifor');
INSERT INTO `utilizatori` VALUES ('lala','494414ded24da13c451b13b424928821351c78fce49f93d9e1b55f102790c206','Lala','Lala');
INSERT INTO `utilizatori` VALUES ('malina','a80b568a237f50391d2f1f97beaf99564e33d2e1c8a2e5cac21ceda701570312','Malina','Marin');
INSERT INTO `utilizatori` VALUES ('user1','0a041b9462caa4a31bac3567e0b6e6fd9100787db2ab433d96f6d178cabfce90','Andrei','Georgescu');
INSERT INTO `utilizatori` VALUES ('b','3e23e8160039594a33894f6564e1b1348bbd7a0088d42c4acb73eeaed59c009d','Bianca','Ionescu');
INSERT INTO `utilizatori` VALUES ('ioana','858e2b14533db9791a67003491d9ca28e7421ce4d20d3f78119a8c3df4ee6d99','Ioana','popescu');
INSERT INTO `utilizatori` VALUES ('user2','6025d18fe48abd45168528f18a82e265dd98d421a7084aa09f61b341703901a3','Oana','Bulai');
INSERT INTO `utilizatori` VALUES ('_user_','04f8996da763b7a969b1028ee3007569eaf3a635486ddab211d512c85b9df8fbn','Andrada','Popescu');
INSERT INTO `utilizatori` VALUES ('puf','5879cab24833171537522833828ca2d75ebc4ecb0dabd9116e4580ff928960a5g.ini','Puf','Puf');
INSERT INTO `utilizatori` VALUES ('pufi','a4b429e4351bd149658ac87d9e740612a303b038a069ecb52653134f9296286bn','puf','puf');
INSERT INTO `utilizatori` VALUES ('pufii','66654e2785c214b41c968ab7e216806236d7a1a7889aee0705119efaa240398d','pufii','pufii');
INSERT INTO `utilizatori` VALUES ('oana','89e3564556d7d659e3065c41b23cce12fc4446d72508d5ce993677ec4c789ad7','Oana','Georgescu');
INSERT INTO `utilizatori` VALUES ('test','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08','test','test');
INSERT INTO `utilizatori` VALUES ('test2','60303ae22b998861bce3b28f33eec1be758a213c86c93c076dbe9f558c11c752','test2','test2');
INSERT INTO `utilizatori` VALUES ('test4','a4e624d686e03ed2767c0abd85c14426b0b1157d2ce81d27bb4fe4f6f01d688a','Prenume_test4','Nume_test4');
INSERT INTO `utilizatori` VALUES ('test5','a140c0c1eda2def2b830363ba362aa4d7d255c262960544821f556e16661b6ff','test5','test5');
CREATE TABLE IF NOT EXISTS `prietenii` (
	`user1`	TEXT NOT NULL,
	`user2`	TEXT NOT NULL
);
INSERT INTO `prietenii` VALUES ('Ana','ioana');
INSERT INTO `prietenii` VALUES ('ioana','Ana');
INSERT INTO `prietenii` VALUES ('user1','ioana');
INSERT INTO `prietenii` VALUES ('ioana','user1');
INSERT INTO `prietenii` VALUES ('Ana','user1');
INSERT INTO `prietenii` VALUES ('user1','Ana');
INSERT INTO `prietenii` VALUES ('b','Ana');
INSERT INTO `prietenii` VALUES ('Ana','b');
INSERT INTO `prietenii` VALUES ('Ana','lala');
INSERT INTO `prietenii` VALUES ('Ana','a');
INSERT INTO `prietenii` VALUES ('oana','Ana');
INSERT INTO `prietenii` VALUES ('Ana','oana');
INSERT INTO `prietenii` VALUES ('test','b');
INSERT INTO `prietenii` VALUES ('b','test');
INSERT INTO `prietenii` VALUES ('Ana','test');
INSERT INTO `prietenii` VALUES ('test5','Ana');
INSERT INTO `prietenii` VALUES ('Ana','test5');
CREATE TABLE IF NOT EXISTS `discutii` (
	`capitol`	INTEGER NOT NULL,
	`username`	TEXT,
	`post`	TEXT
);
INSERT INTO `discutii` VALUES (4,'Ana','Aici sunt discutiile despre capitolul 4?');
INSERT INTO `discutii` VALUES (4,'ioana','Da');
INSERT INTO `discutii` VALUES (4,'Ana','Ok');
INSERT INTO `discutii` VALUES (6,'ioana','Unde pot gasi informatii suplimentare?');
INSERT INTO `discutii` VALUES (6,'Ana','pe net');
INSERT INTO `discutii` VALUES (4,'ioana','Buna');
INSERT INTO `discutii` VALUES (4,'Ana','Hello');
INSERT INTO `discutii` VALUES (1,'Ana','buna');
INSERT INTO `discutii` VALUES (1,'ioana','hello');
INSERT INTO `discutii` VALUES (1,'user1','buna');
INSERT INTO `discutii` VALUES (7,'ioana','hello');
INSERT INTO `discutii` VALUES (6,'Ana','Aici sunt discutiile despre capitolul 6?');
INSERT INTO `discutii` VALUES (6,'ioana','da, aici sunt');
INSERT INTO `discutii` VALUES (4,'Ana','hello');
INSERT INTO `discutii` VALUES (7,'Ana','buna');
INSERT INTO `discutii` VALUES (7,'b','helloo');
INSERT INTO `discutii` VALUES (7,'ioana','......');
INSERT INTO `discutii` VALUES (5,'b','aici este capitolul 5');
INSERT INTO `discutii` VALUES (3,'Ana','aici este capitoul 3');
INSERT INTO `discutii` VALUES (3,'b','da');
INSERT INTO `discutii` VALUES (4,'Ana','hello');
INSERT INTO `discutii` VALUES (4,'b','buna');
INSERT INTO `discutii` VALUES (11,'Ana','buna');
INSERT INTO `discutii` VALUES (11,'b','salut');
INSERT INTO `discutii` VALUES (7,'b','...');
INSERT INTO `discutii` VALUES (6,'b','da');
INSERT INTO `discutii` VALUES (6,'Ana','dap');
CREATE TABLE IF NOT EXISTS `cursuri` (
	`capitol`	INTEGER NOT NULL,
	`text`	TEXT,
	PRIMARY KEY(`capitol`)
);
INSERT INTO `cursuri` VALUES (1,'Cursul 1
Concepte si notiuni de baza
(c)Lenuta Alboaie
adria@info.uaic.ro
https://profs.info.uaic.ro/~computernetworkscursullaboratorul.php
Cuprins:
• Concepte
    • Definitii
    • Necesitatea si utilizarea retelelor de calculatoare
    • Clasificare
    • Topologii
    • Componente
    • Protocol
    • Modele de arhitecturi deretea

CONCEPTE
        ◦ Informatie: orice poate fi reprezentat sub forma de biti
        ◦ Resursa: termen generic, putand reprezenta date, echipamente etc
        ◦ Pachet: modalitate de stocare a datelor
   
        ◦ Legatura:conexiune realizata intre membrii retelei
        ◦ Nod:calculator din retea care are asociata o adresa
        ◦ Protocol:reguli utilizate pentru realizarea comunicarii
        ◦ Comunicare:schimb de informatii intre nodurile din retea



    • Protocol

A protocol defines the format and the order of messages exchanged between two or more communicating entities, as well as the actions taken on the transmission and/or receipt of a message or other event.

        ◦ Definitii:
            ▪ Colectie interconectata de calculatoare autonome
            ▪ O retea poate fi definita in mod recursiv ca doua sau mai multe noduri conectate printr-o legatura fizica, sau prin doua sau mai multe retele conectate de unul sau mai multe noduri
        ◦ Aspecte:
            ▪ Hardware:conecteaza“fizic” computerele intre ele
            ▪ Software:Protocoale– specifica serviciile furnizate de retea

De ce suntnecesare:
    • Partajarea resurselor (fizice,date)
    • Asigurarea fiabilitatii
    • Reducerea costurilor
    • Impactul in viata reala:
        ◦ Conversatiile electronice
        ◦ Access la informatii la distanta
        ◦ Divertisment interactiv
        ◦ Comert electronic


        ◦ Dupa dispunerea spatiala:
            ▪ PAN(Personal Area Network)
            ▪ LAN(Local Area Network)
            ▪ MAN(Metropolitan Area Network)
            ▪ WAN(Wide Area Network)
            ▪ Internet

Tipuri de retele - clasificare

        ◦ In functie de tehnologia de transmisie:
            ▪ Retele cu difuzare(un singur canal de comunicare)
                • broadcast,multicast
            ▪ Retele point-to-point
                • unicast


Topologie fizica: modul de interconectare a calculatoarelor in retea
Topologie logica: modul in care datele sunt transferate de la un calculator la altul
Posibile topologii fizice pentru:
    • Retele cu difuzare LAN
        ◦ Magistrala(bus)
        ◦ Inel (ring)
    • Retele point-to-point
        ◦ Stea(star)
        ◦ Inel (ring)
        ◦ Arbore(tree)
        ◦ Completa

        ◦ In functie de tehnologia hardware(si software)folosita pentru interconectare
            ▪ Retele folosind medii de transmisie cu fir
            ▪ Retele folosind medii de transmisie fara fir

        ◦ In functie de elementele componente:
            ▪ Omogena:retea de calculatoare folosind configuratii si protocoale similare
                • Exemplu: O retea folosind Microsoft Windows via TCP/IP
            ▪ Eterogena:retea care contine tipuri diferite de calculatoare, sisteme de operare si/sau protocoale diferite.
                • Exemplu: LAN care conecteaza un smartphone cu Android si un computer Apple Machintosh


Componente
Gazda(eng.Host) – este un sistem computational conectat la Internet
Hub(Hub Network) – dispozitiv (deseori amplificator de semnal) folosit pentru conectarea mai multor dispozitive =>segment deretea (network segment)

Switch(Switch)- dispozitiv care filtreaza si retrimite pachetele in retea
Leonard-Kleinrock ->IMP (Interface Message Processor) 1969


Componente
        ◦ Ruter(Router) – dispozitiv oferind conectivitatea intre retele individuale, realizand dirijarea pachetelor intre aceste retele

    • Punte(Bridge) – dispozitiv care conecteaza doua sau mai multe segmente intr-oretea
    • Poarta(Gateway) –este punctul de conectare a doua retele incompatibile
    • Repeater-este un dispozitiv electronic care primeste semnale pe care le retransmite la un nivel mai inalt sau la o putere mai mare,astfel ca semnalul sa poata acoperi zone mari fara degradare a calitatii sale

');
INSERT INTO `cursuri` VALUES (2,'Cursul 2
(c)Lenuta Alboaie
adria@info.uaic.ro
https://profs.info.uaic.ro/~computernetworkscursullaboratorul.php
Cuprins
    • Retele de calculatoare – organizare
    • Modele de arhitecturi de retea(OSI,TCP/IP)
    • Modelul TCP/IP
    • ISO/OSI versus TCP/IP
Retele de calculatoare – organizare
    • Organizarea retelelor de calculatoare –stiva de nivele
        ◦ Functionalitate:
            ▪ Interfata:asigura comunicarea intre doua nivele consecutive
            ▪ Serviciu:furnizeaza functionalitatea unui nivel
        ◦ Rezultat:reducerea complexitatii proiectarii
        ◦ Principiul de comunicare:ce transmite emitatorul la nivelul n este ceea ce se primeste la destinatar la nivelul n
    • Protocol–regulile si conventiile prin care se realizeaza comunicarea
    • Specificarea serviciului este realizata printr-un set de primitive(operatii) puse la dispozitia celui ce foloseste serviciul
    • Serviciu != Protocol
        ◦ Tipuri de servicii
            ▪ Orientat-conexiune(eng.connection-oriented)
                • Comunicarea necesita stabilirea unei conexiuni
                • Similar serviciului telefonic
            ▪ Fara conexiune(eng.connectionless)
                • Comunicarea nu necesita stabilirea unei conexiuni
                • Similar serviciului postal
    • Arhitectura de retea:multimea de nivele si de protocoale
–Specificatia unei arhitecturi trebuie sa ofere suficiente informatii pentru ca programele sau echipamentele destinate unui nivel sa indeplineasca protocoalele corespunzatoare
    • Stiva de protocoale:lista de protocoale(de pe toate nivelele)utilizate de catre un anumit sistem
        ◦ Fiecare nivel trebuie sar ealizeze indentificarea emitatorilor&receptorilor printr-un mecanism de adresare
        ◦ Identificarea regulilor de transfer a datelor
            ▪ comunicare simplex
                • Exemplu:TV
            ▪ comunicare half-duplex
                • Exemplu:"walkie-talkie"
            ▪ comunicare full-duplex
                • Exemplu:telefon

Modelul OSI- motivatie
    • Necesitatea unui nivel deabstractizare diferit => crearea unui nou nivel
        ◦ Obs. Numarul de niveluri trebuie sa fie optim a.i. acelasi nivel sa aiba functii diferite,dar arhitectura sa fie functionala
    • Un nivel are un rol bine definit; functia nivelului trebuie aleasa acordindu-se atentie definirii de protocoale standardizate pe plan international
    • Minimizarea fluxului de informatii intre nivele este realizata printr-o buna delimitare a nivelelor
=> nivelele pot fi modificate si implementate in mod independent
    • Fiecare nivel ofera un serviciu nivelului superior (folosind servicii de pe nivelurile anterioare)
    • Nivelurile “peer” al sistemelor diferite comunica via un protocol
Modelul OSI – structura
    • Nivelul Fizic
    • Nivelul LegaturiideDate
    • Nivelul Retea
    • Nivelul Transport
    • Nivelul Sesiune
    • Nivelul Prezentare
    • Nivelul Aplicati
Modelul TCP/IP
            ▪ sistem terminal(eng.end-system)–gazda(eng. host)
            ▪ retea(eng.network) -oferasuportul pentrutransferuldedate intresistemeterminale
            ▪ internet- colectie deretele(interconectate)
            ▪ subretea(eng.subnetwork) -componentadin internet
            ▪ sistem intermediar(eng.intermediatesystem)-conecteazadouasubretele
    • Oferaposibilitateade ainterconectamai multe tipuri deretele
    • Arecaaxanivelurilereteasitransport
– suportat de multe implementari ale nivelului fizic (cablu coaxial,twisted pair, fibra optica)
        ◦ Nivelul“fizic”
–	Asigura conectareahost-ului laretea
    • Nivelultransport
        ◦ Asigurarealizareacomunicariiintregazdasursasigazda
destinatie
        ◦ Protocoale
            ▪ TCP(TransmissionControl Protocol) - RFC793,761
            ▪ UDP(User Datagram Protocol) – RFC768
            ▪ Alte protocoale: SCTP(Stream ControlTransmissionProtocol) – RFC 4960, 3286 (2960, 3309);DCCP(Datagram Congestion Control Protocol) – RFC 4340,4336;
    • Asemanari:
        ◦ Ambele sebazeazapeostivadeprotocoale
        ◦ Functionalitatile straturiloresteoarecumasemanatoare
        ◦ Ambele au nivelul aplicatie ca nivel superior
        ◦ Sebazeaza(direct sau indirect) pe nivelul transport
    • Deosebiri:
        ◦ ISO/OSIesteindicat ca model teoretic;TCP/IPesteeficient inimplementare
        ◦ OSI faceexplicitadistinctia intre serviciu,interfatasiprotocol;TCP/IPnu
        ◦ ISO/OSI pune la dispozitie protocoalecareasigura o comunicare fiabila (detectarea sitratarede erori la fiecarenivel);
TCP/IP face verificarea comunicarii la nivelul transport
');
INSERT INTO `cursuri` VALUES (3,'Cursul 3
Nivelul Retea
Lenuta Alboaie
adria@info.uaic.ro
https://profs.info.uaic.ro/~computernetworkscursullaboratorul.php
Cuprins
• Nivelul Retea
• Protocolul IPv4
• Problematica
• Caracterizare
• Subretele
• Retele Private
• ICMP
• Rezolutia adreselor
• IPv6 – imagine generala

  
Preliminarii
• Situatia initiala
- Inainte de Internet doar nodurile din aceeasi retea puteau comunica
intre ele
  
Preliminarii
• Probleme
– Cum se pot transporta pachete intr-un mediu eterogen?
• Eterogenitate
• La nivelurile inferioare: cum
se poate face interconectarea
unui numar mare de retele
independente?
• La nivelurile superioare: cum
se poate oferi suport pentru
o mare varietate de aplicatii?
• Scalare: cum s-ar putea suporta un numar mare de noduri si
aplicatii intr-un astfel de sistem de retele interconectate?  
Solutia
• IP – Internet Protocol

Nivelul retea
• Protocolul IP este utilizat de sisteme autonome (AS – Autonomous
Systems) in vederea interconectarii

Figura:
Internetul -
colectie de
retele
interconectate
[Computer Networks, 2003
Andrew S. Tanenbaum]
  
Nivelul Retea
• Rol: ofera servicii neorientate-conexiune
pentru a transporta datagrame de la sursa
la destinatie; sursa si destinatia pot fi in
retele diferite
• Fiecare datagrama este independenta de
celelalte
• Nu se garanteaza trimiterea corecta a
datagramelor (pierdere, multiplicare,…)


  
Protocolul IP
• Datagrama IPv4


• Valorile uzuale ale
campului Version
sunt:
• 4 – protocolul IP
(RFC 791)
(6 pentru protocolul
IPv6 (RFC 1883))
9
Data
Figura: Datagrama IPv4
Specifica lungimea
antetului
datagramei
Specifica
dimensiunea
intregului pachet
  
Protocolul IP
• Datagrama IPv4
• Campul Type of
service permite gazdei
sa comunice
subretelei (e.g.
routere) ce tip de
serviciu doreste
10
Data
Figura: Campul Type of Service
Figura: Datagrama IPv4

• Datagrama IPv4
• Campul Identification
permite gazdei
destinatie sa identifice
apartenenta la o
datagrama a noului
fragment primit

Data
Figura: Datagrama IPv4
• Flagurile:
• DF (Don’t Fragment) – indica ruterelor sa nu fragmenteze
datagrama
• MF (More Fragments) – semnalizeaza ca pachetul este un
fragment, urmat de altele; ultimul fragment are acest bit 0
• Campul Fragment offset – locul fragmentului in datagrama
  
Protocolul IP
• Datagrama IP
• Fragmentarea datagramelor:
• Fiecare fragment (pachet) are aceeasi structura ca
datagrama IP
• Reasamblarea datagramelor se face la destinatar
• Daca un fragment al unei datagrame e pierdut, acea
datagrama e distrusa (se trimite la expeditor un mesaj
ICMP – Internet Control Message Protocol)
• Mecanismul de fragmentare a fost folosit pentru unele
atacuri – firewall piercing (un fragment “special” e
considerat ca fiind parte a unei conexiuni deja stabilite,
astfel incat ii va fi permis accesul via firewall)

  
Protocolul IP
• Datagrama IP
• Filtrarea datagramelor:
• Se realizeaza de un firewall: ofera accesul din
exterior in reteaua interna, conform unor politici
de acces, doar pentru anumite tipuri de pachete
(utilizate de anumite protocoale/servicii)
• Preintimpina o serie de atacuri vizind
securitatea
• Firewall-ul poate fi software sau hardware
• Firewall-ul poate juca rol de proxy sau de
gateway

Protocolul IP
• Rolul si arhitectura unui proxy:
– Acces indirect la alte retele (Internet) pentru gazdele
dintr-o retea locala via proxy
– Proxy-ul poate fi software sau hardware
– Rol de poarta (gateway), de firewall sau de server de
cache
– Proxy-ul ofera partajarea unei conexiuni Internet
– Utilizat la imbunatatirea performantei (e.g., caching,
controlul fluxului), filtrarea cererilor, asigurarea
anonimitatii

  
Protocolul IP
• Datagrama IPv4
• Campul TTL (Time to
Live) specifica durata
de viata a pachetului;
 numarul este
decrementat de
fiecare router prin
care trece pachetul

Data
Figura: Datagrama IPv4
  
Protocolul IP
• Datagrama IPv4
• Campul Protocol
specifica protocolul
(de nivel superior)
caruia ii este destinata
informatia inclusa in
datagrama:

Data
 1 ICMP (Internet Control Message Protocol)
 2 IGMP (Internet Group Message Protocol)
 6 TCP (Transmission Control Protocol)
 17 UDP (User Datagram Protocol)
 … etc.(RFC 1700)

  
Protocolul IP
• Datagrama IPv4
• Campul Header
checksum folosit
pentru detectarea
erorilor; daca
apare o eroare
datagrama este
distrusa

• Datagrama IPv4
• Campul Options

Optiune Descriere
Securitate Mentioneaza cat de secreta este datagrama
Dirijare stricta pe baza sursei (engl. strict
source routing)
Indica calea completa de parcurs
Dirijarea aproximativa pe baza sursei (engl.
Loose source routing)
Indica o lista a ruterelor care nu trebuie sarite
Intregistreaza calea (engl. record route) Face fiecare ruter sa-si adauge adresa IP
Amprenta de timp (engl. timestamp) Face fiecare ruter sa-si adauge adresa si o amprenta de timp
  
Protocolul IP
• Datagrama IPv4
• Campul Source
adress si
Destination adress
indica adresa
sursei si destinatiei

Data
Figura: Datagrama IPv4
  
Protocolul IP
• Adrese IPv4
• Fiecare adresa IP include un identificator de
retea (NetID) si un identificator de gazda
(HostID)
• Fiecare interfata de retea are o adresa IPv4
unica
• O adresa IPv4 are lungimea de 32 biti
• Initial (RFC 791) exista impartirea in clase de
adrese: A,B,C,D,E


  
Protocolul IP
• Adrese IPv4
• Clasa A: 128 retele posibile, 224 gazde/retea
• Clasa B: 214 retele posibile, 216 gazde/retea
• Clasa C: peste 2 milioane de retele, 255 gazde/retea
• Identificatorul de retea (NetID) este asignat de o
autoritate centrala (NIC – Network Information Center)
• Identificatorul de gazda (HostID) este asignat local de
administratorul retelei
• Exemplu: 85.122.23.145 – Clasa A (conventie de notatie
in zecimal)
 0101 0101 0111 1010 0001 0111 1001 0001
• Pentru IPv6 se recomanda reprezentarea hexadecimal

  

• O interfata (placa) de retea are asignata o unica adresa IP
• O gazda poate avea mai multe placi de retea, deci mai multe
adrese IP
• Gazdele unei aceleiasi retele vor avea acelasi identificator de
retea (acelasi NetID)
• Adresele de broadcast au HostID cu toti bitii 1
• Adresa IP care are HostID cu toti bitii 0 se numeste adresa
retelei – refera intreaga retea
• Exemplu: adresa 85.122.23.0 (adresa network a masinilor
85.122.23.145 si 85.122.23.1
• 127.0.0.1 – adresa de loopback (localhost)

• Din spatiul de adrese ce pot fi alocate efectiv sunt rezervate
urmatoarele (RFC 1918):
• 0.0.0.0 – 0.255.255.255
• 10.0.0.0 – 10.255.255.255 (adrese private)
• 127.0.0.0 – 127.255.255.255 (pentru loopback)
• 172.16.0.0 - 172.31.255.255 (adrese private)
• 192.168.0.0 - 192.168.255.255 (adrese private)
• Adrese private: adrese care nu sunt accesibile spre exterior
(Internetul “real”), ci doar in intranetul organizatiei

Retele private
• Aspecte:
• Cresterea exponentiala a numarului de gazde
• Nu toate masinile gazda ofera resurse accesibile de
pe Internet
• Solutia: NAT (Network Address Translation) – RFC
3022, 4008
• Se reutilizeaza adresele private (RFC 1918)
• Se bazeaza pe inlocuirea adresei private cu adresa IP
neprivata (IP masquerading)

• Functionalitate:

• Ruterele in mod
normal ignora
datagramele continind
adrese private => pot
fi folosite adrese IP
private in cadrul
intranet-ului
organizatiei
• Accesul spre exterior
(Internetul “real”) se
realizeaza via o poarta
(mediating gateway)
ce rescrie adresele IP
sursa/destinatie
  
Protocolul IP
• Subretele folosind masti de retea
• A aparut ca solutie pentru problema epuizarii spatiului de
adrese IP
• Simplifica rutarea
• Subretelele nu pot fi detectate ca subretele din exterior

  
Protocolul IP
• Subretele folosind masti de retea
• Divizarea in subretele se va face via masca de retea (netmask): bitii
NetID sunt 1, bitii HostID sunt 0
• Identificatorul subretelei (SubnetID) este utilizat in general sa
grupeze calculatoarele pe baza topologiei fizice

Figura. O cale de a crea o subretea dintr-o retea de clasa B
  
Protocolul IP
• Subretele folosind masti de retea
• Exemplu:
– Fie adresa IP: 160.0.6.7
10100000 00000000 00000110 00000111
– Masca de retea: 255.255.252.0
 11111111 11111111 11111100 00000000
– Adresa de retea: 160.0.4.0
 10100000 00000000 00000100 00000000
Adresa retelei = masca de retea AND adresa IP
• Masti de subretea implicite:
• 255.0.0.0 Clasa A
• 255.255.0.0 Clasa B
• 255.255.255.0 Clasa C

  
Protocolul IP
• Conventii de notare: x.x.x.x/m inseamna ca se aplica o masca
de m biti adresei IP precizata de x.x.x.x
• Exemplu:
• 10.0.0.0/12 – se aplica o masca de 12 biti adresei 10.0.0.0,
selectindu-se valorile posibile in ultimii 20 de biti (=32-12) de
adresa
• 85.122.16.0/20 – se aplica o masca de 20 biti adresei
85.122.16.0

  
Nivelul Retea
• Protocoale
• ICMP (RFC 792)
• ARP (RFC 826)
• RARP (RFC 903)
• BOOTP (RFC 951,1048,1084)
• DHCP
• De la IPv4 la IPv6

  
Protocolul ICMP
• ICMP – Internet Control Message Protocol
• Utilizat pentru schimbul de mesaje de control
• Foloseste IP
• Mesajele ICMP sunt procesate de software-ul IP, nu de
procesele utilizatorului
• Tipuri de mesaje :

Tipul mesajului Descriere
8 Echo Request Intreaba o masina daca este activa
0 Echo Replay “Da, sunt activa”
3 Destination Unreachable Pachetul nu poate fi livrat (e.g. DF setat)
5 Redirect Schimbarea rutei
11 Time Exceeded A expirat timpul
… etc (RFC 792) http://www.iana.org/assignments/icmp-parameters
  
Protocolul ICMP
• Utilizat de:
• comanda ping (Packet Internet Gropher)
• comanda traceroute
• Se trimite un pachet cu TTL=1 (1 hop)
• Primul router ignora pachetul si trimite inapoi un mesaj
ICMP de tip “time-to-live exceeded”
• Se trimite un pachet cu TTL=2 (2 hop-uri)
• Al doilea router ignora pachetul si trimite inapoi un
mesaj “time-to-live exceeded”
• Se repeta pina cind se primeste raspuns de la destinatie
sau s-a ajuns la numarul maxim de hop-uri

  
Rezolutia adreselor
• Adrese IP <-> adrese hardware (fizice)
• Procesul de a gasi adresa hardware a unei gazde stiind adresa IP se
numeste rezolutia adresei (address resolution) – protocolul ARP
(RFC 826)
• ARP – protocol de tip broadcast (fiecare masina primeste
cererea de trimitere a adresei fizice, raspunde doar cea in cauza)
• Procesul de a gasi adresa IP pe baza adresei hardware se numeste
rezolutia inversa a adresei (reverse address resolution) – protocolul
RARP (RFC 903)
• Utilizat la boot-are de statiile de lucru fara disc
• BOOTP (RFC 951,1048,1084)

  
IPv6
• Context:
– Probleme de adresabilitate via IPv4 clasic:
• Cresterea exponentiala a numarului de gazde
(e.g. IoT)
• Aparitia unor tabele de rutare de mari
dimensiuni
• Configuratii tot mai complexe, utilizatori tot mai
multi
• Imposibilitatea asigurarii calitatii serviciilor
(QoS)
– Presiuni din partea operatorilor de telefonie
mobila 35
  
• Obiective pentru un nou protocol:
– Suport pentru miliarde de gazde
– Reducerea tabelelor de rutare
– Simplificarea protocolului
– Suport pentru gazde mobile
– Compatibilitatea cu vechiul IP
– Suport pentru evolutiile viitoare ale Internet-ului
• RFC 2460, 2553
  
IPv6
• Aspecte:
– Adresele IPv6 au lungime de 16 octeti - 2
128 adrese
– Notatie: 16 numere hexa, fiecare de 2 cifre, delimitate de “:”
• Exemplu: 2001:0db8:0000:0000:0000:0000:1428:57ab
• Daca unul sau mai multe din grupurile de 4 cifre este 0000,
zerourile pot fi omise si inlocuite (o singura data) cu “::”
– Exemplu: 2001:0db8::1428:57ab
– Pentru pastrarea compatibilitatii: adresele IP publice sunt
considerate un subset al spatiului de adrese IPv6
– Adresele IPv4 in IPv6 pot fi scrise astfel:
10.0.0.1 -> ::10.0.0.1 sau 0:0:0:0:0:0:A00:1

• ICMPv6
– Ofera functiile ICMP (raportarea transmiterii datelor,
erorilor, etc.) plus:
• Descoperirea vecinilor (Neighbor Discovery Protocol –
NDP) - Inlocuieste ARP
• Descoperirea ascultatorilor multicast (Multicast
Listener Discovery) – inlocuieste IGMP (Internet
Group Management Protocol)
– Detalii in RFC 4443



  
');
INSERT INTO `cursuri` VALUES (4,'Cursul 4
Nivelul Transport
Lenuta Alboaie
adria@info.uaic.ro
 https://profs.info.uaic.ro/~computernetworkscursullaboratorul.php
Cuprins
Nivelul Transport
• Preliminarii
• UDP (User Datagram Protocol)
• TCP (Transmission Control Protocol)
• TCP versus UDP

   
Furnizoare de
servicii de
transport

Nivelul transport|Preliminarii
Utilizatoare de
servicii de
Transport
Figura. Modelul OSI
[conform Computer
Networks, 2010 –
Andrew S.
Tanenbaum, et.al.]
   
Nivelul Transport
• Relatia (logica) intre nivele: retea-transport-aplicatie

Entitatea de transport: utilizeaza
serviciile nivelului retea si ofera
servicii nivelului superior
TPDU (Transport Protocol Data Unit) –
unitatea de date pentru transport
[conform Computer Networks, 2010
– Andrew S. Tanenbaum, et.al.]
adresa IP
adresa IP: port
   
• Ofera servicii mult mai fiabile decat cele de la nivelul retea (e.g.
pachetele pierdute/incorecte de la nivelul retea pot fi
detectate/corectate la nivelul transport)
• Calitatea serviciilor – QoS (Quality of Service)
– Intarzierea la stabilirea conexiunii
– Productivitatea sau rata de transfer
– Intirzierea la transfer
– Rata reziduala a erorilor
– Protectia
– Prioritatea
– Rezilienta

   
• Asigura comunicarea logica dintre procese rulind pe host-uri
diferite (comunicare end-to-end)
• (Curs anterior!) Nivelul retea asigura comunicarea logica
intre host-uri
• PORT
• Adauga o noua dimensiune adreselor IP de la nivelul retea
• Se asociaza unei aplicatii (serviciu) si nu unei gazde
• Un proces poate oferi mai multe servicii => poate utiliza mai
multe porturi
• Un serviciu poate corespunde mai multor procese

   
• PORT
– Este un numar pe 16 biti si poate avea valori intre 0 – 65535
– 1-1024 – valori rezervate (well-known), 1-512 servicii de sistem
(IANA – Internet Assigned Number Authority: RFC 1700)
Exemple:
/etc/services : sunt precizate porturile asociate serviciilor
sistem
HTTP – 80; SMTP – 25; telnet – 23; SSH - 22


   
Primitive generale
– Permit utilizatorilor nivelului transport (e.g. programe de
aplicatie) sa acceseze serviciile

Primitiva Unitatea de date trimisa
(TPDU)
Explicatie
LISTEN (nimic) Se blocheaza pana cand un proces
incearca sa se conecteze
CONNECT CONNECTION REQUEST Incearca sa stabileasca conexiunea
SEND DATA Transmite informatie
RECEIVE (nimic) Se blocheaza pana cand se
primeste date trimise
DISCONNECT DISCONNECTION REQ. Trimisa de partea care vrea sa se
deconecteze
   
Cele mai importante protocoale la nivelul
transport:
 CP (Transmission Control Protocol) –
protocol de transport orientat
conexiune; RFC 793 (1122), 1323
UDP (User Datagram Protocol) –
protocol de transport neorientat
conexiune; RFC 768
   
• Protocol de transport neorientat conexiune,
nesigur, minimal
• Nu ofera nici o calitate suplimentara serviciilor
• Nu recurge la negocieri sau la confirmari ale
primirii datelor


UDP 
• Analogie: UDP – similar postei terestre
Trimiterea unei scrisori
Nu se garanteaza
ordinea receptionarii
Mesajul se poate pierde
   
• Utilizeaza IP
• Pentru a oferii servicii de comunicare intre
procese foloseste porturi
• UDP transmite pachete: antet (8 bytes) +
continut

UDP
Figura: Antet UDP [conform Computer Networks, 2010
– Andrew S. Tanenbaum, et.al.]
   
• Source port si
Destination port
identifica “endpoint”-urile de pe
masinile sursa si
destinatie

UDP
Figura: Antet UDP
• UDP length =
8 bytes +
dimensiunea
continutului
• UDP
checksum
nu este
obligatoriu
   
• Exemple de utilizari:
– DNS (Domain Name System)
Use-case: A are nevoie de IP-ul host-ului cu numele
www.info.uaic.ro
Pas 1. A trimite un pachet UDP continind numele
host-ului : www.info.uaic.ro
Pas 2. Serverul de DNS trimite un pachet UDP de
raspuns continind adresa IP a host-ului : 85.122.23.146
– RPC (Remote Procedure Call) – mecanism de apel
al procedurilor la distanta

UDP
• Ce nu ofera?
– Controlul fluxului
– Controlul erorilor
– Retransmisia la receptionarea unui pachet eronat
• Ce ofera?
– Folosind port-uri extinde protocolul IP pentru comunicarea
intre procese aflate pe host-uri diferite si nu numai intre
host-uri

   
• Controleaza fluxul de date (stream-oriented)
• Utilizat de multe protocoale de aplicatii: HTTP, SMTP, …

• Protocol de transport
orientat conexiune,
fara pierdere de
informatii
• Vizeaza oferirea
calitatii maxime a
serviciilor
• Integreaza mecanisme
de stabilire si de
eliberare a conexiunii
   
• Analogie: TCP – similar telefoniei
TCP
Initierea unei
convorbiri
Dialogul dintre parti
Terminarea convorbirii
[conform Retele de calculatoare – curs
2007-2008, Sabin Buraga]
   
• Utilizeaza conexiuni, nu porturi ca abstractiuni fundamentale
• Ambele parti (expeditorul, destinatarul) trebuie sa participe la
realizarea conexiunii
• Conexiunile se identifica prin perechi reprezentate de
adresa IP:PORT (soclu - socket)
– Exemplu:
(85.122.23.146: 12345, 85.122.23.146: 22)
• Una din parti ofera o deschidere pasiva - asteapta aparitia unei
cereri de conectare a partenerului de comunicare care
realizeaza o deschidere activa
• Un soclu poate fi partajat de conexiuni multiple de pe aceeasi
masina

   
• Conexiunile TCP sunt full-duplex
• O conexiune TCP este un flux de octeti si nu un flux de mesaje
Exemplu:
- Emitatorul trimite 4 fragmente de 512 octeti
- Receptorul poate primi:
- 1. doua fragmente de 1024 de octeti
- 2. un fragment de 1 octet si unul de 2047 de octeti
- 3. … (orice alta combinatie)

Patru segmente de 512 octeti
trimise ca datagrame IP separate
Livrarea celor 2048
octeti catre aplicatie
Antet IP
Antet TCP
   
Client
Server
Legenda:
-Fiecare linie este
etichetata cu o pereche
eveniment/actiune
Exemplu: ACK/-

[conform Computer
Networks, 2010 – Andrew
S. Tanenbaum, et.al.]
Automatul finit TCP
Modeleaza comportamentul protocolului
Starile sunt utilizate la managementul conexiunii

Antetul TCP
Cimpurile Source Port si Destination
Port identifica punctele finale ale
conexiunii

TCP
Flaguri de control
– URG (URGence) (1 bit) – daca este setat, campul Urgent
Pointer este folosit
– ACK (ACKnowledgment)
 daca este setat campul Acknowledge Number este folosit;
 este setat in toate pachetele de confirmare
   
Antetul TCP
• Flaguri de control
– PSH (PuSH)– datele vor fi
transmise imediat aplicatiei
destinatare

– RST (ReSeT) – semnalizeaza erori in conexiune (e.g.
deschiderea unei conexiuni este refuzata)
   
Antetul TCP
• Flaguri de control
– SYN (SYNchronize)
• folosit pentru stabilirea
conexiunii
(Cererea de conexiune: SYN=1,
ACK=0; Raspunsul la cerere:
SYN=1, ACK=1; )

• indica cererea de conexiune si conexiune
acceptata
– FIN (FINish)- indica inchiderea conexiunii
   
Antetul TCP
Campul Sequence Number
(SEQ)
- Daca flagul SYN este setat
=> SEQ are valoarea initiala
a numarului de ordine;

- Daca flagul SYN este nesetat => SEQ are ca valoare
numarul de ordine a primului octet trimis in acest
pachet
   
Antetul TCP
Campul Acknowldge Number
- Daca flagul ACK este setat
=> are valoarea numarului
de ordine al urmatorului
octet care se asteapta a fi
receptionat;

Campul Window size – numarul de octeti pe care
receptorul doreste sa ii receptioneze (controlul
fluxului)
   
Antetul TCP
Campul Checksum – folosit
pentru verificarea sumei de
control al pachetului TCP
(antet si data)

Campul Urgent Pointer – daca flagul URG este setat,
indica deplasamentul fata de numarul curent de
ordine la care se gaseste informatia urgenta
   
Stabilirea conexiunii -> Three-way handshaking

Administrarea conexiunii TCP
CONNECT LISTEN
[conform Computer
Networks, 2010 – Andrew
S. Tanenbaum, et.al.]
   

Controlul fluxului
Mecanism general:
• Protocol de comunicare simplu: se trimite un pachet si
apoi se asteapta confirmarea de primire de la
destinatar inainte de a trimite pachetul urmator.
• Daca confirmarea (ACK) nu este primita intr-un interval
de timp prestabilit, pachetul este trimis din nou
Emitator Receptor
Trimite pachetul 1 Primeste pachetul 1;
confirma (ACK) primirea
Trimite pachetul 2 Primeste pachetul 2;
confirma (ACK) primirea
Problema: mecanismul asigura siguranta comunicarii dar
determina folosirea doar a unei parti din banda disponibila a
retelei
Fiabilitatea
Comunicarii
(reliability)
   

Administrarea conexiunii TCP
Fereastra glisanta – context:
– TCP asigura un flux de octeti => numerele de secventa sunt
atribuite fiecarui octet din stream
– TCP imparte fluxul de octeti in segmente TCP; segmentele trimise
si confirmarile vor transporta numere de secventa (vezi slide 19)
– Dimensiunea ferestrei este exprimata in octeti si nu in numar de
pachete
– Dimensiunea ferestrei este determinata de catre receptor cind
conexiunea este stabilita si este variabila in timpul transferului de
date; Fiecare mesaj ACK va include dimensiunea ferestrei pe care
receptorul este apt sa opereze in momentul respectiv al
comunicarii
   
Controlul fluxului
• Protocol de comunicare cu fereastra glisanta :
– emitatorul grupeaza pachetele intr-un buffer
– emitatorul poate transmite pachetele din fereastra fara sa receptioneze o confirmare (ACK),
dar porneste cate un cronometru (care va semnaliza depasirea unui interval de timp
prestabilit) pentru fiecare dintre pachete
- receptorul trebuie sa confirme fiecare pachet primit, indicand numarul de secventa al
ultimului octet receptionat corect
– in urma confirmarilor primite emitatorul deplaseaza fereastra (o gliseaza)
Emitator Receptor
Trimite pachetul 1
Primeste pachetul 1;
confirma (ACK 1) primirea
1 2 3 4 5 6 7 8 9 …
Fereastra Trimite pachetul 2
Trimite pachetul 3
Trimite pachetul 4
Trimite pachetul 5
1 2 3 4 5 6 7 8 9 … Primeste ACK 1
Fereastra
Poate trimite pachetul 6
Directia de deplasare a ferestrei …
   

Controlul fluxului folosind fereastra glisanta – situatii
• Pachetul 2 s-a pierdut
– emitatorul nu receptioneaza ACK 2, deci fereastra ramine pe pozitia 1
– receptorul nu primeste pachetul 2, si nu va confirma inca pachetele 3,4,5
– cronometrul emitatorului va semnaliza timpul de asteptare a confirmarii
si pachetul este retransmis
– receptorul primeste pachetul 2 si va emite confirmarea ACK 5 (secventa
de pachete 2-5 au fost receptionate cu succes) => fereastra glisanta se
deplaseaza cu patru pozitii dupa receptionarea ACK 5
• Pachetul 2 a ajuns la destinatie dar confirmarea s-a pierdut
– Emitatorul nu primeste ACK 2, dar primeste ACK 3 (toate pachetele pina
la 3 au ajuns cu succes) => emitentul deplaseaza fereastra glisanta la
pachetul 4
   

Administrarea conexiunii TCP
Ferastra glisanta asigura:
– Transmisie sigura
– Folosirea mai buna a latimii de banda => o mai
mare viteza de transmisie
– Controlul transmisiei (receptorul poate intarzia
confirmarea datelor, cunoscind memoria libera de
care dispune si dimensiunea ferestrei de
comunicare)

• Detectia erorilor & retransmiterea datelor
– Fiecare segment trimis contine un numar de secventa
(Sequence Number) indicind pozitia octetilor transmisi in cadrul
fluxului de date
– Gazda destinatar verifica numarul de secventa pentru fiecare
segment (se testeaza daca anumite segmente se pierd, sunt
duplicate sau nu sunt in ordine) si trimite inapoi pentru fiecare
segment un numar de confirmare (Acknowledgment Number),
specificind numarul de secventa al urmatorului octet care se
astepta a fi receptionat
– Segmentele pierdute sunt detectate folosindu-se un timer de
retransmisie a datelor
– Pentru detectarea erorilor se utilizeaza si checksum-uri

• Resetarea conexiunii
– Uneori conditii anormale forteaza aplicatiile sau
software-ul de retea sa distruga conexiunea
– Pentru resetarea conexiunii, o parte a comunicarii
initiaza terminarea, trimitind un segment cu bitul
RST setat
– Cealalta parte abandoneaza conexiunea, fara a se
mai transmite eventuale date ramase netransmise
– Transferul in ambele directii este oprit, buffer-ele
sunt golite


• Fortarea transmiterii datelor
– TCP poate divide fluxul de date in segmente de
dimensiuni diferite de pachetele vehiculate de aplicatii
=> eficienta transmisiei
– Uneori intervine situatia de a transmite datele fara a
se mai astepta umplerea buffer-elor (e.g., aplicatii
interactive)
– Fortarea transmiterii se realizeaza prin push: se
seteaza bitul PSH si se forteaza transmiterea
segmentelor, indiferent de starea de umplere a bufferelor

• Inchiderea conexiunii
– Conexiunile TCP fiind full-duplex, cand o aplicatie
semnaleaza ca nu mai exista date de trimis, TCP va
inchide conexiunea doar intr-o directie
• Partenerul de comunicatie poate expedia un
segment TCP cu bitul FIN setat; confirmarea
semnifica ca sensul respectiv de comunicare
este efectiv oprit
– Conexiunea este desfiintata cand ambele directii
au fost oprite

   
TCP
• Automatul finit TCP
– Stabilirea conexiunii:
• CLOSED – din aceasta stare se poate cere o deschidere activa (se
trece in SYN_SENT) sau pasiva (SYN_RCVD)
• LISTEN – se poate trimite o cerere de conexiune activa (se trece in
SYN_SENT) ori pasiva (SYN_RCVD)
– Conexiune stabilita:
• ESTABLISHED – poate incepe transmisia de date (din aceasta stare
se poate trece in CLOSE_WAIT sau FIN_WAIT_1)
– Deconectarea initiata de procesul partener
• CLOSE_WAIT, LAST_ACK, CLOSE
– Stari ce intervin in procesul de deconectare
• FIN_WAIT_1, FIN_WAIT_2, CLOSING, TIME_WAIT
   
 
• Exemple de utilizari ale TCP:
– Majoritatea protocoalelor de aplicatii:
• HTTP
• TELNET
• SMTP
• SSH
• …

• Ambele se bazeaza pe IP, utilizeaza porturi
• Unitatea de transmisie
– TCP -> Segment TCP
– UDP -> Pachet UDP

   
• UDP ofera servicii minimale de transport (efort
minim de transmisie)
TCP ofera servicii orientate-conexiune, fullduplex, sigure – pentru transportul fluxurilor
de octeti ( -> mecanism complex de transmisie)
• Utilizarea TCP sau UDP depinde de aplicatie:
 e-mail, transfer de fisiere, operare in timp-real,
transmisii multimedia in timp real, chat, …
');
INSERT INTO `cursuri` VALUES (5,'Cursul 5
Programarea in retea I
Lenuta Alboaie
adria@info.uaic.ro
https://profs.info.uaic.ro/~computernetworkscursullaboratorul.php
Cuprins
• Modelul client/server
• API pentru programarea in retea
• Socket‐uri BSD
• Modelul client/server TCP
  
Modelul client/server
Paradigme ale comunicarii in retea:
modelul client/server
apelul procedurilor la distanta (RPC)
comunicarea punct‐la‐punct (peer­to­peer – P2P)
  
Modelul client/server
• Proces server
– Ofera servicii obtinute prin retea
– Accepta (iterativ sau concurent) cereri de la 
un proces client, realizeaza un anumit serviciu
si returneaza rezultatul
• Proces client
– Initializeaza comunicarea cu serverul
– Solicita un serviciu, 
apoi asteapta raspunsul serverului
  
  

• Moduri de interactiune (via canale de comunicatie):
orientat‐conexiune – se foloseste TCP
neorientat‐conexiune – se utilizeaza UDP
• Implementare:
iterativa – fiecare cerere e tratata pe rind, secvential
concurenta – cererile sint procesate concurent
Procese copil pentru fiecare cerere de procesat
Multiplexarea conexiunii
Tehnici combinate
  
API retea
• Necesitatea existentei unui API 
pentru realizarea de aplicatii in retea
– Interfata generica pentru programare
– Suport pentru comunicatii orientate‐conexiune si
prin mesaje
– Compatibilitate cu serviciile I/O comune
– Independenta de hardware si de sistem de operare
– Suport pentru familii (suite) de protocoale multiple
– Independenta in reprezentarea adreselor
– Oferirea de servicii speciale pentru aplicatii
  

• TCP/IP nu include definirea unui API
• Se pot utiliza mai multe API‐uri 
pentru programarea aplicatiilor Internet (TCP/IP)
– Socket‐uri BSD (Berkeley System Distribution)
– TLI (Transport Layer Interface) – AT&T, XTI
– Winsock
– MacTCP
• Functii oferite: 
specificare de puncte terminale locale si la distanta, 
initiere si acceptare de conexiuni, trimitere si receptare 
de date, terminare conexiune, tratare erori
  
Cuprins
• Interfata de programare
a aplicatiilor (API) 
bazata pe socket‐uri BSD
– Caracterizare
– Creare
– Primitive
  
Socket
• Socket‐uri BSD (Berkeley System Distribution)
• Facilitate generala, independenta de hardware, 
protocol si tipul de transmitere, 
pentru comunicarea intre procese
aflate pe masini diferite, in retea
• Suporta pentru familii multiple de protocoale
– Protocolul domeniului UNIX pentru comunicatii
(locale) intre masini UNIX (e.g., uucp) 
– Protocolul domeniului Internet folosind TCP/IP
– Altele: XNS Xerox, ISO/OSI,…
• Independenta in reprezentarea adreselor
  
• Abstractiune a unui punct terminal (end­point) 
la nivelul transport
• Utilizeaza interfata de programare
I/O existenta
(similar fisierelor, pipe‐urilor, FIFO‐urilor etc.)
• Poate fi asociat cu unul/mai multe procese, 
existind in cadrul unui domeniu de comunicatie
• Ofera un API pentru programarea in retea, 
avind implementari multiple
  

Similar unui descriptor de fisier
Diferente apar la creare si la diferite operatiuni
de control al socket‐urilor
  
Socket | primitive de baza
socket() creeaza un nou punct terminal al conexiunii
bind() ataseaza o adresa locala la un socket
listen() permite unui socket sa accepte conexiuni
accept() blocheaza apelantul pina la sosirea
unei cereri de conectare (utilizata de serverul TCP)
connect() tentativa (activa) de stabilire a conexiunii
(folosita de clientul TCP)
send()/receive() trimitere/receptare de date via socket
close() elibereaza conexiunea (inchide un socket)
shutdown() inchide directional un socket
  
• Alte apeluri
– citire de date
read() / readv() / recvfrom() / recvmsg()
– trimitere de date
write() / writev() / sendto() / sendmsg()
– multiplexare I/O
select()
– administrarea conexiunii
fnctl() / ioctl() / setsockopt() / getsockopt()
getsockname() / getpeername()
  
  
Socket‐uri|creare
• Apelul de sistem (primitiva) socket()
#include <sys/types.h>
#include <sys/socket.h>
int socket (int domain, int type, int protocol)
Domeniul de comunicare:
AF_UNIX, AF_INET,
AF_ROUTE
Protocolul utilizat
pentru transmitere
(uzual: 0 pentru niv. transp.)
Modalitatea de realizare a comunicarii:
SOCK_STREAM, SOCK_DGRAM, SOCK_RAW
  
• Valoarea de retur
– Succes: descriptorul de socket creat
– Eroare: –1 
• Raportarea erorii se realizeaza via errno
– EMFILE 
– ENFILE
– EACCES
– EPROTONOSUPPORT
– ENOMEM
– ENOBUFFERS
– EINVAL
  
Socket‐uri
• Domeniul & tipul unui socket si protocoalele folosite
AF_LOCAL ≡ AF_UNIX
(din motive istorice)
AF_INET AF_INET6 AF_LOCAL AF_ROUTE
SOCK_STREAM TCP TCP Da
SOCK_DGRAM UDP UDP Da
SOCK_RAW IP IPv6 Da 

• Observatii
– Primitiva socket() aloca resursele necesare
unui punct terminal de comunicare, 
dar nu stabileste modul de adresare
– Socket‐urile ofera un mod generic de adresare
– Pentru TCP/IP trebuie specificate (adresa IP, port)
– Alte suite de protocoale pot folosi
alte scheme de adresare
• Tipuri POSIX: int8_t, uint8_t, int16_t, uint16_t, int32_t, 
uint32_t, u_char, u_short, u_int, u_long
  

• Tipuri POSIX folosite de socket‐uri: 
– sa_family_t – familia de adrese 
– socklen_t – lungimea structurii de memorare 
– in_addr_t – adresa IP (v4) 
– in_port_t – numarul de port
• Specificarea adreselor generice
struct sockaddr {
uint8_t sa_len;
sa_family_t sa_family;
char sa_data[14];
};

• Tipul sockaddr permite oricare tip de adresare
• Exemplu: folosirea socket‐urilor
pentru comunicarea dintre studenti
– Tipul de adresa: AF_STUDENTS
– Valori de adrese: 
Zaq ⇔ 1, Moko ⇔ 2, Tux ⇔ 3,…
– Initializarea structurii AF_STUDENTS
pentru a indica un anumit student: 
struct sockaddr un_stud;
un_stud.sa_family = AF_STUDENTS;
un_stud.sa_data[0] = 3;
Tux
  
• Pentru AF_INET vom avea nevoie de 
16 biti – numarul de port si de 32 biti – adresa IPv4
• Se foloseste o structura speciala: sockaddr_in
struct sockaddr_in {
uint8_t sin_len;
sa_family_t sin_family;
in_port_t sin_port;
struct in_addr sin_addr;
char sin_zero[8];
};
struct in_addr {
in_addr_t s_addr;
};

Socket‐uri
• Toate valorile stocate in sockaddr_in vor respecta
ordinea de codificare a retelei (network byte order)
sin_port un numar de port TCP/IP
sin_addr o adresa IP
• ‘h’ : host byte order ‘n’ : network byte order
• ‘s’ : short (16 biti) ‘l’ : long (32 biti)
uint16_t htons(uint16_t);
uint16_t ntohs(uint_16_t);
uint32_t htonl(uint32_t);
uint32_t ntohl(uint32_t);
  
• Pentru IPv6, se foloseste sockaddr_in6
struct sockaddr_in {
u_int16_t sin6_family; /* AF_INET6 */
u_int16_t sin6_port;
u_int32_t sin6_flowinfo;
u_int32_t sin6_scope_id;
struct in6_addr sin6_addr;
};
struct in6_addr {
unsigned char s6_addr[16];
};
  
Socket‐uri|asignarea unei adrese
• Asignarea unei adrese la un socket existent 
se realizeaza cu bind()
int bind ( int sockfd,
const struct sockaddr *myaddr,
int addrlen );
• Se returneaza:  0 succes, –1 eroare 
variabila errno contine eroarea efectiva: EBADF, 
ENOTSOCK, EADDRINUSE, EINVAL, EACCESS
const!
  
• Exemplu:
#define PORT 7000
int sd, eroare;
struct sockaddr_in adresa;
sd = socket (AF_INET, SOCK_STREAM, 0); /* TCP */
adresa.sin_family = AF_INET; /* umplerea structurii */
adresa.sin_port = htons (PORT); /* portul */
adresa.sin_addr = htonl (adresaIP); /* adresa IP */
eroare = bind (sd, (sockaddr *) &adresa, sizeof (adresa));
  
• Utilizari ale lui bind()
– Serverul doreste sa ataseze un socket la un port pre‐
stabilit (pentru a oferi servicii via acel port)
– Clientul vrea sa ataseze un socket la un port specificat
– Clientul cere sistemului de operare sa asigneze
orice port disponibil
• In mod normal, clientul nu necesita atasarea
la un port specificat
• Alegerea oricarui port liber: 
adresa.port = htons (0);
  

• Alegerea adresei IP la bind()
– Daca gazda are asignate mai multe adrese IP?
– Cum se rezolva independenta de platforma?
• Pentru a atasa un socket la adresa IP locala, se va utiliza
in locul unei adrese IP constanta INADDR_ANY
  

• Conversia adreselor IP:
int inet_aton ( void *, struct in_addr *);
ASCII “x.x.x.x” ⇒ reprezentare interna pe 32 biti
char *inet_ntoa ( struct in_addr );
reprezentare 32 biti (network byte order) 
⇒ ASCII “x.x.x.x”
vezi si functia inet_addr()
  

• Observatii:
– Pentru IPv6 in locul constantei INADDR_ANY
se va folosi – vezi antetul netinet/in.h:
serv.sin6.addr = in6addr_any;
– Functiile de conversie pentru IPv6 sunt:
inet_pton()
inet_ntop()
  
Socket‐uri|listen()
• Stabilirea modului pasiv de interactiune
– Adresa intotdeauna este cunoscuta
– Nucleul sistemului va trebui sa accepte cereri
de conectare directionate la adresa la care 
este atasat socket‐ul
3­way handshake
– Conexiunile multiple receptionate
vor fi plasate intr‐o coada de asteptare
– Se returneaza 0 = succes, –1 = eroare
int listen ( int sockfd, int backlog );
Socket TCP atasat unei adrese
Numarul
de conex.
din coada
de astept.
  

• Remarci:
– Alegerea valorii backlog depinde
de aplicatie – in mod uzual 5
– Serverele HTTP ar trebui sa specifice
o valoare backlog cit mai mare 
(din cauza incarcarii cu cereri multiple)
  
Socket‐uri|accept()
• Asteptarea conexiunilor din partea clientilor
– Cind aplicatia este pregatita pentru a trata o noua 
conexiune, va trebui sa interogam sistemul asupra 
unei alte conexiuni cu un client
– Se returneaza descriptorul de socket corespunzator 
punctului terminal al clientului sau –1 = eroare
int accept( int sockfd,
struct sockaddr* cliaddr,
socklen_t *addrlen );
Socket TCP
(mod pasiv)
• trebuie initial sa fie egal cu lungimea structurii cliaddr
• se va returna numarul de bytes folositi in cliaddr
  
Socket‐uri|connect()
• Incercarea de a stabili o conexiune cu serverul
– Stabilirea unui punct terminal (al serverului)
– Nu necesita atasarea cu bind(), sistemul
de operare va asigna o adresa locala (IP, port)
– Se incearca stabilirea unei conexiuni
3­way handshake
int connect( int sockfd,
const struct sockaddr *server,
socklen_t addrlen );
Socket TCP
Contine adresa
serverului
(IP, port)
  
Socket‐uri|connect()
• Returneaza:
– Valoarea 0 = succes
– Valoarea –1 = eroare
• EISCONN
• ETIMEDOUT
• ECONNREFUSED
• ENETUNREACH
• EADDRINUSE
• EINPROGRESS
• EADDRNOTAVAIL
• EAFNOSUPPORT
  
I/O TCP|read()
• Apelul este blocant in mod normal, 
read() returneaza doar cind exista date disponibile
• Citirea de la un socket TCP poate returna
mai putini octeti decit numarul maxim dorit
• Trebuie sa fim pregatiti sa citim cite 1 byte 
la un moment dat!
• Daca partenerul a inchis conexiunea si nu mai sunt date 
de primit, se returneaza 0 (EOF)
• Erori: EINTR – un semnal a intrerupt citirea, 
EIO – eroare I/O, EWOULDBLOCK – socket‐ul nu are date 
intr‐o citire neblocanta
int read ( int sockfd, void *buf, int max );
  
I/O TCP|write()
• Apelul este blocant in mod normal
• Pentru un socket neblocant, 
write() poate scrie mai putin de num octeti
• Erori: 
– EPIPE – scriere la un socket neconectat
– EWOULDBLOCK – nu se pot accepta date 
fara blocare, insa operatiunea este setata 
ca fiind neblocanta
int write ( int sockfd, void *buf, int num );
  
I/O TCP|exemplu
#define MAXBUF 127 /* lungime buffer citire */
char *cerere = “da-mi ceva”;
char buf[MAXBUF]; /* buffer pentru raspuns */
char *pbuf = buf; /* pointer la buffer */
int n, lung = MAXBUF;
/* nr. bytes cititi,
nr. bytes liberi in buffer */
/* trimitem cererea */
write (sd, cerere, strlen (cerere));
/* asteaptam raspunsul */
while ((n = read (sd, pbuf, lung)) > 0) {
pbuf += n;
lung -= n;
} Comunicarea dintre client si server
  
Inchiderea conexiunii|close()
• Terminarea “gratioasa” a conexiunii
• Dealocarea memoriei alocate socket‐ului
– 3­way handshake pentru inchiderea conexiunii
– Pentru procese care partajeaza acelasi socket, 
se decrementeaza numarul de referinte la acel socket; 
cind ajunge la 0, socket‐ul este dealocat
• Probleme
– Serverul nu poate termina conexiunea, 
nu stie daca si cind clientul nu va mai trimite si alte cereri
– Clientul nu poate sti daca datele au ajuns la server
int close ( int sockfd );
  
Inchiderea conexiunii|shutdown()
• Inchiderea unidirectionala
– Cind un client termina de trimis cererile, poate apela 
shutdown() pentru a specifica faptul ca nu va mai trimite 
date pe socket, fara a dealoca socket‐ul
– Serverul va primi EOF si, dupa expedierea catre client 
a ultimului raspuns, va putea inchide conexiunea
int shutdown ( int sockfd, int dir );
• 0 nu se accepta operatii de citire (SHUT_RD)
• 1 nu se accepta operatii de scriere (SHUT_WR)
• 2 nu se accepta operatii I/O
inchidere in ambele sensuri (SHUT_RDWR)
 
  
Client/server TCP|server
• Modelul unui server TCP iterativ
– Creare socket pentru tratarea conexiunilor cu clientii: socket()
– Pregatirea structurilor de date (sockaddr_in) 
– Atasarea socket‐ului la adresa locala (port): bind()
– Pregatirea socket‐ului pentru ascultarea portului
in vederea stabilirii conexiunii cu clientii: listen()
– Asteptarea realizarii unei conexiuni cu un anumit client 
(deschidere pasiva): accept()
– Procesarea cererilor clientului, folosindu‐se socket‐ul returnat
de accept(): succesiune de read()/write()
– Inchiderea (directionata) a conexiunii cu clientul: 
close(), shutdown()
  
Client/server TCP|client
• Modelul unui client TCP iterativ
– Creare socket pentru conectarea la server: socket()
– Pregatirea structurilor de date (sockaddr_in) 
– Atasarea socket‐ului: bind() – optional
– Conectarea la server (deschidere activa): connect()
– Solicitarea de servicii si receptionarea rezultatelor 
trimise de server: succesiune de write()/read()
– Inchiderea (directionata) a conexiunii cu serverul: 
close(), shutdown()
 
');
INSERT INTO `cursuri` VALUES (6,'Cursul 6
Programarea in retea (II)
Lenuta Alboaie
adria@info.uaic.ro
https://profs.info.uaic.ro/~computernetworkscursullaboratorul.php
Client/Server UDP
• Pentru socket() se va folosi SOCK_DGRAM
• Apelurile listen(), accept(), connect() nu vor mai fi
utilizate in mod uzual
• Pentru scriere de datagrame se pot folosi sendto()
sau send() (mai general)
• Pentru citire de datagrame se pot folosi recvfrom()
sau recv()
• Nimeni nu garanteaza ca datele expediate au ajuns
la destinatar sau nu sunt duplicate

    
Client/Server UDP
• Socket-urile UDP pot fi “conectate”: clientul poate folosi
connect() pentru a specifica adresa (IP, port) a punctului
terminal (serverul) – pseudo-conexiuni:
– Utilitate: trimiterea mai multor datagrame la acelasi
server, fara a mai specifica adresa serverului pentru
fiecare datagrama in parte
– Pentru UDP, connect() va retine doar informatiile despre
punctul terminal, fara a se initia nici un schimb de date
– Desi connect() raporteaza succes, nu inseamna ca
adresa punctului terminal e valida sau serverul este
disponibil

    
Client/Server UDP
• Pseudo-conexiuni UDP
– Se poate utiliza shutdown() pentru a opri
directionat transmiterea de date, dar nu
se va trimite nici un mesaj partenerului
de conversatie
– Primitiva close() poate fi apelata si pentru
a elimina o pseudo-conexiune

    
Alte primitive| I/O
#include <sys/types.h>
#include <sys/socket.h>
int send (int sockfd, char *buff, int nbytes, int flags);
int recv (int sockfd, char *buff, int nbytes, int flags);
• Pot fi folosite in cadrul comunicatiilor orientate conexiune sau pentru
pseudo-conexiuni
 Apelurile send() si recv() presupun că sunt cunoscute toate elementele
 unei asocieri, adică a fost efectuat în prealabil un apel connect()
• Primele 3 argumente sunt similare cu cele de la write(), respectiv read()
• Argumentul a patrulea este de regulă 0, dar poate avea si alte valori
care precizează condiții de efectuare a apelului
• Cele 2 apeluri returnează la execuție normală lungimea transferului în
octeți

    
Alte primitive| I/O
#include <sys/types.h>
#include <sys/socket.h>
int sendto ( int sockfd, char *buff, int nbytes, int flags,
 struct sockaddr *to, int addrlen);
int recvfrom (int sockfd, char *buff, int nbytes, int flags,
 struct sockaddr *from, int *addrlen);
• Sunt folosite pentru comunicatii neorientate conexiune
• La sendto() si recvfrom() elementele pentru identificarea
nodului la distanță se specifică în apel, prin ultimele 2
argumente
• Cele 2 apeluri returnează la execuție normală lungimea
transferului în octeți

    
Alte primitive| I/O
 #include <sys/uio.h>
 ssize_t readv (int fd, const struct iovec *iov, int iovcnt);
 ssize_t writev (int fd, const struct iovec *iov, int iovcnt);
– Mai generale decit read()/write(), ofera posibilitatea de a
lucra cu date aflate in zone necontigue de memorie
 #include <sys/types.h>
 #include <sys/socket.h>
ssize_t recvmsg (int s, struct msghdr *msg, int flags);
ssize_t sendmsg (int s, const struct msghdr *msg, int flags);
– Receptioneaza/transmite mesaje extragindu-le din
structura msghdr

    
Exemplu de server/client UDP

DEMO
Server UDP Client UDP
    
Alte primitive|informatii
• getpeername() – returneaza informatii despre celalalt capat al
conexiunii
#include <sys/socket.h>
int getpeername (int sockfd, struct sockaddr *addr,
 socklen_t *addrlen);
• getsockname() – returneaza informatii asupra socketului(local)
specificat –> (adresa la care este atasat)
#include <sys/socket.h>
#include <sys/types.h>
int getsockname( int sockfd, struct sockaddr * addr,
 socklen_t * addrlen);

    
Programare retea avansata
• Optiuni atasate socket-urilor
– getsockopt() si setsockopt()
• Multiplexare I/O

    
Primitive|optiuni
• Optiuni atasate socket-urilor
– Atribute utilizate pentru consultarea sau
modificarea unui comportament, general ori
specific unui protocol, pentru unele (tipuri de)
socket-uri
– Tipuri de valori:
• Booleene (flag-uri)
• Mai “complexe”:
int, timeval, in_addr, sock_addr, etc

    
Primitive|optiuni
• getsockopt() – consultarea
optiunilor
 #include <sys/types.h>
#include <sys/socket.h>
int getsockopt (int sockfd, int level, int optname, void *optval,
 socklen_t *optlen);

Level - indica daca optiunea este generala sau specifica
unui protocol
Level - indica daca optiunea este generala sau specifica
unui protocol
Numele, valoarea si lungimea
optiunii
Exemplu:
len = sizeof (optval);
getsockopt (sockfd, SOL_SOCKET, SO_REUSEADDR, &optval, &len);
    
Primitive|optiuni
• setsockopt() – setarea
optiunilor
 #include <sys/types.h>
#include <sys/socket.h>
int setsockopt (int sockfd, int level, int optname, void *optval,
socklen_t *optlen);
Returneaza:
– 0 = succes
– -1 = eroare: EBADF, ENOTSOCK, ENOPROTOOPT,...

Numele, valoarea si lungimea
optiunii
    
Primitive|optiuni
Optiuni generale
- Independente de protocol
- Unele suportate doar de anumite tipuri de socketuri
(SOCK_DGRAM, SOCK_STREAM)
– SO_BROADCAST
– SO_ERROR
– SO_KEEPALIVE
– SO_LINGER
– SO_RCVBUF, SO_SNDBUF
– SO_REUSEADDR
- SO_OOBINLINE
- 
[http://www.beej.us/guide/bgnet/output/html/multipage/setsockoptman.html]
    
Primitive|optiuni
• SO_BROADCAST (boolean)
– Activeaza/dezactiveaza trimiterea de date in regim broadcast
– Utilizata doar pentru SOCK_DGRAM
– Previne anumite aplicatii sa nu trimita in mod neadecvat broadcast-uri
• SO_ERROR (int)
– Indica eroarea survenita (similara lui errno)
– Poate fi folosita cu primitiva getsockopt()
• SO_KEEPALIVE (boolean)
– Folosita pentru SOCK_STREAM
– Se va trimite o informatie de proba celuilalt punct terminal daca nu s-a realizat
schimb de date timp indelungat
– Utilizata de TCP (e.g., telnet): permite proceselor sa determine daca
procesul/gazda cealalta a picat

    
Primitive|optiuni
• SO_LINGER (struct linger)
– Controleaza daca si dupa cit timp un apel de inchidere a conexiunii va
astepta confirmari(ACK-uri) de la punctul terminal
– Folosita doar pentru socket-uri orientate-conexiune pentru a ne asigura ca
un apel close() nu va returna imediat
– Valorile vor fi de tipul:
struct linger {
int l_onoff; /* interpretat ca boolean */
int l_linger; /* timpul in secunde*/
}
– l_onoff = 0: close() returneaza imediat, dar datele netrimise sunt transmise
– l_onoff !=0 si l_linger=0: close() returneaza imediat si datele netrimise sunt
sterse
– l_onoff!=0 si l_linger !=0: close() nu returneaza pina cind datele netrimise
sunt transmise (sau conexiunea este inchisa de sistemul remote)

    
Primitive|optiuni
• SO_LINGER – Exemplu
int result;
struct linger lin;
lin.l_onoff=1 ; /*0 -> l_linger este ignorata */
lin.l_linger=1; /* 0 = pierderea datelor; nonzero= asteptare pina
 se trimit datele */
result= setsockopt( sockfd,
 SOL_SOCKET,
 SO_LINGER,
 &lin, sizeof(lin));

    
Primitive|optiuni
• SO_RCVBUF/SO_SNDBUF (int)
– Modifica dimensiunile buffer-elor de receptionare sau de
trimitere a datelor
– Utilizate pentru SOCK_DGRAM si SOCK_STREAM
• Exemplu:
int result; int buffsize = 10000;
result= setsockopt (s, SOL_SOCKET, SO_SNDBUF, &buffsize,
sizeof(buffsize));

    
Primitive|optiuni
• SO_REUSEADDR – (boolean)
– Permite atasarea la o adresa(port) deja in uz
 nu incalca regula de asociere unica realizata de bind
– Folosita pentru ca un socket pasiv sa poata folosi un port deja utilizat de alte
procese

Stare 1
Stare 2
• Daca daemon-ul care asculta la portul 2000 este killed, incercarea de restart a
daemon-ului va esua daca SO_REUSEADDR nu este setat
Exemplu
int optval = 1;
setsockopt (sockfd, SOL_SOCKET, SO_REUSEADDR, &optval, sizeof(optval));
bind (sockfd, &sin, sizeof(sin) );
    
Primitive|optiuni
Optiuni specifice protocolului IP
• IP_TOS permite setarea cimpului “Type Of Service”
(e.g., ICMP) din antetul IP
• IP_TTL permite setarea cimpului “Time To Live” din
antetul IP
Exista si optiuni pentru IPv6.(RFC 2460,2462)
-IPV6_V6ONLY, …

    
Primitive|optiuni
Optiuni specifice protocolului TCP
• TCP_KEEPALIVE seteaza timpul de asteptare daca
SO_KEEPALIVE este activat
• TCP_MAXSEG stabileste lungimea maxima a unui segment (nu
toate implementarile permit modificarea acestei valori de catre
aplicatie)
• TCP_NODELAY seteaza dezactivarea algoritmului Nagle
(reducerea numarului de pachete de dimensiuni mici intr-o
retea WAN; TCP va trimite intotdeauna pachete de marime
maxima, daca este posibil) – utilizata pentru generatori de
pachete mici (e.g., clienti interactivi precum telnet)

    
Multiplexare I/O
• Posibilitatea de a monitoriza mai multi descriptori I/O
– Un client TCP generic (e.g., telnet)
– Un client interactiv (e.g., ftp, scp, browser Web,…)
– Un server care poate manipula mai multe protocoale (TCP si
UDP) simultan
– Rezolvarea unor situatii neasteptate (i.e. caderea unui server
in mijlocul comunicarii)
• Exemplu: datele citite de la intrarea standard trebuie scrise la
un socket, iar datele receptionate prin retea trebuie afisate la
iesirea standard

    
Multiplexare I/O| solutii
• Utilizarea mecanismului neblocant folosind primitivele
fnctl() / ioctl()
• Utilizarea mecanismului asincron
• Folosirea alarm() pentru a intrerupe apelurile de
sistem lente
• Utilizarea unor procese/thread-uri multiple
(multitasking)
• Folosirea unor primitive care suporta verificarea
existentei datelor de intrare de la descriptori de citire
multipli: select() si poll()

    
Multiplexare I/O| solutii
• Utilizarea mecanismului neblocant folosind primitiva
fnctl()
– Se seteaza apelurile I/O ca neblocante
int flags;
flags = fcntl ( sd, F_GETFL, 0 );
fcntl( sd, F_SETFL, flags | O_NONBLOCK);
– Daca nu sunt date disponibile un apel read() va
intoarce -1 sau daca nu este suficient spatiu in
buffer un apel write() va intoarce -1 (cu eroarea
EAGAIN)

    
Multiplexare I/O| solutii
Utilizarea mecanismului neblocant folosind primitiva ioctl()
#include <sys/ioctl.h>
ioctl (sd, FIOSNBIO, &arg);
Daca socketul este in mod neblocant, urmatoarele apeluri sunt afectate
astfel:
– accept() – daca nu este prezenta nici o cerere, accept() returneaza cu
eroarea EWOULDBLOCK
– connect() – daca conexiunea nu se poate stabili imediat, connect()
returneaza cu eroarea EINPROGRESS
– recv() – daca nu exista date de primit, recv() returneaza -1 cu eroarea
EWOULDBLOCK
– send() – daca nu exista spatiu in buffer pentru ca datele sa fie transmise,
send() returneaza -1 cu eroarea EWOULDBLOCK

-arg este un pointer la un int
-Daca int are valoare 0, socketul este setat in mod blocant
-Daca int are valoare 1, socketul este setat in mod neblocant
-arg este un pointer la un int
-Daca int are valoare 0, socketul este setat in mod blocant
-Daca int are valoare 1, socketul este setat in mod neblocant
    
Multiplexare I/O| solutii
Trimiterea si receptarea datelor in mod asincron
– Problema: In conditiile in care socket-urile sunt
create implicit in mod blocant (I/O), cum s-ar putea
instiinta procesul atunci cind se intimpla “ceva” la
un socket?
– Socket-urile asincrone permit trimiterea unui
semnal (SIGIO) procesului
– Socket-urile asincrone permit utilizatorului
separarea “procesarilor socket” de alte procesari
– Generarea semnalului SIGIO este dependenta de
protocol

    
Trimiterea si receptarea datelor in mod asincron
• Pentru TCP semnalul SIGIO poate aparea cind:
– Conexiunea a fost complet stabilita
– O cerere de deconectare a fost initiata
– Cererea de deconectare a fost realizata complet
– shutdown() pentru o directie a comunicatiei
– Au aparut date de la celalalt punct terminal
– Datele au fost trimise
– Eroare

Multiplexare I/O| solutii
    
Trimiterea si receptarea datelor in mod asincron
– Pentru UDP semnalul SIGIO apare cind:
• Se receptioneaza o datagrama
• Apare o eroare
– Putem permite proceselor sa realizeze alte
activitati si sa monitorizeze transferurile UDP

Multiplexare I/O| solutii
    
Trimiterea si receptarea datelor in mod asincron
• Implementarea
– Socket-ul trebuie setat ca fiind asincron
#include <sys/unistd.h>
#include <sys/fcntl.h>
int fcntl (int s, int cmd, long arg)
Exemplu:
int sd = socket(PF_INET, SOCK_STREAM, 0);
fcntl (sd, F_SETFL, O_ASYNC); /* setarea asincrona I/O */

Multiplexare I/O| solutii
    
Multiplexare I/O| solutii
• Utilizarea alarmelor
while(…){
signal (SIGALRM, alarmHandler);
alarm (MAX_TIME);
read (0,…);
signal (SIGALRM, alarmHandler);
alarm (MAX_TIME);
read (tcpsock,…);...
}

Functie scrisa de
programator
    
Multitasking
Servere concurente – per-client process
Servere concurente pre-forked
– Se creeaza un numar de procese copil imediat la initializare, fiecare proces
liber interactionind cu un anumit client
Servere concurente pre-threaded
– Ca mai sus, dar se folosesc thread-uri (fire de executie) in locul proceselor
(vezi POSIX threads –pthread.h)
– Exemplu: serverul Apache
Probleme:
– Numarul de clienti mai mare decit numarul de procese/thread-uri
– Numarul de procese/thread-uri prea mare fata de numarul de clienti
– OS overhead
..... (curs viitor)

    
Multiplexare I/O| solutii
Probleme care apar:
• Folosind apeluri neblocante, se utilizeaza intens
procesorul
• Pentru alarm(), care este valoarea optima a
constantei MAX_TIME?

    
Multiplexarea I/O|select()
• Permite utilizarea apelurilor blocante pentru un set de descriptori (fisiere, pipeuri, socket-uri,…)
• Suspenda programul pana cand descriptori din liste sunt pregatiti de operatii de
I/O
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>
 int select (int nfds,
fd_set *readfds,
fd_set *writefds,
fd_set *exceptfds,
struct timeval *timeout);

Multimea
descriptorilor
de citire,
scriere,
exceptie
Multimea
descriptorilor
de citire,
scriere,
exceptie
Timpul de asteptare
Valoarea maxima a
descript. plus 1
    
Multiplexarea I/O|select()
Manipularea elementelor multimii de descriptori (tipul fd_set) se
realizeaza folosindu-se macrourile:

FD_ZERO (fd_set *set); Sterge multimea de descriptori din
set.
FD_SET (int fd, fd_set *set); Adauga descriptorul fd in multimea
set.
FD_CLR (int fd, fd_set *set); Sterge descriptorul fd din multimea
set.
FD_ISSET(int fd, fd_set *set); Testeaza daca descriptorul fd
apartine sau nu multimii set. 
    
Multiplexarea I/O|select()
Pentru timpul de asteptare se foloseste structura definita in
sys/time.h:
struct timeval {
long tv_sec;/* secunde*/
long tv_usec;/* microsecunde*/
}
• Daca timeout este NULL, select() va returna imediat
• Daca timeout este !=0 specifica intervalul de timp in care
select() va astepta

    
Multiplexarea I/O|select()
Un descriptor de socket este gata de citire daca:
• Exista octeti receptionati in buffer-ul de intrare (se
poate face read() care va returna >0)
• O conexiune TCP a receptionat FIN (read() returneaza
0)
• Socket-ul e socket de ascultare si nr. de conexiuni
complete este nenul (se poate utiliza accept() )
• A aparut o eroare la socket (read() returneaza –1, cu
errno setat) – erorile pot filtratate via getsockopt() cu
optiunea SO_ERROR

    
Multiplexarea I/O|select()
Un descriptor de socket este gata de scriere daca:
– Exista un numar de octeti disponibili in buffer-ul de
scriere (write() va returna > 0)
– Conexiunea in sensul scrierii este inchisa
(incercarea de write() va duce la generarea
SIGPIPE)
– A aparut o eroare de scriere (write() returneaza –1,
 cu errno setat) – erorile pot fitratate via
 getsockopt() cu optiunea SO_ERROR

    
Multiplexarea I/O|select()
• Un descriptor de socket este gata de exceptie
daca:
– Exista date out-of-band sau socket-ul este
marcat ca out-of-band (curs viitor optional)
–Daca capatul remote a socket-ului TCP a fost
inchis in timp ce date erau pe canal;
urmatoarea operatie de read/write va
intoarce ECONNRESET

    
Multiplexarea I/O|select()
select() poate returna
– Numarul descriptorilor pregatiti pentru o operatiune de
citire, scriere sau exceptie
– Valoarea 0 – timpul s-a scurs, nici un descriptor nu este gata
– Valoarea –1 in caz de eroare
Utilizarea lui select() – pasii generali:
– Declararea unei variabile de tip fd_set
– Initializarea multimii cu FD_ZERO()
– Adaugarea cu FD_SET() a fiecarui descriptor dorit a fi
monitorizat
– Apelarea primitivei select()
– La intoarcerea cu succes, verificarea cu FD_ISSET() a
descriptorilor pregatiti pentru I/O

    

 Demo
Exemplu de utilizare a
primitivei select()
    
Socket-uri BSD|utilizare
• Serviciile Internet (serviciile folosesc socket-urile
pentru comunicarea intre host-uri remote)
– Exemplu de aplicatii distribuite
• World Wide Web
• Accesul remote la o baza de date
• Distribuirea de task-uri mai multor hosturi
• Jocuri on-line
• …

    
Socket-uri BSD|critici
API-ul bazat pe socket-uri BSD are o serie de limitari:
– Are o complexitate ridicata, deoarece a fost proiectata sa
suporte familii de protocoale multiple (dar rar folosite in
practica)
– Nu este portabila (unele apeluri/tipuri au alte
denumiri/reprezentari pe alte platforme; numele fisierelor -
antet.h depind de sistem)
– Exemplu: la WinSock descriptorii de socket sunt pointeri,
 in contrast cu implementarile Unix care folosesc intregi
');
INSERT INTO `cursuri` VALUES (7,'Cursul 7
Programarea in retea (III)
Lenuta Alboaie
adria@info.uaic.ro
https://profs.info.uaic.ro/~computernetworkscursullaboratorul.php
Cuprins
• Primitive I/O - discutii
• Server concurent UDP
• TCP sau UDP – aspecte
• Instrumente
• Alternative de proiectare si
implementare al modelului
client/server TCP

Primitive I/O
• Citire de date
– read() / recv() / readv() / recvfrom()/ recvmsg()
• Trimitere de date
– write() / send() / writev() / sendto()/ sendmsg()

Alte primitive| I/O
#include <sys/uio.h>
ssize_t readv (int filedes, const struct iovec *iov, int iovcnt);
ssize_t writev (int filedes, const struct iovec *iov, int iovcnt);
struct iovec
{
void *iov_base; /* adresa de start a bufferului */
size_t iov_len; /* dimensiunea bufferului */
};
Mai generale decit read()/write(), ofera posibilitatea de a
transmite date aflate in zone necontigue de memorie
Cele 2 apeluri returneaza la execuție normala lungimea
transferului in octeti

     
Alte primitive| I/O
#include <sys/socket.h>
ssize_t recvmsg (int sockfd, struct msghdr *msg, int flags);
ssize_t sendmsg (int sockfd, struct msghdr *msg, int flags);
Ambele functii au majoritatea optiunilor incorporate in
structura msghrd
Cele mai generale functii I/O; apelurile
read/readv/recv/recvfrom pot fi inlocuite de recvmsg
Cele 2 apeluri returnează la execuție normală lungimea
transferului în octeți; -1 in caz de eroare

     
Alte primitive| I/O
Comparatie intre primitivele I/O:

Server UDP | situatii
Majoritatea serverelor UDP sunt iterative
– Server UDP care citeste cererea clientului,
proceseaza cererea, trimite raspunsul si termina
cu acel client
– Daca este nevoie de schimb de datagrame
multiple cu clientul?
Server UDP concurent
- daca elaborarea raspunsului ia mult timp serverul
poate crea (fork()) un proces copil care va rezolva
cererea

     
Server UDP | situatii
Server UDP concurent
• Server UDP care schimba datagrame multiple cu un client
– Problema: Doar un numar de port este cunoscut de client
ca fiind un port “wellknown”
– Solutia: serverul creaza un socket nou pentru fiecare
client, si il ataseaza la un port “efemer”, si utilizeaza acest
socket pentru toate raspunsurile.
• Obligatoriu clientul trebuie sa preia din primul raspuns
al serverului noul numar de port si sa faca urmatoarele
cereri la acel port
– Exemplu: TFTP - Trivial File Transfer Protocol

     
Server concurent UDP
– TFTP utilizeaza UDP si portul 69


     
TCP sau UDP – discutii
Aspecte privind utilizarea UDP:
- UDP suporta broadcasting si multicasting
- UDP nu are nevoie de un mecanism de stabilire a conexiunii
- Minimul de timp necesar unei tranzactii UDP cerere-raspuns
este: RRT(Round Trip Time) + SPT (server processing time)
Aspecte privind utilizarea TCP:
- TCP suporta point-to-point
- TCP este orientat conexiune
- Ofera siguranta si asigura transmiterea in ordine a datelor;
- Ofera mecanisme de control al fluxului si control al congestiei
- Minimul de timp necesar unei tranzactii TCP cerere-raspuns
daca se creaza o noua conexiune este: 2 *RRT + SPT
     
TCP sau UDP – discutii
Folosirea UDP , respectiv TCP – recomandari
• UDP trebuie folosit pentru aplicatii multicast sau
broadcast
Controlul erorilor trebuie (eventual) adaugat la nivelul
serverului sau clientului
• UDP poate fi folosit pentru operatii de cerere-raspuns
simple; erorile trebuie tratate la nivelul aplicatiei
Exemple: streaming media, teleconferinte, DNS

     
TCP sau UDP – discutii
Folosirea UDP , respectiv TCP – recomandari
• TCP trebuie folosit pentru bulk data transfer (e.g.
transfer de fisiere)
– S-ar putea folosi UDP?  Reinventam TCP la nivelul
aplicatiei!
Exemple: HTTP (Web), FTP (File Transfer Protocol),
Telnet, SMTP

    
Instrumente
• Multe sisteme UNIX ofera facilitatea de “system call
tracing ”
     
Instrumente
• Programe de test de dimensiuni reduse
• Instrumente:
– tcpdump – majoritatea versiunilor de Unix
• Ofera informatii asupra pachetelor din retea
• http://www.tcpdump.org/
– snoop – Solaris 2.x
– lsof
• Identifica ce procese au un socket deschis la o adresa IP sau port specificat
– netstat

Instrumente
• Instrumente:
– tcptrack

     
Alternative de proiectare si implementare al modelului client/server TCP
 
Fire de executie| Necesitate
• fork() poate fi un mecanism costisitor
– implementarile curente folosesc mecanismul copyon-write
• IPC (Inter-Process Comunication) necesita trimiterea
informatiei intre parinte si copil dupa fork()

     
Fire de executie| Caracteristici
• Firele de executie (threads) sunt numite si
lightweight processes (LWP)
• Pot fi vazute ca un program aflat in executie fara
spatiu de adresa proprie

     
Procese, Fire de executie| Comparatii
• Exemplu: Costurile asociate crearii si managementului
proceselor (50.000) este mai mare decat in cazul firelor
de executie(50.000)

Platform
fork() pthread_create()
user sys user sys
AMD 2.4 GHz Opteron (8cpus/node) 2.2 15.7 0.3 1.3
IBM 1.9 GHz POWER5 p5-575
(8cpus/node) 30.7 27.6 0.6 1.1
IBM 1.5 GHz POWER4 (8cpus/node)
48.6 47.2 1.0 1.5
INTEL 2.4 GHz Xeon (2 cpus/node)
1.5 20.8 0.7 0.9
INTEL 1.4 GHz Itanium2 (4 cpus/node) 1.1 22.2 1.2 0.6
     
Fire de executie| Implementare
• Pthreads (POSIX Threads) standard ce
defineste un API pentru crearea si manipularea
firelor de executie
– FreeBSD
– NetBSD
– GNU/Linux
– Mac OS X
– Solaris
• Pthread API pentru Windows – pthreads-w32

     
Fire de executie| Primitive de baza
#include <pthread.h>
int pthread_create(
pthread_t *tid,
const pthread_attr_t *attr,
void *(*func) (void *),
void *arg);
Returneaza: 0 in caz de succes
 o valoare Exxx pozitiva in caz de eroare

pthread_t (-> adeseori un unsigned int)
(Identificatorul thread-ului)
pthread_t (-> adeseori un unsigned int)
(Identificatorul thread-ului)
Structura ce specifica atributele noului fir
creat (e.g. dimensiunea stivei, prioritatea,
NULL = comportamentul implicit )
Structura ce specifica atributele noului fir
creat (e.g. dimensiunea stivei, prioritatea,
NULL = comportamentul implicit )
Referinta la functia ce va fi executata
de thread
Referinta la functia ce va fi executata
de thread
Argumentul catre thread ce este
transmis functiei
Argumentul catre thread ce este
transmis functiei
     
Fire de executie| Primitive de baza
#include <pthread.h>
int pthread_join(
pthread_t *tid,
void **status );
- Realizeaza asteptarea terminarii unui anumit thread
Returneaza: 0 in caz de succes
o valoare Exxx pozitiva in caz de eroare
24Identificatorul Identificatorul thread-ului
… va stoca valoarea de return a threadului (un pointer la un obiect)
… va stoca valoarea de return a threadului (un pointer la un obiect)
     
Fire de executie| Primitive de baza
#include <pthread.h>
pthread_t pthread_self();
Returneaza: ID-ul thread-ului care a apelat primitiva

Identificatorul Identificatorul thread-ului
     
Fire de executie| Primitive de baza
#include <pthread.h>
int pthread_detach(pthread_t tid);
Thread-urile pot fi:
– joinable: cind thread-ul se termina, ID-ul si codul de iesire sunt pastrate
pina cand se apeleaza pthread_join() <– comportament implicit
– detached: cand thread-ul se termina toate resursele sunt eliberate
Returneaza: 0 in caz de succes
 o valoare Exxx pozitiva in caz de eroare
Exemplu: pthread_detach(pthread_self());

Identificatorul Identificatorul thread-ului
     
Fire de executie| Primitive de baza
#include <pthread.h>
void pthread_exit(void*status);
- Terminarea unui thread
Thread-urile se pot termina:
– Functia executata de thread returneaza (Obs. Valoarea de
return este void * si va reprezenta codul de iesire a threadului )
– Daca functia main a procesului returneaza sau oricare din
thread-uri a apelat exit(), procesul se termina

     
Fire de executie|Exemplu
Exemplu de server TCP concurent care nu foloseste fork()
pentru a deservi clientii, ci foloseste thread-uri
Obs. Compilarea: gcc –lpthread server.c sau
 gcc server.c –lpthread
     
Alternative de proiectare al modelului
client/server TCP
• Client TCP - modelul uzual
– Aspecte:
• Atat timp cat este blocat asteptind date de la
utilizator, nu sesizeaza evenimentele de retea
(e.g. peer close())
• Functioneaza in modul “stop and wait”
• “batch processing”

     
Alternative de proiectare al modelului
client/server TCP
• Client TCP – utilizind select()
– Clientul este notificat de evenimentele din retea in timp ce
asteapta date de intrare de la utilizator

Aspecte:
• Apelul write() poate fi blocant daca buffer-ul de la socket-ul
emitator este plin
Daca peer-ul trimite date, read() returneaza o
valoare >0;
Daca peer-ul TCP trimite FIN, socket-ul devine
“citibil” si read() intoarce 0;
Daca peer-ul trimite RST (peer-ul a cazut sau a
rebootat), socket-ul devine “citibil” si read()
intoarce -1;
RST date FIN
error EOF
date sau
EOF
stdin
socket
client
select()
     
Alternative de proiectare al modelului
client/server TCP
• Client TCP – utilizind select() si operatii I/O
neblocante
– Aspecte:
• Implementare complexa => cand sunt necesare
operatii I/O neblocante se recomanda utilizare
de procese (fork()) sau de thread-uri (vezi slideurile urmatoare)

     
Alternative de proiectare al modelului
client/server TCP
• Client TCP – utilizind fork()
– Mecanismul de functionare:
• exista doua procese
– Un proces face managementul datelor client-server
– Un proces face managementul datelor server-client

Parintele si copilul
partajeaza acelasi socket
Parintele si copilul
partajeaza acelasi socket
     
Alternative de proiectare al modelului
client/server TCP
• Client TCP – utilizind pthread()
– Mecanismul de functionare:
• exista doua fire de executie
– Un fir de executie face managementul datelor clientserver
– Un fir de executie face managementul datelor
server-client

server
copyto
thread
main
thread
pthread_create
stdin
stdout
client
     
Alternative de proiectare al modelului
client/server TCP
• Comparatie a timpilor de executie a clientilor TCP cu
arhitecturile client discutate

• Obs. Masuratoarea s-a realizat folosindu-se comanda time
pentru implementari client/server echo
Tip client TCP Timp executie
(secunde)
Modelul uzual (stop-and-wait) …
Modelul folosind select si I/O blocante 12.3
Modelul folosind select si I/O neblocante 6.9
Modelul folosind fork() 8.7
Modelul folosind thread-uri 8.5
[Unix Network Programming, R. Stevens B.
Fenner, A. Rudoff - 2003
     
Alternative de proiectare al modelului
client/server TCP
• Server TCP – iterativ
– Se realizeaza procesarea completa a cererii
clientului inainte de a deservi urmatorul client
Aspecte:
– Sunt destul de rar intilnite in implementarile reale
– Un astfel de server serveste foarte rapid un client

     
Alternative de proiectare al modelului
client/server TCP
• Server TCP – cate un proces copil pentru fiecare client
• Serverul deserveste clintii in mod simultan
• Este des intilnit in practica
– Exemplu de mecanism folosit pentru distribuirea
cererilor: DNS round robin
Aspecte:
– Crearea fiecarui copil (fork()) pentru fiecare client
consuma mult timp de CPU

     
Alternative de proiectare al modelului
client/server TCP
• Server TCP – preforking; fara protectie pe accept()
– Serverul creaza un numar de procese copil cand este pornit, si apoi
acestia sunt gata sa serveasca clientii

Aspecte
• Daca numarul de clienti este mai mare decat numarul de procese copil
disponibile, clientul va resimti o “degradare” a raspunsului in raport cu
factorul timp
• Acest timp de implementare merge pe sisteme ce au accept() primitiva de
sistem
     
Alternative de proiectare al modelului
client/server TCP
• Server TCP – preforking; cu blocare pentru protectia accept()
Implementare:
– Serverul creaza un numar de procese copil cand este pornit, si
apoi acestia sunt gata sa serveasca clientii
– Se foloseste un mecansim de blocare (e.g. fcntl()) a apelului
primitivei accept(), si doar un singur proces la un moment dat
va putea apela accept(); procesele ramase vor fi blocate pina
vor putea obtine accesul
• Exemplu: Apache (http://www.apache.org) foloseste tehnica de
preforking

     
Alternative de proiectare al modelului
client/server TCP
• Server TCP – preforking; cu “transmiterea” socket-ului conectat
Implementare:
• Serverul creaza un numar de procese copil cand este pornit, si
 apoi acestia sunt gata sa serveasca
 clientii
Aspecte:
Procesul parinte trebuie sa aiba evidenta actiunilor proceselor
fii => o complexitate mai mare a implementarii
• Procesul parinte este cel care
 apeleaza accept() si “transmite”
 socket-ul conectat la un copil
soketpair()
     
Alternative de proiectare al modelului
client/server TCP
• Server TCP – cate un thread pentru fiecare client
Implementare:
Thread-ul principal este blocat la apelul lui accept() si de fiecare
data cind este acceptat un client se creaza (pthread_create())
un thread care il va servi

Aspecte:
Aceasta implementare este in general mai rapida decat cea mai
rapida versiune de server TCP preforked
DEMO (Slide 28) 
     
Alternative de proiectare al modelului
client/server TCP
• Server TCP – prethreaded; cu blocare pentru protectia accept()
Implementare:
– Serverul creaza un numar de thread-uri cand este pornit, si
apoi acestea sunt gata sa serveasca clientii
– Se foloseste un mecansim de blocare (e.g. mutex lock) a
apelului primitivei accept(), si doar un singur thread la un
moment dat va apela accept();
 Obs. Thread-urile nu vor fi blocate in apelul accept()

     
Alternative de proiectare al modelului
client/server TCP
• Server TCP – prethreaded; cu “transmiterea” socket-ului conectat
Implementare:
Serverul creaza un numar de thread-uri cand este pornit, si apoi
acestia sunt gata sa serveasca clientii
Procesul parinte este cel care apeleaza accept() si “transmite”
socket-ul conectat la un thread disponibil
Obs. Deoarece thread-urile si descriptorii sunt in cadrul aceluiasi
proces ,“transmiterea” socket-ului conectat inseamna de fapt ca
thread-ul vizat sa stie numarul descriptorului
  
Alternative de proiectare al modelului
client/server TCP| Discutii
• Daca serverul nu este foarte solicitat, varianta traditionala de server
concurent ( un fork() per client) este utilizabila
• Crearea unei multimi de procese copil (eng. pool of children) sau
multimi de thread-uri (eng. pool of threads) este mai eficienta din
punct de vedere al factorului timp; trebuie avut grija la monitorizarea
numarului de procese libere, la cresterea sau descresterea acestui
numar a.i. clientii sa fie serviti in mod dinamic
• Mecanismul prin care procesele copil sau thread-urile pot apela
accept() este mai simplu si mai rapid decit cel in care thread-ul
principal apeleaza accept() si apoi “transmite” descriptorul proceselor
copil sau thread-urilor.
• Aplicatiile ce folosesc thread-uri sunt in general mai rapide decat daca
utilizeaza procese, dar alegerea depinde de ce ofera SO sau de specificul problemei

');
INSERT INTO `cursuri` VALUES (8,'Cursul 8
Sistemul numelor de domenii
https://profs.info.uaic.ro/~computernetworkscursullaboratorul.php
Lenuta Alboaie (adria@info.uaic.ro)
Andrei Panu (andrei.panu@info.uaic.ro)
      
Cuprins
• Domain Name System (DNS)
• Caracterizare
•Organizare
• Configurare
• Comenzi, Primitive
•IDN
  
DNS
• Adresele IP (de ex. 85.122.23.145,
2001:0db8:0001:0000:0000:0ab9:C0A8:0102)
sunt dificil de memorat
• Se utilizeaza un sistem al numelor de domenii
pentru a translata adresele IP in nume de
domenii si invers
• Numele de domenii se organizeaza in ierarhii
• RFC 1034, 1035, 1123, 2181 3
      
DNS| organizare
• Initial: /etc/hosts – perechi (nume, IP)
– Probleme de scalabilitate
• Actual: DNS consta dintr-o schema ierarhica de
nume de domenii si dintr-un sistem de baze de
date distribuite ce implementeaza aceasta
schema de nume

DNS| Tipuri de domenii
• Primare (Top Level Domains – TLD)
– pentru Infrastructura Internet – un singur domeniu .arpa ARPA
(Address and Routing Parameter Area)
• “Changes to the .arpa zone must be coordinated manually with IANA”
– State (ccTLD) – coduri de state: .ro, .fr, .jp, …
– IDN ccTLD (Internationalized Country Code Top-Level Domains)
– Generice: .biz, .com, .info, .name, .net, .org, .pro
– Sponsorizate: .aero, .edu, .gov, .int, .jobs, .mil, .tel
– Rezervate: .example, .invalid, .localhost, .test
– Pseudo-domenii: .bitnet, .local, .root, .uucp etc.
https://www.iana.org/domains/root/db/ 6
http://例子.测试 http://example.test
      

• Domeniu de nume
– Subarbore al arborelui de domenii
– Nu trebuie sa respecte topologia retelei fizice
• Sub-domenii:
– intreaga cale de nume nu depaseste 255 de
caractere
• Nume de calculatoare (gazde)

DNS| organizare
• Reguli de alocare a numelor de domenii:
– Fiecare domeniu controleaza cum sunt alocate
subdomeniile sale
– Pentru a crea un nou subdomeniu, se cere
permisiunea domeniului in care va fi inclus (un
domeniu de la un anumit nivel va avea o autoritate)
– Atribuirea de nume de domenii respecta granitele
organizationale, nu pe cele ale retelelor
– Un anumit nivel din ierarhia de niveluri poate fi
controlat de mai multe servere

• Servere de nume (name servers)
– Teoretic, un singur server de nume poate contine
intreaga baza de date DNS si poate raspunde
tuturor cererilor
• Probleme: incarcarea si “single point of failure”
– Spatiul de nume DNS se divide in zone nesuprapuse

• Servere de nume (name servers)
Exemplu: O posibila impartire a spatiului de
nume DNS in zone

• Servere de nume (name servers)
– Exista un server primar (primary/authoritative
name server) care deserveste un anumit domeniu
si, eventual, mai multe servere secundare
continand baze de date replicate
– TCP se utilizeaza pentru replicarea DNS
– UDP pentru interogari (lookups)

• Client DNS
– Denumit resolver, trimite un pachet UDP serverului
DNS, care cauta numele si returneaza adresa IP

• Exemplu de implementari ale serverului de
nume: BIND (Berkeley Internet Name Domain),
MSDNS, PowerDNS etc.
• Ca resolver (client) interactiv, se poate folosi de
exemplu una dintre comenzile: nslookup, host
sau dig.

DNS| interogari
• Interogari:
– Recursiva – daca un server DNS nu cunoaste adresa
pentru numele solicitat, atunci va interoga alt
server DNS
– Incrementala – daca serverul DNS nu stie sa
raspunda, returneaza eroare si adresa altui server
DNS (numit si referral) care ar putea cunoaste
raspunsul la interogare

      
DNS| interogari
• Fiecarui domeniu ii este asociata o multime de
inregistrari de resurse (resource record – RR)
• Mecanismul:
– Cererea: resolver-ul trimite un nume de domeniu
– Raspunsul: inregistrarile de resurse asociate acelui
nume (stocate in bazele de date DNS)

DNS realizeaza corespondenta dintre numele de
domenii si inregistrarile de resurse

• Forma generala RR este:
Nume_domeniu Timp_de_viata Tip Clasa Valoare
Nume_domeniu (domain name) – precizeaza
domeniul caruia i se aplica aceasta inregistrare
Timp_de_viata (time-to-live) – da o indicatie despre
cat de stabila este inregistrarea

Tip - precizeaza tipul inregistrarii
– SOA (Start Of Authority) : domeniul curent, adresa e-mail a
administratorului, etc.
– A – adresa IP a gazdei
– MX (mail exchangers) – precizeaza numele domeniului
pregatit sa accepte posta electronica pentru domeniul
specificat
– CNAME (Canonical Name) – permite crearea pseudonimelor
– PTR (Pointer) – Pseudonim pentru adresa IP
– HINFO- permit aflarea tipului de masina si de sistem de
operare carora le corespunde domeniul
– TXT: text neinterpretat (comentarii) 19
      
Clasa: pentru Internet valoarea acestuia este IN
Valoare: acest camp poate fi un numar, un nume de
domeniu sau un sir ASCII; semantica depinde de
tipul de inregistrare
      
DNS| configurare
• Exemplu de fisier /etc/resolv.conf
  
DNS| interogari inverse
• Problema:
– Data o adresa, care va fi numele ei simbolic?
(reverse DNS resolution sau reverse DNS lookup)
Exemple:
1)
2) 2001:db8::567:89ab
b.a.9.8.7.6.5.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.8.b.d.0.1.0.0.2.ip6.arpa

      
DNS| optimizari
Proximitatea spatiala: serverele locale vor fi
interogate mai des decat cele la distanta
Proximitatea temporala: daca un set de domenii sunt
referentiate repetat atunci se apeleaza la caching
DNS
Fiecare intrare DNS va avea stabilita o valoare TTL
(time to live)
Se va utiliza si replicarea (servere multiple, servere
root multiple) – se va interoga cel mai apropiat
(geografic) server
    
DNS| comenzi
Ca resolver interactiv se pot folosi comenzile:
– nslookup
– dig
– host
–whois
–…
    
DNS| nslookup
nslookup www.info.uaic.ro
- Returneaza RR de tip A folosind serverul DNS local

Exemple de utilizari:
nslookup 85.122.23.1
- Returneaza RR de tip PTR pentru 85.122.23.1 in ierarhia de domenii in-addr.arpa
Host Lookup
Reverse IP
Lookup
[http://www.zytrax.com/books/dns/ch3/]
      
DNS| nslookup
nslookup www.axiologic.ro
- Returneaza RR de tip A folosind serverul DNS specificat

Exemple de utilizari:
man nslookup
Host Lookup
      
DNS| dig
dig – un instrument mai puternic decat nslookup

Exemplu de utilizare:
dig www.info.uaic.ro A
      
DNS| comenzi
host
30
Exemplu de utilizare:
      
DNS| whois
whois ibm.com
      
DNS| primitive
• Nu trebuie scris un resolver pentru a afla adresa IP a
unei gazde
• Functii principale:
• gethostbyname(); getaddrinfo();
• gethostbyaddr() ; getnameinfo();
• La unele sisteme de operare (e.g., Solaris) va trebui la
compilare sa folosim biblioteca nsl (Name Server
Library): gcc … -lnsl

      
DNS| primitive
Una din structurile folosite: hostent
struct hostent {
char *h_name; /* nume oficial (canonical) */
char **h_aliases; /* alias-uri */
int h_addrtype; /* AF_INET */
int h_length; /* lungimea adresei: 4 sau 6 */
char **h_addr_list; /*pointeri la adresele IP */
};

      
DNS| primitive
Structura hostent:

h_name
h_aliases
h_addrtype
h_length
h_addr_list
Numele oficial al hostului
(canonical name)
…
NULL
…
NULL
alias 1
alias 2
Adresa IP 1
Adresa IP 2
AF_INET
      
DNS| gethostbyname()
#include <netdb.h>
struct hostent *gethostbyname
(const char *hostname);
• In termenii DNS, gethostbyname() realizeaza o
cerere pentru o inregistrare A
• Obs. gethostbyname() se foloseste in special
pentru IPv4
      
DNS| gethostbyname()
• Returneaza:
– In caz de succes returneaza un pointer la hostent, ce
contine adresa IP a host-ului
– In caz de eroare NULL, iar variabila h_errno indica
eroarea aparuta:
• HOST_NOT_FOUND
• …
• NO_RECOVERY
• …

Constante definite in netdb.h
      
DNS| gethostbyname()
• Exemplu de utilizare: completarea structurii sockaddr_in avand in
loc de adresa IP un nume simbolic:
struct sockaddr_in server;
struct hostent *hos;
if(!( hos = gethostbyname(“fenrir.info.uaic.ro”) )
{/*Eroare la rezolvarea adresei*/}
server.sin_family=AF_INET
/* adresa IP o luam din structura hos */
memcpy(&server.sin_addr.s_addr, hos->h_addr_list[0],
sizeof(hos->h_addr_list));
server.sin_port=htons(4321);

      
DNS| gethostbyaddr()
#include <netdb.h>
struct hostent *gethostbyaddr (
const char *addr,
socklen_t len,
int family);
• In termenii DNS, gethostbyaddr() realizeaza o cerere la serverul
de nume pentru o inregistrare PTR in domeniul in-addr.arpa
• Returneaza: In caz de succes returneaza un pointer la hostent, ce
contine numele oficial al host-ului ; In caz de eroare NULL, iar
variabila h_errno indica eroarea aparuta
Obs. gethostbyaddr() se foloseste in special pentru IPv4

      
DNS| getservbyname()
#include <netdb.h>
struct servent *getservbyname (const char *servname, const char
*protoname);
• Returneaza: un pointer la struct servent in caz de sucess, NULL in
caz de eroare
struct servent {
char *s_name; /* numele oficial al serviciului*/
char **s_aliases; /* alias-uri */
int s-port; /* portul (network-byte order) */
char *s_proto; /* protocolul */ };
Exemplu: struct servent *pserv;
pserv=getservbyname(“ftp”,”tcp”); /*FTP folosind TCP */39
      
DNS| getservbyport()
#include <netdb.h>
struct servent *getservbyport (int port, const char *protoname);
• Cauta un serviciu dupa un numar de port si dupa protocol
(optional)
• Returneaza: un pointer la struct servent in caz de sucess, NULL in
caz de eroare
Obs. port este in network byte order
Exemplu:
struct servent *pserv;
pserv=getservbyport( htons(53), ”udp”); /*DNS folosind UDP */
pserv=getservbyport( htons(21),”tcp”); /*FTP folosind TCP */ 40
      
DNS| getaddrinfo()
#include <netdb.h>
int getaddrinfo (
const char *hostname,
const char *service,
const struct addrinfo *hints,
struct addrinfo **result ) ;
• Obs. hostname, service, hints – parametri de intrare
• Returneaza: 0 in caz de sucess, !=0 in caz de eroare
• Se recomanda a fi folosita si pentru IPv4 si pentru IPv6
• Combina functionalitati ale: gethostbyname(), getservbyname(),
getservbyport()

Numele host-lui sau o adresa IPv4 sau
IPv6 ca string
Portul serviciului sau numele serviciului
(“http”,”pop”,..) (vezi /etc/services )
Contine informatii despre tipul
de informatii pe care trebuie sa
le intoarca primitiva
      
DNS| getaddrinfo()
struct addrinfo {
int ai_flags; /* AI_PASSIVE, AI_CANONNAME */
int ai_family; /* AF_INET, AF_INET6, AF_UNSPEC */
int ai_socktype; /* SOCK_STREAM sau SOCK_DGRAM */
int ai_protocol; /* 0 (auto) sau IPPROTO_TCP, IPPROTO_UDP */
socklen_t ai_addrlen; /* lungimea lui ai_addr */
char *ai_canonname; /* numele canonic al host-ului */
struct sockaddr *ai_addr; /* adresa binara a socket-ului */
struct addrinfo *ai_next; /* pointer la urmatoarea structura din
lista */
};

      
DNS| getaddrinfo()
Discutii:
• Daca functia returneaza cu succes result va pointa la lista de struct
addrinfo.
Cazuri cind se pot obtine structuri multiple:
– Exista mai multe adrese asociate cu numele hostului si cate o
structura este returnata pentru fiecare adresa
– Daca serviciul este furnizat pentru tipuri diferite de socket-uri,
atunci cate o structura este returnata pentru fiecare tip de socket
• Informatia returnata de getaddrinfo() in structura struct addrinfo
**result poate fi utilizata astfel:
– Pentru socket() : ai_family, ai_socktype, ai_protocol
– Pentru connect() sau bind(): ai_addr si ai_addrlen
• freeaddrinfo()

      
DNS| getnameinfo()
#include <netdb.h>
int getnameinfo (
const struct sockaddr *sockaddr,
socklen_t addrlen,
char *host,
socklen_t hostlen,
char *serv,
socklen_t servlen,
int flags) ;
• Inlocuieste gethostbyaddr() si getservbyport()
• Returneaza: 0 in caz de sucess, !=0 in caz de eroare

numele host-ului intors
Numele serviciului
Adresa socket-ului trimisa ca
argument
NI_NOFQDN -> host va contine doar
numele host-ului si nu intreg numele
al domeniului
      
DNS| IDN
• International Domain Names (IDN)
– Extensie care permite folosirea caracterelor Unicode
in numele de domenii, nu doar a celor ASCII
https://www.icann.org/en/topics/idn/
16 Noiembrie 2009 - Inregistrarea de domenii ccIDN
sau IDN ccTLD
– Pot fi exploatate pentru atacuri de tip phishing
(… detalii intr-un curs viitor)

      
DNS| administrare
• Radacina DNS este oficial administrata
de Internet Corporation for Assigned
Names and Numbers (ICANN)
• Exista si alte organizatii care ofera
radacini alternative (alt DNS roots),
precum OpenNIC (Network Information
Center) sau New.Net

');
INSERT INTO `cursuri` VALUES (9,'Curs 9
Nivelul Aplicatie
https://profs.info.uaic.ro/~computernetworkscursullaboratorul.php
Lenuta Alboaie (adria@info.uaic.ro)
Andrei Panu (andrei.panu@info.uaic.ro)
      
Cuprins
• Protocoale la nivelul aplicatie
– Preliminarii
– Caracteristici de proiectare
– Accesul la terminal de la distanta
– Posta Electronica
• SMTP (Simple Mail Transfer Protocol)
• POP (Post Office Protocol)
– Transferul de fisiere
• TFTP (Trivial File Transfer Protocol)
• FTP (File Transfer Protocol)
– World-Wide Web (HTTP)
– Privire de ansamblu

Preliminarii
• La nivelul aplicatie sunt puse la dispozitie o serie de servicii :
– Terminal la distanta (TELNET, SSH, …)
– Posta electronica (SMTP, IMAP, POP, …)
– Transferul de fisiere (TFTP, FTP si altele)
– World-Wide Web (HTTP)
– Conversatii instantanee (ICQ, XMPP (din Mai 2014 -> nu mai
are suport in Google Voice), Hangouts IM, WhatsApp… )
• Se ofera si protocoale pentru rezolvarea unor sarcini de
sistem - /etc/services, /etc/protocols
– Sistemul de fisiere in retea (NFS)
– Conectivitatea cu alte sisteme de fisiere (SMB)
– Servicii de baze de date (MySQL, PostgreSQL, …, Hive, …)
      
Caracteristici de proiectare
• Tipuri de protocoale in functie de natura datelor transferate
– Fluxuri de caractere generate de utilizator
• Folosite pentru aplicatii interactive la distanta (telnet,
rlogin, IRC, …)
• Traficul este in mare masura compus din date
neinterpretate
• Se pot include secvente de control (i.e. controlul
terminalului, coduri de culoare) – coduri ANSI
(Exemplu: CSI n E -> numit: CNL – Cursor Next Line
Moves cursor to beginning of the n-th (default 1) following
line)

• Tipuri de protocoale in functie de natura datelor transferate
– Mesaje intrebare/raspuns ASCII
• Serverul si clientul vehiculeaza siruri de caractere care pot fi
citite si de utilizatori umani (SMTP, FTP, HTTP/1.1, XMPP, SIP, …)
• Uzual, sunt compuse din linii de text
– Formate binare
• Utilizate pentru protocoale de nivel inferior (SNMP – Simple
Network Management Protocol) sau de nivel inalt (NFS peste
RPC, HTTP/2.0)
• Apar probleme la reprezentarea datelor (de ex. ordinea octetilor)
– Protocoale ad-hoc folosite de aplicatiile (nestandard) scrise de
utilizatori
• Pot adopta unele dintre tipurile anterioare

• Cerinte referitoare la proiectarea unui protocol
– Parametri critici: lungimea numelui comenzilor,
marimea buffer-elor, modul de adresare
– Definirea operatiilor permise (e.g., creare, citire,
scriere, stergere, actualizare)
– Raportarea erorilor: coduri de eroare, mesaje
– Formatul mesajelor: sursa, destinatie, parametri,
codificarea datelor, lungime fixa/variabila, …

• Scenariul uzual
– Serverul – citeste coduri de operatii (opcode-uri) si
raporteaza starea folosind coduri de eroare
– Clientul – construieste mesaje folosind opcodeurile permise

• Problema fiabilitatii (engl. Reliability) comunicarii
– Reteaua poate pierde mesaje
– Abordari:
• Posta clasica (post-office)
– Nu asteapta nici un fel de confirmari
• Handshaking – toate mesajele sunt confirmate
• Raspuns confirmat (acknowledged reply)
– Se asteapta un raspuns, iar expeditorul raspunsului
asteapta confirmarea primirii lui
• Cerere/raspuns (request/reply) – expeditorul asteapta
(un timp) venirea raspunsului (e.g. RPC, SOAP)

        
Accesul la terminal
• Serviciu “antic” standard Internet
• Folosit prin comenzi precum rlogin, telnet, ssh (varianta
securizata a telnet)
• Utilizeaza modelul client/server:
– Clientul interactioneaza cu utilizatorul
– Serverul furnizeaza acces la un shell (e.g., bash)
Aplicatie de tip
remote login

Figura: Mecanismul de functionare a unei aplicatii de tip
remote login [Retele de calculatoare –
curs 2007-2008, Sabin Buraga]

• Implementare – mecanism general
Pentru conectarea la distanta, fiecare client va fi deservit de un proces copil al
serverului
Procesul copil va crea un alt proces care va conecta clientul la un pseudoterminal si va executa shell-ul
[Retele de calculatoare –
curs 2007-2008, Sabin Buraga] 13
        
Accesul la terminal
• Probleme
– Initializarea si autentificarea
• Cum identificam clientul?
• Cum stim ca serverul este unul oficial?
– Procesarea caracterelor speciale (inclusiv sfarsitul de linie –
EOL)
– Cine proceseaza actiuni precum editarea liniei, afisarea
caracterelor tastate (echoing), suspendarea terminalului
(CTRL + S), etc.?
– Modul de comunicare intre client si server
• Intreruperi din partea utilizatorului
• Controlul dimensiunii ferestrei de afisare

• rlogin
– protocol simplu de acces la distanta
– utilizat exclusiv pentru conectarea de masini UNIX
– RFC 1258: “The rlogin facility provides a remote-echoed,
locally flow-controlled virtual terminal with proper flushing
of output”
Functionare:
– rlogin comunica cu un daemon rlogind de pe gazda remote
– autentificarea se face prin apelarea la gazde “de incredere”
(“trusted” hosts)
• rlogind permite logarea fara parola daca gazda remote
apare in fisierul /etc/hosts.equiv sau daca utilizatorul are
un fisier .rlogin in directorul home

        

• telnet (terminal network)
– Protocol standard TCP/IP de acces la distanta (RFC 854,855)
– Utilizat indiferent de platforma
– Poate fi utilizat drept client generic fara a sti detalii despre server
– Autentificarea clientilor nu se face de catre protocol, ci de catre
aplicatie
– Protocolul se bazeaza pe:
• Conceptul NVT (Network Virtual Terminal): un dispozitiv
virtual cu o structura generala comuna cu o gama larga de
terminale; fiecare host face maparea caracteristicilor
propriului terminal cu cele ale NVT
• Odata ce a fost stabilita o conexiune prin TELNET, ambele
capete ale comunicarii sunt tratate simetric

        
• telnet (terminal network)
– Protocolul se bazeaza pe:
• Ambele parti ale comunicarii pot sa negocieze utilizarea de
optiuni aditionale care sa reflecte partea hardware utilizata
– Optiuni pentru : editarea liniei, dimensiunea ferestrei de
afisare etc.
A B
“Will X”
“Do X”
A B
“Will X”
“Don’t X”
telnet ofera compatibilitate cu
terminale
vechi (vt52, vt100,…)
[ TCP/IP Tutorial and Technical
Overview, IBM, 2006 ] 17
        
Accesul la terminal
• telnet (terminal network)
– Comunicare dintre client si server se realizeaza prin comenzi de
tipul:
• IP (Interrupt Process; 244) -> terminarea programului care
ruleaza
• AO (Abort output; 245) -> elibereaza orice buffer de iesire
• AYT (Are you there; 246) -> permite clientului trimiterea unei
interogari OOB pentru verificarea faptului ca partea remote
este activa
• EC (Erase character; 247) -> stergerea caracterului anterior
• EL (Erase Line; 248) -> stergerea intregii linii curente
• … (RFC 854)
– Trimiterea unei comenzi: comanda (1 octet) precedata de un
octet cu valoarea 255 - IAC (Interpret As Command)

        
SSH
• SSH (secure shell)
– Fata de telnet, furnizeaza o comunicare sigura (bazata pe
TCP) prin mesaje criptate si mesaje de autentificare
– SSH foloseste modelul client/server
• Un program client SSH este utilizat pentru stabilirea unei
conexiuni cu un daemon SSH
– Utilizari:
• logarea pe o masina la distanta si executarea de comenzi
• suport pentru tunneling (curs viitor)
• permite si transfer de fisiere in asociere cu protocoalele
SFTP sau SCP
– Are suport in majoritatea sistemelor de operare moderne

E-mail (Electronic Mail)
• Protocoale bazate pe TCP:
– SMTP (Simple Mail Transfer Protocol)
• RFC 821 (specifica modul de schimb a mail-ului intre
doua host-uri)
– POP (Post Office Protocol)
• RFC 1939
– POP3S – varianta securizata a POP3
• A se vedea si: RFC 822 (specificatii privind antetul unui
mail), 2049 (specificatii privind documente diferite de plain
text ASCII ce pot fi continute intr-un email), RFC 974
(standard privind rutarea mailurilor folosind DNS)
• RFC 822 si 974 -> consolidate in RFC 2821, 2822

        
E-mail
• Terminologie
– Agent utilizator (MUA – Mail User Agent): client (local) pentru posta
electronica
Ex: alpine, mutt, Mozilla Thunderbird, Kmail, Outlook etc.
– Agent de transfer (MTA – Mail Transport Agent)
responsabil cu comunicarea cu gazdele la distanta si cu
trimiterea/receptionarea de posta
(client & server) - sendmail, qmail
– Agent de distributie (MDA - Mail Distribution Agent sau LDA – Local
Delivery Agent) - directioneaza mesajele primite catre casuta postala a
utilizatorului; Ex: maildrop, Sieve, procmail
– Mail exchanger (MX) – gazda responsabila cu e-mail-urile unui domeniu
(masina intermediara)
   
E-mail
• Caracteristici
– Distinctia dintre plic si continut
• Plicul incapsuleaza mesajul, contine date necesare
pentru transportul mesajului: destinatar, adresa,
prioritate, securitate, …
• Plicul este folosit pentru dirijarea mesajului la destinatar
• Mesajul din plic contine un antet (date de control
pentru MUA) si un corp (date pentru utilizator)
– Fiecare utilizator este identificat printr-o adresa de e-mail:
cutie_postala@locatie (cont@adresaInternet)
   
E-mail|SMTP
• Componente:
– Plic (envelope)– folosit de MTA pentru livrare
Exemplu:
MAIL From: <adria@info.uaic.ro>
RCPT to: <adria@info.uaic.ro>
– Anteturi (headers) – folositi de MUA
Exemplu: Received, Message-ID, From, Date, Reply-To,
Subject,…
– Continut –ul mesajului (body) -
• Mecanism: MUA preia continutul, adauga anteturi si il
transmite la MTA; MTA adauga anteturi, adauga plicul si il
trimite la un alt MTA

E-mail|SMTP
• Comunicarea:
– Se realizeaza o conexiune TCP intre Sender SMTP si Receiver
SMTP (intre MTA-uri). Obs. Receiver SMTP poate fi
destinatia finala sau un intermediar (mail gateway)
– Clientul trimite comenzi SMTP, iar serverul raspunde cu
coduri de stare
– Mesajele de stare includ coduri numerice NNN si texte
explicative
– Ordinea comenzilor este importanta
– Se utilizeaza portul 25

• Comenzi uzuale:
– HELO: identifica gazda expeditoare
– MAIL FROM: porneste o tranzactie si identifica orginea email-ului
– RCPT TO: identifica recipientii individuali ai mesajului
(adrese de e-mail); pot exista comenzi RCPT TO: multiple
– DATA desemneaza o serie de linii text terminate cu \r\n,
ultima linie continind doar “.”
– QUIT

• Alte comenzi:
– VRFY: permite verificarea validitatii unui recipient
– NOOP: forteaza serverul sa raspunda cu un cod de OK (200)
– EXPN: expandeaza un grup de adrese (alias)
– TURN: interschimba destinatarul cu expeditorul fara a fi
necesara crearea unei noi conexiuni TCP
(sendmail nu suporta aceasta comanda)
– RSET abandoneaza tranzactia curenta
    
E-mail|SMTP
• RFC 822: SMTP este limitat la text ASCII pe 7 biti
• RFC 1521: defineste un standard care sa rezolve limitarile
anterioare -> MIME (Multipurpose Internet Mail Extensions)
– Standard de codificare a continutului mesajelor non-ASCII
• Limbi cu accente, cu alfabete non-latine, fara alfabet,
mesaje non-textuale
– Permite atasarea la e-mail a fisierelor de orice tip
– Se foloseste campul:
Content-Type: tip/subtip
Exemplu: Mime-Version: 1.0
Content-Type: TEXT/PLAIN

• Tipuri MIME principale:
application defineste aplicatiile client
(application/executable)
text defineste formatele text
(text/plain, text/html)
image specifica formatele grafice
(image/gif, image/jpeg)
audio specifica formatele audio (audio/basic)
video specifica formatele video (video/mpeg)
multipart utilizat pentru transportul datelor compuse
(multipart/mixed, multipart/alternative)
 

• POP (Post Office Protocol) – RFC 1939
• Utilizat la transferul de mesaje de pe un server de
posta la un MUA – portul 110
• Comenzile si raspunsurile sunt mesaje ASCII
• Raspunsurile incep cu +OK sau -ERR
[Retele de calculatoare –
curs 2007-2008, Sabin Buraga]
   

• Comenzi uzuale:
– USER specifica numele de cont
– PASS specifica parola
– STAT furnizeaza numarul de mesaje din cutia postala
(mailbox)
– LIST afiseaza lista de mesaje si lungimea, cate 1 pe linie
– RETR preia un mesaj
– DELE reseteaza tranzactia, iar orice marcaj de stergere este
eliminat
– QUIT sterge mesajele marcate si inchide conexiunea

• POP 3 - caracteristici:
– In general, daca utilizatorul schimba clientul el nu-si mai poate reciti
mailurile; Obs: Clienti cu optiunea: ‘keep a copy of the email on the
server’
– Foloseste mecanismul “download-and-keep”: copierea mesajelor pe
clienti diferiti
– POP3 este fara stare intre sesiuni
• Alte solutii:
IMAP (Interactive Mail Access Protocol) – RFC 1730
– Pastreaza toate mesajele intr-un singur loc: pe server
– Permite utilizatorului sa organizeze mesajele in directoare
– Pastreaza starea “utilizatorului” intre sesiuni
• Numele directoarelor si maparea dintre ID-urile mesajelor si
numele folderului

• TFTP (Trivial File Transfer Protocol) -> …Cursul 6 & RFC 1350
– utilizeaza UDP si portul 69
– utilizat deseori la initializarea statiilor de lucru fara disc sau a
altor dispozitive
– nu are mecanisme de autentificare si criptare => este utilizat in
retele locale
– RFC 1785, 2347, 2348, 2349

Transferul de fisiere|TFTP
• TFTP (Trivial File Transfer Protocol)
Implementarile TFTP utilizeaza comenzi de tipul:
– RFC 1785, 2347, 2348, 2349
[ TCP/IP Tutorial and Technical
Overview, IBM, 2006 ]

FTP – caracterizare
• Folosit atat interactiv, cat si de programe
• Asigura transferul sigur si eficient al fisierelor
• Se bazeaza pe modelul client/server
• FTP utilizeaza doua conexiuni TCP pentru transferul fisierelor:
– Conexiune de control
• folosita pentru trimiterea comenzilor si receptionarea codurilor de
stare
• Conexiunea de control utilizeaza portul 21
– Conexiunea de date
• folosita pentru transferul efectiv
• conexiunea de date foloseste portul 20
sau unul aleator (P > 1023)
• nu este obligatorie intr-o sesiune FTP 41
        
Transferul de fisiere|FTP
FTP – caracterizare
• Comenzile si raspunsurile sunt linii de text
• Obs. (FTP->)file transfer != file access (->NFS)
• Vezi si RFC 956, 1068, 2228, (FTP Security Extensions), 2428 (FTP Extensions
for IPv6 and NATs)
• Pentru interactivitate se foloseste protocolul TELNET
Tipuri de acces:
• Anonim (FTP anonymous) – RFC 1635
– Autentificare cu numele anonymous si drept parola o adresa de
e-mail
– Acces public la o serie de resurse (aplicatii, date, multimedia
etc.)
• Autentificat
– Necesita un nume de utilizator existent, insotit de o parola
valida
– Pentru transferul de date in/din contul personal 42

FTP – comenzi (protocol)
• Comenzi de control al accesului
– USER username, PASS password, QUIT, ChangeWorkingDir,…
• Comenzi de transfer a parametrilor
– PORT, TYPE, MODE
• Comenzi de realizarea a serviciilor FTP
– RETR filename, ABOR, STOR filename, LIST, PrintWorkingDir
Raspunsul de stare
Linie de text continind:
XYZ un cod de stare (utilizat de software) + un mesaj
explicativ (destinat oamenilor)

FTP – codul de stare (xyz)
Prima cifra semnifica:
1 replica pozitiva preliminara (“am indeplinit, dar
asteapta”)
2 replica pozitiva finala (“succes”)
3 replica pozitiva intermediara (“am nevoie si de alte
informatii”)
4 replica negativa tranzitorie (“eroare, incerc iar”)
5 replica negativa finala (“eroare fatala”)
    
Transferul de fisiere|FTP
FTP – codul de stare (xyz)
A doua cifra specifica grupuri de functii:
0 erori de sintaxa
1 informare (ajutor, informatii de stare)
2 referitor la conexiuni
3 privitor la autentificarea utilizatorului
4 nespecificat
5 referitor la sistemul de fisiere


FTP – codul de stare (xyz)
A treia cifra da informatii suplimentare asupra mesajelor de
eroare
Exemple:
125 Conexiune deschisa; transfer pornit
200 Comanda OK
226 Transfer complet
331 Nume utilizator OK, se cere parola
452 Eroare la scrierea fisierului
500 Eroare de sintaxa (comanda necunoscuta)
501 Eroare sintaxa (argumente invalide)
221 Goodbye /*rezultat al comenzii QUIT */
49
        
FTP – Moduri de transfer
- STREAM
- Fisierul este trimis ca un flux de octeti; sfirsitul transmisiei
este indicat de inchiderea normala a conexiunii;
- BLOCK
- Fisierul este transmis ca o serie de blocuri de date
precedate de antete continand contoare si descriptori de
bloc (e.g. End of data block)
- COMPRESSED
- Fisierele sunt compresate, conform unui algoritm de
compresare (e.g., gzip) si sunt trimise ca date binare

Active FTP – exemplu
- Clientul se conecteaza la un
server (85.122.23.145:21) de
la un port P > 1023
- Clientul trimite comanda
PORT 85.122.23.1.4.2
(4*256+2=1026) ce indica
Server-ului sa initieze o
conexiune cu clientul la portul
P+1
- Clientul asculta la P+1 si
primeste datele trimise de
server prin portul 20
Obs. Conexiunea initiata de server poata fi interpretata ca un potential atac de
firewall-ul clientului
Pasive FTP – exemplu
- La initierea unei conexiuni FTP
clientul foloseste doua porturi
(P>1023 si P+1)
- Clientul se conecteaza la un
server (85.122.23.145:21) de
la portul P si trimite comanda
PASV
- Serverul deschide un port PS >
1023 si trimite comanda
PORT PS clientului
- Clientul va initia o conexiune
(de la portul P+1) cu serverul
folosind portul primit (PS)
      
HTTP
• Hyper Text Transfer Protocol
– Protocol utilizat in Internet, bazat pe stiva TCP/IP
– Sta la baza comunicarii dintre serverele si clientii Web
• Client: in mod uzual poate fi un browser
• Server: server Web care trimite raspunsuri la cererile primite
– HTTP 1.0 - RFC 1945
– HTTP 1.1 - RFC 2616
– HTTP 1.1 revised - RFC 723X (https://www.w3.org/Protocols/)
Protocolul HTTPS – asigura comunicatii “sigure” HTTP via TLS (Transport
Layer Security):
– autentificare pe baza certificatelor digitale + criptare bidirectionala
– RFC 2818 – https://tools.ietf.org/html/rfc2818

– Protocolul SPDY – un experiment Google, disponibil ca
Internet Draft la care Google a renuntat in 2016
• Reducerea latentei incarcarii si cresterea securitatii
• https://www.chromium.org/spdy
• Implementari SPDY existau in : Chrome, Mozilla
Firefox, Opera, Amazon Silk, Internet Explorer
– Protocolul HTTP/2.0
• RFC 7540
• Extinde ideile SPDY, focalizat asupra performantei
• www.slideshare.net/mnot/what-http20-will-do-for-you

• Hyper Text Transfer Protocol
Mecanism general:
Clientul initiaza o conexiune TCP cu serverul
folosind portul 80
Serverul accepta conexiunea TCP
Are loc schimbul de mesaje HTTP intre
clientul HTTP (browser) si server-ul Web
Se inchide conexiunea TCP

• HTTP – nu se ocupa de partea de rutare sau verificarea cererilor
– ? Cine: TCP&IP
– HTTP lucreaza cu cereri la nivel inalt: Fetch IndexPage al https://www.google.com
– Live HTTP Headers (Firefox) ->
Detalii asupra portului: https://www.grc.com/port_8080.htm 56
        
Web Browser| Download
• Modul cum browserul reda un website este esential in procesul de optimizare
Exemplu: download resursa http://kernel.org
 
Web Browser| Download
• Pasii realizati de browser:
– Rezolvarea kernel.org folosind DNS pentru aflarea IP (primul segment)
– Al doilea segment indica incercarea de a crea o conexiune HTTP catre
kernel.org
– La inceputul celui de-al treilea segment, conexiunea TCP a fost creata si
browserul isi poate primi raspunsul; in cazul nostru poate datorita latentei
serverului, abia la la inceputul celui de-al patrulea segment serverul web
trimite continutul
– Total: 847 milisecunde (ms) – si documentul HTML a fost obtinut
• Obs. In general paginile web constau din legaturi catre foi de stiluri, imagini,
JavaScript etc.
– Imediat ce documentul HTML incepe sa vina, browserul incepe operatia de
fetch pe alta resursa (kernel.css in cazul nostru)
• Obs. De data aceasta nu mai sunt intarzieri datorate DNS lookup,
deoarece raspunsul anterior a fost plasat in cache-ul browserului
– Sunt intarzieri datorate initierii conexunii TCP catre server

• ? De ce exista o asa mare intarziere pentru cererea us.png?
– “Motiv istoric”: in exemplul nostru browserul downlodeaza
doar doua resurse in paralel de la acelasi host (cum s-a
terminat kernel.css, incepe us.png)
– Pentru resursele us.png si cele care urmeaza nu mai exista nici
un segment de conexiune TCP  browserul reutilizeaza
conexiunea TCP existenta cu serverul => o optimizare (salveaza
0.1 secunde per cerere)
– Obs. Pentru resursele 1,5,12 timpul pentru descarcarea
resursei e jumatate din intregul timp de fetching a resursei; la
restul timpul de descarcare este insignifiant

Conexiuni persistente si Keep-Alive
– In HTTP 1.0 – comportamentul implicit era ca dupa fiecare obtinere de
resursa sa se inchida conexiunea
Efect => latenta in primirea raspunsului, utilizarea resurselor (CPU, RAM) la
nivel de client si server


Conexiuni persistente si Keep-Alive
• Problema a fost partial rezolvata prin introducerea lui Keep-Alive
– Clientul include in antetul cererii campul: Content: Keep-Alive
– Daca serverul suporta acest aspect, trimite inapoi un header cu aceeasi
valoare
• => conexiunea ramine deschisa pana cand una din parti decide
inchiderea ei
– ? Dar daca un client nu inchide conexiunea?
• Serverul este idle si consuma memorie
– Majoritatea serverelor web implementeaza un Keep-Alive timeout
– De asemenea serverele pot limita numarul de resurse care se cer
per o conexiune
Keep-Alive: timeout = 5, max 100
• Obs. Keep-Alive nu a fost oficial recunoscuta si nu era suportata de toti
clientii

Conexiuni persistente si Keep-Alive
• HTTP/1.1 a formalizat Keep-Alive => conexiuni persistente in mod implicit
• Daca un client|server nu doreste atunci poate utiliza un camp in antet:
Connection: close
• ? Cand comportamentul implicit al lui Keep-Alive nu este de dorit?
Download Paralel
• RFC 2616: “Clients that use persistent connections should limit the number of
simultaneous connections that they maintain to a given server. A single-user
client should not maintain more than 2 connections with any server or proxy….
These guidelines are intended to improve HTTP response times and avoid
congestion.”
• Scopul furnizorilor de clienti browser: cresterea gradului de interactiune cu
utilizatorul
– E problema serverelor web

HTTP
• Hyper Text Transfer Protocol
Conexiunile HTTP sunt persistente
Inchiderea si deschiderea a mai putine conexiuni TCP=> timp de
CPU este salvat in rutere si host-uri (clienti, servere, proxy, ...) si
se economiseste memoria folosita
Clientii pot face cereri multiple in cadrul aceleiasi conexiuni, fara
a astepta raspunsul pentru fiecare
Congestia in retea este redusa datorita numarului de pachete
mai mic
Cererile se desfasoara mai rapid deoarce nu mai este nevoie de
un handshake la fiecare cerere


');
INSERT INTO `cursuri` VALUES (10,'Curs 10
Paradigma P2P
Lenuta Alboaie (adria@info.uaic.ro)
Andrei Panu (andrei.panu@info.uaic.ro)
https://profs.info.uaic.ro/
~computernetworkscursullaboratorul.php
Cuprins
• Paradigma peer-to-peer (P2P)
– Preliminarii
–Definitii
– Caracterizare
– Tipuri de aplicatii
– Infrastructuri
– Instrumente

Definitii
Peer = one that is of equal standing with another
(conform Webster)
Peer-to-peer (P2P) = arhitectura de retea in care
nodurile sunt relativ egale
– In sensul ca fiecare nod este, in principiu, capabil sa
realizeze functii specifice retelei
Definitii
Sistemele P2P, in sens strict,
sunt sisteme complet distribuite
– Toate nodurile sunt total echivalente, in termeni de 
functionalitate si a activitatilor pe care le pot desfasura

Obs.: Sistemele P2P pure sunt rare (de ex. Gnutella); majoritatea
sunt hibride, avand supernoduri sau servere cu diferite roluri
(de ex. cautare de date, control etc.)

Definitii
• “P2P este clasa de aplicatii care se bazeaza pe resursele (de
stocare, de procesare, continut, prezente umane) disponibile la
marginile (edges) Internet-ului
Edges of the Internet
(overlay networks)

“P2P is a class of applications that take advantage of resources –
storage, cycles, content, human presence – available at the
edges of the Internet. Because accessing these decentralized
resources means operating in an environment of unstable and
unpredictable IP addresses, P2P nodes must operate outside
the DNS system and have significant or total autonomy from
central servers”
“A distributed network architecture may be called a P2P network
if the participants share a part of their own resources. These
shared resources are necessary to provide the service offered
by the network. The participants of such a network are both
resource providers and resource consumers”

Caracterizare
Caracteristici definitorii:
– Partajarea resurselor computationale prin
interschimb direct si mai putin prin intermedieri
oferite de o autoritate centralizata (server)
• Serverele centralizate pot fi folosite insa pentru a
realiza activitati specifice (initializarea retelei P2P,
adaugarea de noi noduri in retea,…)
• Ideal, nodurile participa activ si unilateral la
realizarea de operatii ca localizarea & caching-ul
nodurilor/continutului, dirijarea informatiilor,
managementul resurselor transferate etc.


Caracteristici definitorii:
– Abilitatea de a trata instabilitatea si variatiile
conctivitatii retelei, adaptandu-se automat la
erorile survenite sau la dinamicitatea nodurilor
• Topologia retelei P2P e adaptiva si toleranta la
defecte, nodurile auto-organizandu-se in
vederea mentinerii conectivitatii si
performantei retelei

Reteaua P2P este una suprapusa (overlay) peste cea
fizica
– Se situeaza la nivelul aplicatie => flexibilitate
– Muchiile virtuale sunt conexiuni TCP sau pointeri la
adrese IP
– Mentinerea retelei P2P se face prin verificarea
periodica a conectivitatii (ping) ori a existentei
(mesaje “still alive?”)
– Cand un nod pica, sistemul P2P ar putea stabili noi
muchii
– Proximitatea (fizica) a nodurilor nu e importanta
– Reteaua P2P poate fi structurata sau nu


Scopuri si beneficii
• Utilizarea eficienta a resurselor
– Latimea de banda neutilizata, resurse de stocare, putere de procesare
disponibile la marginile (edges) retelei
• Scalabilitate
– Fara informatii centralizate, fara bottleneck-uri (de comunicare si de
calcul)
– Agregarea resurselor se face in mod natural odata cu utilizarea sistemului
• Siguranta (eng. reliability)
– Existenta de copii a datelor
– Distribuire geografica
– Nu mai exista “single point of failure”
• Administrare usoara
– Nodurile se auto-organizeaza
– Cresterea tolerantei la erori si a echilibrarii incarcarii
– Cresterea autonomiei
• Anonimitatea
– Greu de realizat intr-un sistem centralizat
• Dinamism
– Mediu dinamic
– Colaborare si comunicare ad-hoc 13

Dezavantaje/Probleme
– Arhitecturile P2P sunt probabilistice
• Localizare impredictibila a resurselor
• Resursele sunt volatile
– Inexistenta unui control centralizat
• Probleme privind impunerea unei autoritati asupra
aplicatiilor, continutului si utilizatorilor
• Dificultati in detectarea si identificarea utilizatorilor (aspecte
anti-sociale)
– Incurajarea folosirii sistemelor P2P in scop abuziv si ilegal (de ex.
drepturile de autor asupra continutului digital)
– Lipsa increderii la nivel comercial, de afaceri
– Probleme de securitate (curs viitor)


Tipuri de aplicatii
• Comunicare & colaborare
– Sisteme ce ofera o infrastructura pentru facilitarea comunicarii &
colaborarii directe, deseori in timp real, intre noduri
• Sisteme conversationale (chat, mesagerie instantanee):
IRC (Internet Relay Chat), ICQ (1996), YM!, MSN Messenger,
Skype, Sisteme multicast P2P (e.g. Cirrus – Adobe Flash
http://labs.adobe.com/technologies/cirrus/; WebRTC ), …
• Calcul distribuit
– Sisteme ce folosesc puterea computationala a nodurilor disponibile
(cicli de procesor)
• Rezolvarea unor probleme prin divide-et-impera: SETI@home
(Search for Extra-Terrestrial Intelligence-Berkeley),
genome@home
• Reteaua P2P reprezinta un gen de Grid computational (…curs
master) 16

Tipuri de aplicatii
• Sisteme de stocare (baze de date)
– Proiectare de sisteme de baze de date distribuite bazate pe infrastructuri
P2P
• PIER – motor scalabil de interogare distribuita
(http://pier.cs.berkeley.edu/)
• Edutella – proiect open-source pentru interogari si stocare de metadate (P2P pentru Semantic Web)
• Distribuire de continut digital
– Sisteme & infrastructuri pentru partajarea resurselor digitale (multimedia
si alte date) intre utilizatori
• Aplicatii pentru partajarea fisierelor (e.g. Napster, Gnutella, KaZaA,
Freenet, BitTorrent, eDonkey etc.)
• Medii de stocare distribuita pentru publicarea, organizarea,
indexarea, cautarea si regasirea datelor in maniera securizata &
eficienta
(PAST, Chord, Groove, Mnemosyne, Avalanche,…)


Tipuri de aplicatii
• Distribuire de continut prin P2P
– Sisteme P2P de “interschimb de fisiere”
• Nodurile transfera un fisier la un moment dat
• Se ofera facilitati pentru realizarea unei retele
P2P si pentru cautarea&transferul de fisiere
intre noduri
• Nu se ofera suport pentru securitate,
disponibilitate si persistenta
• Exemple: Napster, KaZaA, Gnutella

Tipuri de aplicatii
• Distribuire de continut prin P2P
– Sisteme P2P pentru publicarea & stocarea
continutului
• Utilizatorii pot publica, stoca si distribui
continut digital, pe baza unor drepturi de acces
(privilegii)
• Se focalizeaza asupra securitatii si persistentei
• Unele ofera si facilitati privind colaborarea intre
utilizatori
• Exemple: Scan, Groove, Freenet, MojoNation,
Tangler

Tipuri de aplicatii
• Distribuire de continut prin P2P
– Infrastructuri pentru:
• Dirijare & Localizare:
Chord, Can, Pastry, Tapestry, Kademila
• Anonimitate:
Onion Routing, ZeroKnowledge, Freedom,
Tarzan
• Managementul reputatiei:
Eigentrust, PeerTrust

Infrastruc.(localizare & dirijare)
• Mecanismele de localizare si dirijare ce pot fi
adoptate depind de:
– Topologia
– Structura
– Gradul de centralizare
ale retelei suprapuse, acoperitoare (overlay
network)

Infrastruc.(localizare & dirijare)
• Aspecte privind centralizarea
– Arhitecturi pur descentralizate: toate nodurile
realizeaza exact aceleasi activitati, jucand simultan
roluri de servere si clienti, fara a beneficia de o
coordonare centrala
• Nodurile se numesc servents (SERVers +
clieENTS)

Infrastruc.(localizare & dirijare)
• Aspecte privind centralizarea
– Arhitecturi partial centralizate: unele noduri au un rol mai
important (de ex. stocand indecsi locali pentru fisierele
partajate)
• Nodurile devin supernoduri conform politicilor fiecarui
sistem P2P
• Rolul de supernod este stabilit dinamic
– Arhitecturi descentralizate hibride: exista un server
central facilitand interactiunea intre noduri, mentinand
cataloage de meta-date ale fisierelor
• Serverele pot identifica si verifica nodurile de stocare
• Sistemele se mai numesc broker mediated

Infrastruc.(localizare & dirijare)
• Aspecte privind structura retelei:
– Nestructurata: plasarea continutului este complet
independenta de topologia retelei suprapuse
• Continutul trebuie localizat
• Strategii de cautare prin “forta bruta”: inundarea
retelei – cereri propagate via BFS/DFS
• Strategii mai sofisticate: drumuri aleatorii,
probabilistice etc.
– Slab structurata (loosely structured): desi localizarea
continutului nu e complet specificata, aceasta este
afectata de dirijare
• Categorie aflata intre retele structurate si cele
nestructurat

Infrastruc.(localizare & dirijare)
• Aspecte privind structura retelei:
– Structurata: topologia este controlata, iar fisierele (sau
pointerii la ele) sunt plasate in locatii precise
• Se realizeaza o asociere (mapping) intre continut
(identificatorul de fisier) si locatie (adresa nodului)
– In genul unei tabele de rutare distribuita
• Cautarile exacte (exact-match queries) pot fi realizate in
mod scalabil
• Structura folosita la dirijarea eficienta a mesajelor este
dificil de mentinut in cazul unor noduri tranziente, cu
rata mare de atasare si deconectare de la retea


Arhitecturi nestructurate
Descentralizate hibride
- Fiecare calculator client
stocheaza continut (fisiere)
partajat(e)
- Serverul central mentine o tabela
cu conexiunile utilizatorilor
inregistrati (IP, latime de
banda,…) + o tabela cu lista
fisierelor fiecarui utilizator
&meta-date
- Exemple: Napster, Publius


Napster
• 1999: Sean Fanning lanseaza Napster
• A atins cota de 1.5 milioane de utilizatori simultan
• Baza de date centralizata - operatii:
– Join: clientul contacteaza serverul central (via TCP)
– Publish: raportarea unei liste de fisiere serverului
central
– Search: interogarea serverului => se intoarce
cineva care stocheaza fisierul cerut
– Fetch: ia fisierul direct de la peer (cel cu cea mai
buna rata de transfer)
• Iulie 2001: Napster a fost inchis
Arhitecturi nestructurate


Napster: Publish Napster: Search
Discutii:
- Serverul face toate procesarile
- Avem “single point of failure”
- Probleme de scalabilitate, unele sisteme nu permit adaugarea altor servere
(lista serverelor disponibile este statica)


Arhitecturi nestructurate
Descentralizate pure
- Se construieste o retea acoperitoare (overlay) cu propriile mecanisme
de rutare prin IP
- Nu exista o coordonare centrala
- Utilizatorii se conecteaza via o aplicatie care are rol dublu – servent
- Comunicarea intre serventi se bazeaza pe un protocol la nivel de
aplicatie, cu 4 tipuri de mesaje:
- Ping – cere ca un nod sa se anunte
- Pong – replica la mesajul ping (IP, port, numarul & marimea
fisierelor)
- Query – cerere de cautare (sir de cautare + viteza minima de
transfer)
- Query hints – raspuns (IP, port, viteza, dim. fis., index fis.)


Arhitecturi nestructurate
Descentralizate pure
- Cautarea se realizeaza prin inundare (flooding)
- Daca nu ai fisierul dorit, intreaba pe n vecini
- Daca nici ei nu au fisierul, vor intreba pe vecinii lor in maxim
m hop-uri
- Pe calea de intoarcere se vor intoarce raspunsurile (nu
continutul fisierelor)
- Fiecare mesaj are un TTL atasat
- Exemplu: Gnutella


Gnutella
• 2000: L. Frankel si T. Pepper(Nullsoft) lanseaza Gnutella
• Apar clienti: Bearshare, Morpheus, LimeWire
• Query Flooding:
– Join: la intrare in sistem, clientul contacteaza cateva noduri
care devin “vecinii” sai
– Publish: nu este necesar
– Search: se intreaba vecinii, care isi intreaba vecinii lor, …
• Exista un TTL ce limiteaza propagarea
– Fetch: preia fisierul direct de la peer
Arhitecturi nestructurate


Gnutella
Aspecte:
• Timpul de cautare este… O(?)
• Nodurile pleaca adesea => reteaua instabila
Arhitecturi nestructurate


Arhitecturi nestructurate
Partial centralizate
- Folosesc conceptul de supernod: are activitati de servire a unei
sub-retele P2P (indexare, caching)
- Nodurile sunt alese automat ca fiind supernoduri daca au
suficienta latime de banda si putere computationala
- Toate cererile sunt trimise initial la supernoduri
- Avantaje: timpul descoperirii resurselor e mai redus +
eterogenitatea este exploatata
- Exemplu: KaZaA


KaZaA
• 2001: Se lanseaza KaZaA
• Apar clienti: Morpheus, giFT
• Se utilizeaza un mecanism de tip “smart” query flooding:
– Join: la intrare in sistem, clientul contacteaza un
“supernode” (poate deveni si el supernod la un moment
dat)
– Publish: trimite lista de fisiere supernodului
– Search: trimite interogarea supernodului, si supernodurile
se interogheaza intre ele
– Fetch: ia fisierul direct de la peer(s); poate prelua fisierul
simultan de la mai multe peer-uri
Arhitecturi nestructurate


KaZaA: Designul retelei
Arhitecturi nestructurate


KaZaA: Inserarea de Fisiere KaZaA: Cautarea de Fisiere
Discutii:
- Comportament similar cu Gnutella, dar mai eficient
- Nu este nici o garantie asupra timpului de cautare sau a
domeniului de cautare
Arhitecturi nestructurate


Arhitecturi nestructurate
Partial centralizate
- Software-ul KaZaA este proprietar
- Datele de control P2P sunt criptate
- Mesajele folosesc HTTP
- Un nod e fie un supernod, fie asignat unui supernod
- Un supernod are 100-150 noduri-copil
- O retea poate avea ~30000 supernoduri
- Fiecare supernod are conexiuni TCP cu 30-50 supernoduri
- Pentru fiecare fisier se mentin meta-date (nume, dimensiune,
content hash, descriptor de fisier)
- Content hash-ul este folosit pentru cautarea altei copii a unui
fisier partial transferat
- Varianta fara spyware si pop-up-uri: KaZaA-lite 

Arhitecturi nestructurate
Skype
- Prima retea de telefonie p2p bazata
pe IP
- din Iunie 2014, Microsoft a anuntat
incompatibilitatea cu protocolul
anterior Skype
- foloseste Microsoft Notification
Protocol 24 (prima utilizare -> MSN
Messenger in 1999)
- arhitectura era similara cu KaZaA
http://www1.cs.columbia.edu/~salman/publications/skype1_4.pdf


Arhitecturi nestructurate
Skype
- Fiecare client mentinea un host
cache cu adresele IP si numerele de
port ale supernodurilor accesibile
- Orice client cu latime de banda (si
fara restrictii de firewall sau NAT)
putea deveni supernode
- din 2012, Microsoft a inceput
gazduirea supernodurilor in servere
din centrele sale de date
http://en.wikipedia.org/wiki/PRISM_%28surveillance_program%29


Arhitecturi nestructurate
Partial centralizate
- Daca un fisier este gasit pe mai multe noduri, transferul poate fi realizat in
paralel
- Copiile identice se identifica via content hash
- Diferite portiuni din fisier sunt transferate de pe noduri diferite
- Pentru transferurile intrerupte, se face o recuperare automata (automatic
recovery)
- Exemplu: BitTorrent
- In 2002, B. Cohen a lansat BitTorrent
- Si-a propus concentrarea pe problema legata de obtinerea eficienta a
resurselor (efficient fetching) si nu pe cautare (searching)
- Sustinatori inca de la aparitie
- Blizzard Entertainment folosea BitTorrent pentru distributia
versiunilor beta a noilor jocuri


Arhitecturi nestructurate
Partial centralizate
BitTorrent - arhitectura


Arhitecturi nestructurate
Partial centralizate
BitTorrent
- Se bazeaza pe mecanismul de swarming:
- Join: contacteaza un server centralizat (tracker) si obtine o lista
de peer-uri
- Publish: ruleaza un server tracker
- Search: de ex. foloseste Google pentru a gasi un tracker pentru
fisierul dorit
- Fetch: Preia bucati de fisiere de la peer-uri; incarca bucatile de
fisier pe care le ai
- Obs. Diferenta fata de Napster
- Downlod-ul de bucati (chunk) de fisiere
- Utilizarea strategiei “tit-for-tat”: daca A face download de la
alte noduri, atunci A trebuie sa permita si download-ul de la el
(free-rider problem)

Arhitecturi nestructurate
Probleme
- Noduri ale caror adrese IP sunt disponibile via NAT (cu restrictii)
- Nu pot fi servere TCP pentru reteaua P2P
- Solutie partiala: reverse call
- A vrea sa transfere de la B, iar B foloseste NAT
- A si B stabilesc conexiuni TCP cu serverul C (IP rutabil)
- A poate cere lui B, via C, sa realizeze o conexiune TCP de la B la A
- A poate trimite o cerere lui B, iar B ii ofera raspunsul
- Daca A si B utilizeaza NAT?
- Flash crowd: o crestere neasteptata de cereri pentru o anumita resursa
– Pentru continutul dorit nu exista suficiente copii incarcate
– Cat timp ia unui utilizator sa localizeze fisierul?
– Cate mesaje va primi un nod datorita cautarilor realizate de alte noduri?
– Se poate folosi un protocol de cautare generic, bazat pe TTL


Arhitecturi structurate
• Reprezinta solutia academica pentru P2P
• Scop:
– Cautare cu succes
– Timp de cautare in limite cunoscute
– Scalabilitate demonstrata
• Abordare: DHT (Distributed Hash Table)
– Se stocheaza perechi (key, value)
• Key – nume de fisiere
• Value – continut de fisier sau pointer la o locatie
– Fiecare peer stocheaza o multime de (key, value)
– Operatii: gaseste nodul responsabil cu un Key
• Mapare key – node
• Rutarea eficienta a cererilor de insert/lookup/delete asociate cu acest
nod
– Se permite o mare fluctuatie a nodurilor 

Arhitecturi structurate
• Aspect de interes: localizarea continutului
• Idee: Responsabilitatea este distribuita mai multor noduri ale
retelei de acoperire, intr-un mod adaptiv
• Fiecarei resurse i se asociaza o cheie unica via o functie hash:
h(“Curs Retele”)->7929; Intervalul de valori ale functiei hash se
distribuie in reteaua P2P
• Fiecare nod trebuie sa “cunoasca” locatia macar a unei singure
copii a fiecarei resurse pentru care functia sa hash ia valori in
intervalul lui
• Nodurile pot mentine in cache-ul propriu o copie a fiecarei
resurse pe care trebuie sa o “cunoasca”


Arhitecturi structurate
• Aspect de interes: dirijarea
• Pentru fiecare resursa, un nod ce “cunoaste” resursa trebuie sa
fie accesat pe calea cea mai “scurta”
• Abordarile de sisteme P2P structurate difera prin strategia de
dirijare
• Nodurile din sistem formeaza o structura de date distribuita care
poate fi: inel, arbore, hypercub, skip list etc.
• Se ofera un API pentru tabelele distribuite de hash-uri (DHT –
Distributed Hash Table)
– Dand o cheie k, API-ul va returna adresa IP a nodului
responsabil pentru valoarea cheii k


Arhitecturi structurate
• Implementari
– Chord [MIT]
– Pastry [Microsoft Research UK, Rice University]
– Tapestry [UC Berkeley]
– Content Addressable Network (CAN) [UC Berkeley]
– SkipNet [Microsoft Research US, Univ. of
Washington]
– Kademlia [New York University]
– Viceroy [Israel, UC Berkeley]
– P-Grid [EPFL Switzerland]


Arhitecturi structurate
• Slab structurate
– Nodurile pot estima ce noduri stocheaza resursele cautate
• Se evita broadcasturile oarbe
• Se foloseste o propagare in lant (chain mode
propagation): fiecare nod ia decizii locale privitoare la
care va fi nodul urmator interogat
– Cautarea unui fisier presupune utilizarea unei chei si a unui
mecanism de timeout
– Exemplu: Freenet
');
INSERT INTO `cursuri` VALUES (11,'Curs 11
Paradigma RPC
Lenuta Alboaie (adria@info.uaic.ro)
Andrei Panu (andrei.panu@info.uaic.ro)
https://profs.info.uaic.ro/
~computernetworkscursullaboratorul.php
Cuprins
• Remote Procedure Call (RPC)
– Preliminarii
– Caracterizare
– XDR (External Data Representation)
– Functionare
– Implementari
–Utilizari

Preliminarii
• Proiectarea aplicatiilor distribuite
– Orientata pe protocol – socket-uri
• Se dezvolta protocolul, apoi aplicatiile care il
implementeaza efectiv
– Orientata pe functionalitate – RPC
• Se creeaza aplicatiile, dupa care se divid in
componente si se adauga protocolul de
comunicatie intre componente


RPC|Caracterizare
• Idee: In loc de accesarea serviciilor la distanta prin
trimiterea si primire de mesaje, clientul apeleaza o
procedura care va fi executata pe alta masina
• Efect: RPC “ascunde” existenta retelei de program
– Mecanismul de message-passing folosit in
comunicarea in retea este ascuns fata de
programator
– Programatorul nu trebuie sa mai deschida o
conexiune, sa citeasca sau sa scrie date, sa inchida
conexiunea etc.
• Este un instrument de programare mai simplu decat
interfata socket BSD


RPC|Caracterizare
• O aplicatie RPC va consta dintr-un client si un server,
serverul fiind localizat pe masina pe care se executa
procedura
• La realizarea unui apel la distanta, parametrii
procedurii sunt transferati prin retea catre aplicatia
care executa procedura; dupa terminarea executiei
procedurii rezultatele sunt transferate prin retea
aplicatiei client
• Clientul si serverul –> procese pe masini diferite


RPC|Caracterizare
• RPC realizeaza comunicarea dintre client si server prin socketuri TCP/IP (uzual, UDP), via doua interfete stub (ciot)
– Obs.: Pachetul RPC (client stub si server stub|skeleton)
ascunde toate detaliile legate de programarea in retea
• RPC implica urmatorii pasi:
1. Clientul invoca procedura remote
• Se apeleaza o procedura locala, numita client stub care
impacheteaza argumentele intr-un mesaj si il trimite
nivelului transport, de unde este transferat la masina
server remote
Marshalling (serializare) = mecanism ce include
codificarea argumentelor intr-un format standard si
impachetarea lor intr-un mesaj


RPC|Caracterizare
• RPC implica urmatorii pasi:
2. Server-ul:
• nivelul transport trimite mesajul catre server stub, care
despacheteaza parametrii si apeleaza functia dorita;
• dupa ce functia returneaza, server stub preia valorile
intoarse, le impacheteaza (marshalling) intr-un mesaj si
le trimite la client stub
• un-marshalling (deserializare) = decodificare
3. Client stub preia valorile primite si le returneaza aplicatiei
client


RPC|Caracterizare
• Interfetele ciot implementeaza
protocolul RPC
• Diferente fata de apeluri locale:
– Performanta poate fi afectata
de timpul de transmisie
– Tratarea erorilor este mai
complexa
– Locatia server-ului trebuie sa
fie cunoscuta (Identificarea si
accesarea procedurii la
distanta)
– Poate fi necesara
autentificarea utilizatorilor
[Retele de calculatoare –
curs 2007-2008, Sabin Buraga]


RPC|Caracterizare
• Procedurile ciot se pot genera automat, dupa care se
“leaga” de programele client si server
• Ciotul serverului asculta la un port si realizeaza
invocarea rutinelor printr-o interfata de apel de
proceduri locale
• Clientul si serverul vor comunica prin mesaje, printr-o
reprezentare independenta de retea si de sistemul de
operare:
External Data Representation (XDR)


RPC|Caracterizare
• External Data Representation (XDR)
XDR defineste numeroase tipuri de date si modul lor
de transmisie in mesajele RPC (RFC 1014)
– Tipuri uzuale:
• Preluate din C: int, unsigned int, float, double, void,…
• Suplimentare: string, fixed-length array, variable-length
array, …
– Functii de conversie (rpc/xdr.h)
• xdrmem_create() – asociaza unei zone de memorie un
flux de date RPC
• xdr_numetip() – realizeaza conversia datelor


RPC|Caracterizare
• External Data Representation (XDR)
Exemplu


RPC|Caracterizare
• External Data Representation (XDR)
– Poate fi vazut ca nivel suplimentar intre nivelul
transport si nivelul aplicatie
– Asigura conversia simetrica a datelor client si
server
[Retele de calculatoare –
curs 2007-2008, Sabin Buraga] 

RPC|Caracterizare
External Data Representation (XDR)
• Activitatea de codificare/decodificare
• In prezent, poate fi inlocuit de reprezentari XMLRPC sau SOAP sau JSON-RPC (in contextul
serviciilor Web)
vezi cursul de Tehnologii Web!


RPC|Functionare
Context:
• Un serviciu de retea este identificat de portul la care exista un daemon
asteptand cereri
• Programele server RPC folosesc porturi efemere
De unde stie clientul unde sa trimita cererea?
Portmapper = serviciu de retea responsabil cu asocierea de servicii la diferite
porturi
=> Numerele de port pentru un anumit serviciu nu sunt fixe
• Este disponibil la portul 111 (well-known port)


RPC|Functionare
Mecanism
general
[Retele de calculatoare –
curs 2007-2008, Sabin Buraga] 

RPC|Functionare
Mecanism general:
Pas 1: Se determina adresa la care serverul va oferi serviciul
– La initializare, serverul stabileste si inregistreaza via
portmapper portul la care va oferi serviciul (portul a)
Pas 2: Clientul consulta portmapper-ul de pe masina
serverului pentru a identifica portul la care trebuie sa
trimita cererea RPC
Pas 3: Clientul si serverul pot comunica pentru a realiza
executia procedurii la distanta
– Cererile si raspunsurile sunt (de)codificate prin XDR


RPC|Functionare
• Atunci cind un server
furnizeaza mai multe
servicii, este de obicei
folosita o rutina
dispatcher
• Dispatcher-ul
identifica cererile
specifice si apeleaza
procedura
corespunzatoare,
dupa care rezultatul
este trimis inapoi
clientului pentru a-si
[Retele de calculatoare – continua executia
curs 2007-2008, Sabin Buraga]


RPC|Functionare
• Transferurile de date RPC pot fi:
– Sincrone
– Asincrone
[Retele de calculatoare –
curs 2007-2008, Sabin Buraga]


RPC|Implementare
• Open Network Computing RPC (ONC RPC) - cea mai raspandita
implementare in mediile Unix (Sun Microsystems)
– RFC 1057
– Interfata RPC este structurata pe 3 niveluri:
• Superior: independent de sistem, hardware sau retea
– Exemplu: man rcmd -> routines for returning a stream to a
remote command ….
• Intermediar: face apel la functiile definite de biblioteca RPC:
– registerrpc() – inregistreaza o procedura spre a putea fi
executata la distanta
– callrpc() – apeleaza o procedura la distanta
– svc_run() – ruleaza un serviciu RPC
• Inferior: da posibilitatea de a controla in detaliu mecanismele RPC
(de ex. alegerea modului de transport al datelor etc.)


RPC|Implementare
• Open Network Computing RPC (ONC RPC)
– Procedurile la distanta se vor include intr-un program la distanta -
unitate software care se va executa pe o masina la distanta
– Fiecare program la distanta corespunde unui server: putand
contine proceduri la distanta + date globale; procedurile pot
partaja date comune;
– Fiecare program la distanta se identifica printr-un identificator unic
stocat pe 32 biti; Conform implementarii Sun RPC avem
urmatoarele valori ale identificatorilor:
• 0x00 00 00 00 – 0x1F FF FF FF – aplicatiile RPC ale sistemului
• 0x20 00 00 00 – 0x3F FF FF FF – programele utilizator
• 0x40 00 00 00 – 0x5F FF FF FF – identificatori temporari
• 0x60 00 00 00 – 0xFF FF FF FF – valori rezervate
– Fiecare procedura (din cadrul unui program) este identificata
printr-un index (1..n) 

RPC|Implementare
• Open Network Computing RPC (ONC RPC)
Exemple:
• 10000 meta-serverul portmapper
• 10001 pentru rstatd care ofera informatii despre sistemul
remote; se pot utiliza procedurile rstat() sau perfmeter()
• 10002 pentru rusersd ce furnizeaza informatii despre
utilizatorii conectati pe masina la distanta
• 10003 serverul nfs – ce ofera acces la sistemul de fisiere in
retea NFS (Network File System)


RPC|Implementare
• Open Network Computing RPC (ONC RPC)
Fiecare program la distanta are asociat un numar de versiune
• Initial versiunea 1
• Urmatoarele versiuni se identifica in mod unic prin alte
numere de versiune
Se ofera posibilitatea de a schimba detaliile de
implementare sau extinderea capabilitatilor
aplicatiei fara a asigna un alt identificator unui program
Un program la distanta este un 3-uplu de forma:
<id_Program, versiune, index_procedura>


RPC|Implementare
• Open Network Computing RPC (ONC RPC)
Programare
de nivel
inalt:
Compilare: gcc prog.c – lrpcsvc –o prog
Executie: ./prog fenrir.infoiasi.ro


RPC|Implementare
• Open Network Computing RPC (ONC RPC)
Programare la nivel intermediar:
callrpc (char *host, /* numele serverului */
u_long prognum, /* numarul programului server */
u_long versnum, /* numarul de versiune a serv.*/
u_long procnum, /* numarul procedurii */
xdrproc_t inproc, /* fol. pentru codificare XDR*/,
char *in, /* adresa argumentelor procedurii*/,
xdrproc_t outproc, /* fol. pentru decodificare */,
char *out, /* adresa de plasare a rezultatelor*/
);


RPC|Implementare
• Open Network Computing RPC (ONC RPC)
Programare la nivel intermediar:
registerrpc(
u_long prognum /* numarul programului server */,
u_long versnum /* numarul de versiune a serv*/,
u_long procnum /* numarul procedurii */,
void *(*procname)*() /* numele functiei remote */,
xdrproc_t inproc /* fol. pt. decodificarea param. */,
xdrproc_t outproc /* fol. pt. codificarea result. */
);


RPC|Implementare
• Open Network Computing RPC (ONC RPC)
Programare la nivel intermediar:
svc_run ()
- Se asteapta venirea de cereri RPC, apoi se apeleaza folosinduse svc_getreq() procedura corespunzatoare
Obs.: Functiile de nivel intermediar utilizeaza doar UDP
Apelata de serverul RPC,
reprezinta dispatcher-ul


RPC|Implementare
• Open Network Computing RPC (ONC RPC)
Programare la nivel inferior:
[Retele de calculatoare –
curs 2007-2008, Sabin Buraga]


RPC|Implementare
• Open Network Computing RPC (ONC RPC)
Realizarea de aplicatii RPC cu rpcgen
• Se creeaza un fisier cu specificatii RPC (Q.x)
– Declaratii de constante utilizate de client si server
– Declaratii de tipuri de date globale
– Declaratii de programe la distanta, proceduri, tipuri
de parametri, tipul rezultatului, identificatorul unic
de program
• Programul server.c care contine procedurile
• Programul client.c care invoca procedurile
Pentru server: gcc server.c Q_svc.c Q_xdr.c –o server
Pentru client: gcc client.c Q_clnt.c Q_xdr.c –o client


RPC|Implementare
• Open Network Computing RPC (ONC RPC)
In implementarea unei aplicatii RPC se utilizeaza utilitarul rpcgen
[Retele de calculatoare –
curs 2007-2008, Sabin Buraga]
- Genereaza client
stub si server stub
- Generaza functiile
de codificare si
decodificare XDR
- Genereaza rutina
dispatcher
Client
Server


RPC|Implementare
• Alte implementari:
– DCE/RPC (Distributed Computing Environment/RPC)
• Alternativa la Sun ONC RPC
• Utilizat si de serverele Windows
– ORPC (Object RPC)
• Mesajele de cerere/raspuns la distanta se incapsuleaza in obiecte
• Descendenti directi:
• (D)COM (Distributed Component Object Model) & CORBA
(Common Object Request Broker Architecture)
• In Java: RMI (Remote Method Invocation)
• .Net Remoting , WCF
– SOAP (Simple Object Access Protocol)
• XML ca XDR, HTTP ca protocol de transfer
• Baza de implementare a unei categorii de servicii Web


RPC|Utilizari
• Accesul la fisiere la distanta NFS (Network File System)
– Protocol proiectat a fi independent de masina, sistem de operare si de
protocol – implementat peste RPC ( … conventia XDR)
– Protocol ce permite partajare de fisiere in retea => NFS ofera acces
transparent clientilor la fisiere
• Obs.: Diferit fata de FTP (vezi curs anterior)
– Ierarhia de directoare NFS foloseste terminologia UNIX (arbore, director,
cale, fisier etc.)
– NFS este un protocol => client - nfs , server –nfsd comunicand prin RPC
– Modelul NFS
• Operatii asupra unui fisier la distanta: operatii I/O,
creare/redenumire/stergere, stat, listarea intrarilor
• Comanda mount - specifica gazda remote, sistemul de fisiere ce
trebuie accesat si unde trebuie sa fie localizat in ierarhia locala de
fisiere
– RFC 1094 

RPC|Utilizari
• Accesul la fisiere la distanta NFS (Network File System)
– Este transparent pentru utilizator
– Clientul NFS trimite o cerere RPC serverului RPC, folosind
TCP/IP
• Obs.: NFS a fost folosit predominant cu UDP
– Serverul NFS primeste cererile la portul 2049 si le trimite la
modulul de accesare a fisierelor locale
Obs.: Pentru deservirea rapida a clientilor, serverele NFS sunt in
general multi-threading sau pentru sisteme UNIX care nu sunt
multi-threading, se creeaza si raman in kernel instante multiple a
procesului (nfsd-uri)


RPC|Utilizari
• Accesul la fisiere la distanta NFS (Network File System)
– (0) este pornit portmapper–ul la boot-area sistemului
– (1) daemonul mountd este pornit pe server; creeaza end-point-uri
TCP si UDP, le asigneaza porturi efemere si apeleaza la portmapper
pentru inregistrarea lor
– (2) se executa comanda mount si se face o cerere la portmapper
pentru a obtine portul serverului demon de mount
– (3) portmapper–ul intoarce raspunsul
– (4) se creeaza o cerere RPC pentru montarea unui sistem de fisiere
– (5) serverul returneaza un file handle pentru sistemul de fisiere
cerut
– (6) Se asociaza acestui file handle un punct de montare local pe
client (file handle este stocat in codul clientului NFS si orice cerere
pentru sistemul de fisiere respectiv va utiliza acest file handle)
40

RPC|Utilizari
• Accesul la fisiere la distanta NFS (Network File System)
– Procesul de montare (protocolul mount)
• Pentru ca un client sa poata accesa fisiere dintr-un sistem
de fisiere, clientul trebuie sa foloseasca protocolul mount

');
COMMIT;
