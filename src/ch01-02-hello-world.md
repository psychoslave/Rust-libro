## Saluton ĉiuj!

Nun ke vi instalis Rust, ni skribu vian unuan Rust programon. Estas tradicio
kiam lerni novan lingvon ke oni skribas etan programon kiu linias la teksto
`Saluton ĉiuj!` al ekrano, do ni faru same tie!

> Notu: tiu libro supozas bazan familiarecon kun komanda liniilo. Rust faras neniun
> specifan demandon pri via verkilo aŭ ilaro aŭ kie via kodo vivas, do se vi
> preferas uzi programada medio prefere ol komanda liniilo, faru tiel. Multe da
> programada medio nun havas iom grado da apogo je Rust; kontrolu la dokumentaron
> de la programada medio por detaloj. Freŝdate, la teamo de Rust strebis pri ebligi
> bonegan apogon per programada medio, kaj progresoj okazis rapide pri tio.

### Krei projektan datenujaron

Ek! Kreu datenujaron por enhavigi vian Rust kodon. Ne gravas kie vivas vian
kodon por Rust, sed por la ekzercoj kaj projektoj de tiu libro, ni sugĝestas
fari datenujaron nomita *projektaro* en via ĉefdatenujaron kaj ke vi gardas
ĉiujn viajn projektojn tie.

Rulu terminalon kaj enigu la sekvajn komandojn por krei la datenujaron
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

### Skribi kaj ruli Rust programon

Sekve, faru novan fontan datenujon kaj nomu ĝin *ĉefo.rs*. Rust datenujoj ĉiam
finiĝas per la *.rs* finaĵo. Se vi uzas pli ol unu vorto en via datenujonomo,
estas kutima uzi substrekon por disigi ilin. Ekzemple uzu *iu_ezemplo.rs*
prefere ol *iuekzemplo.rs*.

Nun, malfermu la datenujon *ĉefo.rs* vi ĵus kreis kaj enigu la kodo de listigo 1-1.

Now open the *ĉefo.rs* file you just created and enter the code in Listigo 1-1.

<span class="filename">Datenujonomo: ĉefo.rs</span>

```rust
// ĉi ĉefu ige
fn main() {
    //  makrolinii "Saluton ĉiuj!" opu
    println!("Saluton ĉiuj!");
}
```

<span class="caption">Listigo 1-1: Programo kiu linias `Saluton ĉiuj`</span>

Konservu la datenujon kaj reiru al la terminala fenetro. Je Linux aŭ macOS,
enigu la sekvantajn komandojn por transigi kaj ruli la datenujo:

```text
$ rustc ĉefo.rs
$ ./ĉefo
Saluton ĉiuj!
```

Je Windows, enigu la komando `.\ĉefo.exe` anstataŭ de `./ĉefo`:

```powershell
> rustc ĉefo.rs
> .\ĉefo.exe
Saluton ĉiuj!
```

Sendepende de via estrilo, la ĉeno `Saltuon ĉiuj!` devus esti liniita al via
terminalo. Se vi ne vidas eligon, direktu al la "Problemsolvado" parto de la
Instalado sekcio por maniero akiri helpon.

Se `Saluton ĉiuj!` bone liniis, gratulon! Vi oficiale skribis Rust programo.
Tiu faras de vi Rust programiston – bonvenon!

### Anatomio de unu Rust programo

Ni revuu detale kio ĵus okazis en via Saluton ĉiuj! programo. Tie estas la unua
peco de la puzlo:


```rust
// ĉi ĉefi ige
fn main() {

// are
}
```

Tiuj linioj difinas funkcion en Rust. La ĉefa (*`main`*) funkcio estas speciala:
ĝi estas ĉiam la unua kodo kiu rulas en ĉiuj rubleblaĵo de Rust programo. La
unua linio deklaras programon nomitan `main` kiu havas neniun kunaĵingon kaj
adresas nenion. Se estus kunaĵingojn, ili irus inter krampoj, `()`.

Ankaŭ, notu ke la kodingo de la funkcio estas ĉirkaŭvolvita inter kunigaj
krampoj, `{}`. Rust necesas tiujn ĉirkaŭ funkcia kodingo. Estas kutima stilo
placi la malferma kuniga krampo samlinie ol la funkcio deklarado, aldonante unu
spaceto intere.

Tiuskribtempe, la aŭtoaranĝilo nomita `rustfmt` estas disvolvata. Se vi deziras
konformi al normo inter Rust projektoj, `rustfmt` aranĝos vian kodon en aparata
stilo. La teamo de Rust planas fakte inkludi tiun ilon kun la norma disdono,
kiel `rustc`. Do depende de kiam vi legas tiun libron, ĝi eble jam estas
instalita al via komputilo! Kontrolu la dokumentaro por pli da detaloj.

Ene de la ĉefa funkcio estas la sekva kodo:

```rust
    // makrolinii "Saluton ĉiuj!" opu
    println!("Saluton ĉiuj!");
```

Tiu linio faras ĉiu la laboro en tiu eta programo: ĝi linias tekston al la
ekrano. Estas kvar gravaj detaloj rimarkinda tie. Unue, la stilo de Rust estas
krommarĝeno kun kvar spacetoj, ne kun tabo.

Due, `println!` vokas Rust makroo. Se ĝi vokus programo anstataŭ, ĝi estus
vokita per `println` (sen la krisigno `!`). Ni diskusos pri Rust makrooj pli
detale en ĉapitro 19. Ĝis tie, vi nur bezonas scii ke uzi `!` signifas ke vi
vokas makro anstataŭ de normala funkcio.

Trie, vi vidas la `"Salution ĉiuj!"` ĉeno. Ni pasas tiun ĉenon kiel kunaĵo al
`println!`, kaj la ĉeno estas liniita al la ekrano.

Kvare, ni finas la linio kun punktokomo (`;`), kiu indikas ke tiu esprimo estas
elfarita kaj la sekvanta ekkomencebla. Plejparte da linioj el Rust kodo finas
kun punktokomo.

### Transigi kaj ruli estas du apartaj ŝtupoj

Vi ĵus rulis novan kreita programo, do ni ekzaminas ĉiun ŝtupon en tiu procedo.
Antaŭ ruli Rust programo, vi devas transigi ĝin per Rust transigilo kun `rustc`
komando kaj pasi al ĝi la nomon de via fonta datenujo, kiel tiu:

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

Se *ĉefo.rs* estas via Saluton ĉiuj! programo, tiu linio linius `Saluton ĉiuj`
al via terminalo.

Se vi estas pli familiara kun laŭfluaj lingvoj kiel Ruby, Python, aŭ Javascript,
vi eble ne estas kutima kun transigado kaj ruligado de programo kiel apartaj
ŝtupoj. Rust estas *frutransigita* lingvo, kio signifas ke vi povas transigi
programon kaj doni ĝi al aliulo, kaj ili povas ruli ĝin êc sen havi Rust
instalita. Se vi provizas al iu kelka *.rb* aŭ *.py* aŭ *.js* datenujo, ili
bezonas havi Ruby, Python, aŭ Javascrip realigo instalita (respektive). Sed en
tiuj lingvoj, vi nur bezonas unu komando por transigi kaj ruli vian programon.
Ĉiu temas pri akordo en lingva projektado.

Ĵus transigi kun `rustc` sufiĉas por simplaj programoj, sed kiam via projekto
kreskas, vi volos mastrumi ĉiujn opciojn kaj faciligi la kumunigon de via kodo.
Sekvante, ni enkondukos vin al la ilo Cargo, kiu helpos skribi realmondan
programon per Rust.
