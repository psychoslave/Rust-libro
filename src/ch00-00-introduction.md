# Enkonduko

Bonvenon al la *Rust elordonalingvo*, enkonduka libro pri Rust. La Rust
elordonalingvo helpas vin verki pli rapida, pli fidinda elordonoj. Alt-nivelaj
ergonomaĵoj kaj bas-nivelaj stirado estas ofte antagonistaj en elordonalingvaj
projekto; Rust kontestas tiun konfllikton. Per ekvilibrigo de fortaj teknikaj
kapabloj kaj bonegaj spertoj de elordonistoj, Rust provizas al vi opcion stiri
basanivelajn detalojn (kiel uzado de memoro) sen ĉiuj ĝenoj kumite asociita kun
tio.

# Por kiu estas Rust

Rust estas taŭgega por multe da personoj por variaj kialoj. Ni zorgu kelkajn el
la pli gravaj.

### Teamoj de elordonistoj

Rust montriĝu produktema ilo por kunlabori inter larĝaj teamoj de elordonistoj
kun variaj niveloj de sistema-elordonado-kono. Basanivela kodo estas ema al
multe da subtilaj difektoj, kiuj en plejparto de aliaj elordonalingvoj povas
estis kaptita nur per ampleksa provado kaj zorga kodorevizo fare de spertaj
elordonistoj. Kun Rust, la transigilo ludas la rolon de gardilo rifuzante
transigi el kodo kun tiuj malfacile kapteblaj difektoj, inklude kunrulaj
difektoj. Labore laŭ la transigilo, la teamo povas zorgi pri la logiko de la
elordono anstataŭ spuri difektojn.

Rust ankaŭ provizas nunajn disvolvadajn ilojn al sistema elordona monde:

* Cargo, la inkuldita dependa estrilo kaj konstruilo, faras aldonadon,
  transigadon, kaj estradon de dependoj sendoloran kaj kongruan trans Rust
  medisistemo.
* Rustfmt certigas kongruan kodostilon trans disvolvistoj.
* La servilo de la Rust lingvo provides elordonamedio integrado por
  kodoplenumigo kaj kuntekstigita-eraro-mesaĝoj.

Uzante tiuj kaj aliaj iloj de Rust elordonamedio, disvolvistoj povas esti
produktema dum verkado de sistema-nivela kodo.

### Studentoj

Rust estas por studentoj kaj tiuj, kiuj estas interisata lerni pri sistemaj
konceptoj. Uzante Rust, multe da personoj lernis pri temoj kiel sistemestrila
disvolvado. La komunumo estas bonvenigema kaj kontenta respondi demandojn de
studentoj. Tra efortoj kiel tiu ĉi libro, Rust teamo volas fari sistemaj
konceptoj pli alirebla por pli da personoj, speciale tiuj novaj en elordonado.

### Kompanioj

Centoj da kompanioj, larĝaj kaj etaj, uzas Rust en produktejo por multe da
taskoj. Tiuj taskoj inkludas ordonĉerpajn ilojn, retservilojn,
disvolva-operaciajn iladojn, enkorpigitajn aparatojn, aŭdiajn kaj videajn
transkodadojn, ĉifravalutojn, bioinformadikojn, serĉilojn, aplikaĵojn de
aĵreton, kaj eĉ ĉefajn partojn de la Firefox retumilo.

### Disvolvistoj de liberaj elordonoj

Rust estas por personoj kiuj deziras konstrui la Rust elordonalingvon,
komunumon, disvolvadajn ilojn, kaj elordontekojn. Ni ŝategus havi vian
kontribuon en la Rust lingvo.

### Personoj kiuj estimas rapideco kaj stabileco

Rust estas por personoj kiuj avidas rapidecon kaj stabilecon en lingvo. Per
rapideco, ni signifas tian de la elordonoj ke vi kreas kun Rust kaj la rapideco
al kiu Rust eblas vin verki ilin. La kontroloj de la transigilo de Rust
certigas stabilon trans aldonoj de ivoj kaj restrukturigado. Tiu estas kontraste
al la rompiĝema hereda kodo en lingvoj sen tiuj kontroloj, kiuj disvolvistoj
ofte timas ŝanĝi. Strebante nulkosta abstrakto, altanivelaj ivoj kiuj
transigas al basanivelaj kodo tiel rapida ol ule verkita kodo, Rust klopodas
fari sekura kodo esti ankaŭ rapida kodo.

La Rust lingvo esperas subteni ankaŭ multe da aliaj uzuloj; tiuj menciitaj tie
ĉi estas nur kelkaj el la pli koncernatoj. Entute, la plej granda ambicio de
Rust estas elimini la kompromiojn, kiujn disvolvistoj havas akceptitan dum
dekoj da jaroj per providado de sekureco *kaj* produktemeco, rapideco *kaj*
ergonomaĵoj. Provu Rust kaj vidu se ĝia elektaro funkcias por vi.

## Por kiu estas tiu libro

Tiu libro supozas ke vi jam verkis kodon per alia programlingvo sed ne faras
ajn supozon pri kiu. Ni pravis fari la materialon amplekse alireblan por tiuj el
larĝa diverseco de elordonaj devenoj. Ni ne ŝparas multe da tempo paroli pri kio
elordonado *estas* aŭ kiel pensi pri tio. Se vi estas plene novulo pri
elordonado, vi estus pli bone servita per legado de libro kiu specife provizas
enkonduko al elordono.

## Kiel uzi tiun libron

Ĝenerale, tiu libro supozas ke vi legas ĝin vice ekde fronto al dorso. Postaj
ĉapitroj konstruas sur konceptojn el fruaj ĉapitroj, kaj fruaj ĉapitroj eble ne
fosos detajle temojn; tipe ni revizitas la temon en iu posta ĉapitro.

Vi trovos du specoj da ĉapitroj en tiu libro: prikonceptaj ĉapitroj kaj
priprojektaj ĉapitroj. En prikonceptaj ĉapitroj, vi lernos pri iu aspekto de
Rust. En priprojektaj ĉapitrojn, ni konstruos etaj elordonoj kune, aplikante tio
ke ni lernis ĝis nun.  Ĉapitro 2, 12 kaj 20 estas priprojektaj ĉapitroj; la
resto estas prikonceptaj ĉapitroj.

Ĉapitro 1 priskribas kiel instali Rust, kiel skribi "Saluton, mondo!" elordonon,
kaj kiel uzi Cargo, la pakestrilo kaj konstruilo de Rust. Ĉapitro 2 estas
rekta enkonduko al Rust lingvo. Tie ni traktas konceptojn altnivele, kaj dum
postaj ĉapitroj ni providos aldonotajn detajlojn. Se vi deziras ekmalpurigi
viajn manojn tuj, ĉapitro estas la taŭga loko. Unue, vi povus eĉ preterpasi la
ĉapitro 3, kaj rekte iri al ĉapitro 4 por lerni pri sistemo de proprigo de Rust.
Kvankam, se vi estas speciale asidua lernanto kiu preferas lerni ĉiuj detajloj
antaŭ iri al la sekvaj, vi eble preferos preterpasi ĉaptiron 2 kaj rekte iri al
ĉapitro 3, returnonte al ĉapitro 2 kiam vi ŝatos labori projekton aplikantan
detajlojn vi lernis.

Ĉapitro 5 priparolas strukturojn kaj propraĵigojn, kaj ĉaptiro 6 kovras
numeradon, `kongrui` (*`match`*) esprimojn, kaj la `se tie` (*`if let`*)
ŝaltpelo. Vi uzos strukturojn kaj numeradojn por fari laŭsituan tipojn en Rust.

En ĉapitro 7, vi lernos pri sistemo de moduloj de Rust, pri reguloj de privateco
por organizi vian kodon kaj ĝian ĉies uzivaro. Ĉapitro 8 diskutas kurantajn
strukturojn de datena kolekto provizatajn en la norma elordonteko, kiel
vektoroj, ĉenoj, kaj hakujoj. Ĉapitro 9 esploras filozofio ka teknikoj de
erartraktado de Rust.

Ĉapitro 10 traktas ĝeneraligoj, trajtoj, kaj traftutoj, kiuj donas al vi la
povon difini kodon kiu aplikas al plurajn tipojn. Ĉapitro 11 estas dediĉa al
testado, kiu eĉ kun garantioj de sekureco de Rust estas necesa por certigi ke
la logiko de via elordono estas korekta. En ĉapitro 12, ni konstruos nian
propran realigon de subaro de funkciaro de la ordonĉerpa ilo `grep` kiu serĉas
tekston en datenujoj. Por tio, ni uzos multe da konceptoj antaŭdiskutitaj.

Ĉapitro 13 esploras fermoj kaj sekvigiloj: ivoj de Rust kiuj venas el
aĵigila-elordona-lingvoj. En ĉapitro 14, ni ekzaminos Cargo pli ampleks kaj
parolos pri plej bonaj paktikoj por komunigi viajn elordontekoj kun aliaj.
Ĉapitro 15 pritraktas saĝajn deiloj kiujn provizas la norma elordonteko kaj la
trajtoj kiuj eblas iliaj funkciaro.

En ĉapitro 16, ni iras tra malsamaj modeloj de kunrulaj elordonadoj kaj parolos
pri kiel Rust helpas vin elordoni sentime kun pluraj fadenoj. Ĉapitro 17
analizas kiel Rust idiomaĵoj komparas al principoj de objektema elordono ke vi
eble kutimiĝis.

Ĉapitro 18 estas referenco pri skemoj kaj skemkongruo, kiuj estas fleksegaj
manieroj esprimi ideojn tra la tutaj elordonoj de Rust. Ĉapitro 19 enhavas
plenan perspektivon de evoluintaj interesindaj temoj, inklude sensekura Rust,
makrooj, kaj pli pri traftuto, trajtoj, tipoj, aĵigiloj, kaj fermoj.

En ĉapitro 20, ni kompletigos projekton en kiu ni realigos basanivela multfadena
retservilo!

Fine, iuj apendicoj enhavas praktikajn informojn pri la lingvo laŭ pli
referencema aranĝo. Apendico A traktas ĉefleksojn de Rust, apendico B traktas
elaĵilojn kaj simbolojn de Rust, apendico C traktas deriveblajn trajtojn
providatajn de norma elordonteko, apendico D traktas iujn praktikajn
disvolvadilojn, kaj apendico E eksplikas eldonojn de Rust.

Estas neniu malbona vojo ligi tiun libron: se vi deziras preterpasi poste, iru!
Vi eble bezonos retrosalti la pli fruaj ĉapitroj se vi spertas iun ajn
miskomprenon. Sed faru ion ajn funkciantan porr vi.

<span id="ferris"></span>

Grava parto de proceso de Rust lernado estas lerni kiel legi mesaĝoj de eraroj
ke la transigilo montras: tiuj gvidas vin al funkcianta kodo. Tiel, ni provizas
multe da ekzemploj de kodo kiuj ne transigas, kune kun eraromesaĝoj ke la
transigilo montros en ĉiu situacio. Atentu ke se vi uzas kaj rulas hazarda
ekzemplo, tio eble ne transigos! Certigu ke vi legas la ĉirkaŭan tekston por
scii ĉu la ekzemplo ke vi pravas ruli estas intence erara. Ferris ankaŭ helpos
vin distingi kodon kiu estas intencie nefunkcianta:

| Ferris                                                                 | Signifo                                          |
|------------------------------------------------------------------------|--------------------------------------------------|
| <img src="img/ferris/does_not_compile.svg" class="ferris-explain">     | Tiu kodo ne transigas!                           |
| <img src="img/ferris/panics.svg" class="ferris-explain">               | Tiu kodo panikas!                                |
| <img src="img/ferris/unsafe.svg" class="ferris-explain">               | Tiu kodingo enhavas sensekura kodo.              |
| <img src="img/ferris/not_desired_behavior.svg" class="ferris-explain"> | Tiu kodo ne produktas la dezirata konduto.       |

Plejofte, ni gvidos vin al la korekta versio de ajna kodo kiu ne transigas.

## Fontkodo

La fontaj datenujoj kiuj generis tiun libron povas esti trovita al
[GitHub][book].

[book]: https://github.com/psychoslave/Rust-libro
