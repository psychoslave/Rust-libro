## Saluton ĉiuj!

Nun ke vi instalis Rust, ni skribu vian unuan Rust elordonon. Estas tradicio
kiam lerni novan lingvon ke oni skribas etan elordonon kiu linias la teksto
`Saluton ĉiuj!` al ekrano, do ni faru same tie!

> Notu: tiu libro supozas bazan familiareco kun ordonĉerpilo. Rust faras neniun
> specifan demandon pri via verkilo aŭ ilaro aŭ kie via kodo vivas, do se vi
> preferas uzi elordonamedio prefere ol ordonĉerpilo, faru tiel. Multe da
> elordonamedioj nun havas iom grado da apogo je Rust; kontrolu la dokumentaro
> de la elordonamedio por detaloj. Freŝdate, la teamo de Rust strebis pri ebligi
> bonegan apogon per elordonamedioj, kaj progresoj okazis rapide pri tio.

### Krei projektan datenujaron

Ek! Kreu datenujaron por enhavigi vian Rust kodon. Ne gravas kie vivas vian
kodon por Rust, sed por la ekzercoj kaj projektoj de tiu libro, ni sugĝestas
fari datenujaron nomita *projektaro* en via ĉefdatenujaron kaj ke vi gardas
ĉiujn viajn projektojn tie.

Rulu terminalon kaj enigu la sekvajn ordonojn por krei la datenujaron
*projektaro* kaj datenujaron por la "Saluton ĉiuj!" projekto en la *projektaro*
datenujaro.

Por Linux kaj macOS, enigu tiun:

```text
$ mkdir -p ~/projektaro/salutilo && cd $_
```

Por Windows CMD, enigu tiun:

```cmd
> mkdir "%USERPROFILE%\projektaro"
> cd /d "%USERPROFILE%\projektaro"
> mkdir salutilo
> cd salutilo
```

Por Windows PowerShell, enigu tiun:

```powershell
> mkdir $env:USERPROFILE\projektaro
> cd $env:USERPROFILE\projektaro
> mkdir salutilo
> cd salutilo
```

### Skribi kaj ruli Rust elordonon

Sekve, faru novan fonta datenujo kaj nomu ĝin *ĉefo.rs*. Rust datenujoj ĉiam
finiĝas per la *.rs* finaĵo. Se vi uzas pli ol unu vorto en via datenujonomo,
estas kutima uzi substrekon por disigi ilin. Ekzemple uzu *iu_ezemplo.rs*
prefere ol *iuekzemplo.rs*.

Nun, ovru la datenujon *ĉefo.rs* vi ĵus kreis kaj enigu la kodo de listigo 1-1.

Now open the *ĉefo.rs* file you just created and enter the code in Listigo 1-1.

<span class="filename">Datenujonomo: ĉefo.rs</span>

```rust
// ĉi ĉefu ige
fn main() {
    //  makrolinii "Saluton ĉiuj!" opu
    println!("Saluton ĉiuj!");
}
```

<span class="caption">Listigo 1-1: Elordono kiu linias `Saluton ĉiuj`</span>

Konservu la datenujon kaj reiru al la terminala fenetro. Je Linux aŭ macOS,
enigu la sekvantajn ordonojn por transigi kaj ruli la datenujo:

```text
$ rustc ĉefo.rs
$ ./ĉefo
Saluton ĉiuj!
```

Je Windows, enigu la ordono `.\ĉefo.exe` anstataŭ de `./ĉefo`:

```powershell
> rustc ĉefo.rs
> .\ĉefo.exe
Saluton ĉiuj!
```

Sendepende de via estrilo, la ĉeno `Saltuon ĉiuj!` devus esti liniita al via
terminalo. Se vi ne vidas eligon, direktu al la "Problemsolvado" parto de la
Instalado sekcio por maniero akiri helpon.

Se `Saluton ĉiuj!` bone liniis, gratulon! Vi oficiale skribis Rust elordono.
Tiu faras de vi Rust elordoniston – bonvenon!

### Anatomio de unu Rust elordono

Ni revuu detale kio ĵus okazis en via Saluton ĉiuj! elordono. Tie estas la unua
peco de la puzlo:


```rust
// ĉi ĉefi ige
fn main() {

// are
}
```

Tiuj linioj difinas aĵigilon en Rust. La ĉefa (*`main`*) aĵigilo estas speciala:
ĝi estas ĉiam la unua kodo kiu rulas en ĉiuj rubleblaĵo de Rust elordono. La
unua linio deklaras elordonon nomitan `main` kiu havas neniun kunaĵingon kaj
adresas nenion. Se estus kunaĵingojn, ili irus inter krampoj, `()`.

Ankaŭ, notu ke la kodingo de la aĵigilo estas ĉirkaŭvolvita inter kunigaj
krampoj, `{}`. Rust necesas tiujn ĉirkaŭ aĵigila kodingo. Estas kutima stilo
placi la ovra kuniga krampo samlinie ol la aĵigilo deklarado, aldonante unu
spaceto intere.

Tiuskribtempe, la aŭtoaranĝilo nomita `rustfmt` estas disvolvata. Se vi deziras
konformi al normo inter Rust projektoj, `rustfmt` aranĝos vian kodon en aparata
stilo. La teamo de Rust planas fakte inkludi tiun ilon kun la norma disdono,
kiel `rustc`. Do depende de kiam vi legas tiun libron, ĝi eble jam estas
instalita al via komputilo! Kontrolu la dokumentaro por pli da detaloj.

Ene de la ĉefa aĵigilo estas la sekva kodo:

```rust
    // makrolinii "Saluton ĉiuj!" opu
    println!("Saluton ĉiuj!");
```

Tiu linio faras ĉiu la laboro en tiu eta elordono: ĝi linias tekston al la
ekrano. Estas kvar gravaj detaloj rimarkinda tie. Unue, la stilo de Rust estas
krommarĝeno kun kvar spacetoj, ne kun tabo.

Due, `println!` vokas Rust makroo. Se ĝi vokus elordono anstataŭ, ĝi estus
vokita per `println` (sen la krisigno `!`). Ni diskusos pri Rust makrooj pli
detale en ĉapitro 19. Ĝis tie, vi nur bezonas scii ke uzi `!` signifas ke vi
vokas makro anstataŭ de normala aĵigilo.

Trie, vi vidas la `"Salution ĉiuj!"` ĉeno. Ni pasas tiun ĉenon kiel kunaĵo al
`println!`, kaj la ĉeno estas liniita al la ekrano.

Kvare, ni finas la linio kun punktokomo (`;`), kiu indikas ke tiu esprimo estas
elfarita kaj la sekvanta ekkomencebla. Plejparte da linioj el Rust kodo finas
kun punktokomo.

### Transigi kaj ruli estas du apartaj ŝtupoj

Vi ĵus rulis novan kreita elordono, do ni ekzaminas ĉiun ŝtupon en tiu procedo.
Antaŭ ruli Rust elordono, vi devas transigi ĝin per Rust transigilo kun `rustc`
ordono kaj pasi al ĝi la nomon de via fonta datenujo, kiel tiu:

```text
$ rustc ĉefo.rs
```

Se vi havas C aŭ C++ deveno, vi rimarkos ke tio estas simila kun `gcc` aŭ
`clang`. Post transigado suksecis, Rust eligas duuma ruleblaĵo.

Ĉe Linu kaj macOS vi povas vidi la ruleblaĵo per rulado de `ls` en via ŝelo
tiele:

```text
$ ls
main  ĉefo.rs
```

Kun PowerShell ĉe Windows, vi povas uzi `ls` ankaŭ, sed vi vidos tri datenujojn:

```text
> ls


    Directory: Path:\to\the\project


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----         6/1/2018   7:31 AM         137728 ĉefo.exe
-a----         6/1/2018   7:31 AM        1454080 ĉefo.pdb
-a----         6/1/2018   7:31 AM             14 ĉefo.rs
```

Kun CMD ĉe Windows, vi enigos la sekvantan:

```cmd
> dir /B %= /B opcio indikas de nur montri la datenujnomoj =%
ĉefo.exe
ĉefo.pdb
ĉefo.rs
```

Tiu montras la fontkoda datenujo kun la *.rs* finaĵo, la ruleblaĵa datenujo
(*ĉefo.exe* ĉe Windows, sed *ĉefo* ĉe aliaj platformoj), kaj, kiam uzante CMD,
datenujo enhaventa korektaj informacioj kun la *.pdb* finaĵo. El tie, vi rulas
la *ĉefo* aŭ *ĉefo.exe* datenujo, tiele:

```text
$ ./ĉefo # aŭ .\ĉefo.exe ĉe Windows
```

Se *ĉefo.rs* estas via Saluton ĉiuj! elordono, tiu linio linius `Saluton ĉiuj`
al via terminalo.

Se vi estas pli familiara kun laŭfluaj lingvoj kiel Ruby, Python, aŭ Javascript,
vi eble ne estas kutima kun transigado kaj ruligado de elordono kiel apartaj
ŝtupoj. Rust estas *frutransigita* lingvo, kio signifas ke vi povas transigi
elordonon kaj doni ĝi al aliulo, kaj ili povas ruli ĝin êc sen havi Rust
instalita. Se vi provizas al iu kelka *.rb* aŭ *.py* aŭ *.js* datenujo, ili
bezonas havi Ruby, Python, aŭ Javascrip realigo instalita (respektive). Sed en
tiuj lingvoj, vi nur bezonas unu ordono por transigi kaj ruli vian elordonon.
Ĉiu temas pri akordo en lingva projektado.

Ĵus transigi kun `rustc` sufiĉas por simplaj programoj, sed kiam via projekto
kreskas, vi volos mastrumi ĉiujn opciojn kaj faciligi la kumunigon de via kodo.
Sekvante, ni enkondukos vin al la ilo Cargo, kiu helpos skribi realmondan
elordonon per Rust.
