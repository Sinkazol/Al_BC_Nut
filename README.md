# Al_BC_Nut
Junior – Nagy feladat
A feladat az lenne, hogy a lokális gépeden vagy a VPC-n kellene csinálni egy táplálkozás modult. Mindent, amit tudsz EVENT-esen oldj meg. Fontos, hogy a mező nevek legyenek angolul.

Kellene egy törzstábla ahova fel tudok venni egy adott összetevőt, annak fehérje, szénhidrát, zsír tartalmát, valamint kalória tartalmát KJ-ban és Kcal-ban is. Legyen benne mértékegység is (a standard NAV mértékegységtörzsből lehessen választani) hogy az adott makró tápanyagok mire vonatkoznak. Legyen a tábla neve Macronutrients, de ha találsz jobbat a névre rád van bízva ez csak egy példa.

Ezt követően kellene a Sales Header és Sales Line táblák és Sales Order, Sales Order Subform pagek mintájára egy fej soros kapcsolat. Nutrition Header, Nutrition Line, illetve Nutrition Order, Nutrition Order Subform de ha találsz jobbat a névre rád van bízva ez csak egy példa.
 
A fejben ki kell tudni tölteni egy vevőkódot a standard NAV vevőtörzsből és a vevőkód kiválasztása után a vevő neve automatikusan töltődjön szintén a vevőtörzsből és egy dátumot, ami megmondja, hogy az adott táplálkozás, melyik napra vonatkozik. A táblának még tartalmazni kell egy statust, ami option típusú. Értéke Nyitott, Lezárt. 

Példa:
Táplálkozási szám	TAP-00001
Vevő	000089
Vevő neve	Kathi Béla
Dátum	2017.11.22
Státusz	Nyitott

A sorokban fel lehet venni az előzőleg felvett törzstáblából a makrótápanyag kódját lookup-al(Innen tudjak is elnavigálni a törzsadathoz, úgy hogy szerekeszteni is lehessen), ami kitölti a megnevezés mezőt is. A táblának tartalmazni kell mennyiséget, mértékeganje, szénhidrát, zsír valamit a kalóriákat és a mennyiség beírása esetén a tápanyagmezőket fel kell szorozni vele (Pl.: Mennyiség: 5, A kiválasztott tápanyag fehérje értéke a Macronutrients táblában: 10, akkor a fehérje értéke a soron = 5 * 10 = 50). 


Példa:

Táplálkozási szám	TAP-00001
Sorszám	10000
Tápanyag kód	AZab
Megnevezés	Apró szemű zab
Mennyiség	10
Fehérje	150
Zsír	50
Szénhidrát	550
Mértékegység	100/g
KJ	2000
Kcal	300

A fejbe (Nutrition Header) kellenek flowfield mezők, amelyek az összesített tápanyagokat tartalmazzák soronként összesítve fehérjére, zsírra, szénhidrátra és kalóriákra (Kj,kcal). Ezt a lookupot le kell tudnom fúrni. Ezek a flowfieldek automatikusan frissüljenek egy új sor felvétele alapján.

A Pagere kell négy funkció: Táplálkozás lezárása, Táplálkozás újranyitása, Exportálás fájlba (Ez tetszőleges formátum lehet pl.: CSV, XML, Excel. FONTOS: csak az adott bizonylatot exportálja), Könyvelés. A táplálkozás lezárása és újranyitása csak a státusz mezőt változtatja. Lezárni az adott táplálkozást csak akkor lehessen, ha a dátum ki van töltve.
Könyvelés: Átrakja könyvelt tételekbe (Transferfields) hasonlóan a Sales Invoice Header és Sales Invoice Line-hoz (név konvenciót neked kell kitalálni ezek és a fentiek alapján). Ezt követően már nem módosítható, hiszen ez egy könyvelt tétel. Fontos, hogy a könyvelt bizonylat is számozási körből kapja a bizonylatszámot, ne ugyanazt kapja, mint amiről könyveljük. Paramétertől függően lehessen eldönteni, hogy könyvelés után törlése kerüljön a bizonylat, vagy sem (Fejben egy boolean mező esetleg).

Ezt követően kell egy lista, ami vevőnként tartalmazza, napra lebontva az összes aznap elfogyasztott tápanyagokat és kalóriákat, ennek alapja legyen egy query de lehet egy sima page is (Könyvelt tételekből kell dolgoznia). A listán lehessen szűrni adott napra és vevőre, ha nem adunk meg szűrést akkor mindent mutatni kell.

A végén az lenne a cél, hogy egy report is legyen. Itt is lehessen dátumonként csoportosítani. Tehát tudnom kell, hogy adott napon mennyi kalóriát, fehérjét stb. vittem be. Szintén könyvelt tételekből dolgozik. Lehessen futtatni a könyvelt bizonylatokról és az adott bizonylaton állva csak azt adja át a reportnak.

Természetesen ezekhez kellenek pagek, menük, codeunitok, de ez már rád van bízva. Nem akarok mindent a szádba rágni, légy kreatív, ha van kérdés keresd a mentorodat.

Ezzel elleszel egy darabig, idő korlát nincs, google-ban, mibuso-n rengetek segítség van. A cél az is lenne, hogy a googlet jól tudd használni.

A fejlesztésedet dokumentáld az érintett objektumok Documentation triggerébe és verziózd is az objektumok verziólistájában, valamint rögzítsd az Object Managerbe.
Az érintett standard szerint elvárt objektumok legyenek kirakva menübe.
