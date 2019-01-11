## Saluton, Cargo!

Cargo estas konstrusistemo kaj pagestrilo de Rust. Plejparte de rustaculoj uzas
tiu ilo por estri iliaj Rust projektoj ĉar Cargo traktas multe da taskoj por vi,
kiel konstrui vian kodon, elŝuti la elordonotekojn kiun via kodo dependas, kaj
konstrui tiujn elordonotekojn. (Ni nomas elordonotekojn kiun bezonas via kodo
*dependecoj*.)

La plej simplaj Rust elordonoj, kiel tiu ke ni skribis ĝis nun, ne havas ajnan
dependecon. Do se ni konstruigis Saluton ĉiuj! projekton kun Cargo, ĝi nur uzus
la partoj de Cargo kiuj traktas kodkonstruadon. Kiel vi skribas pli kompleksajn
Rust elordonoj, vi aldonas dependecoj, kaj se vi komencas projekto uzante Cargo,
aldoni dependecojn estas multe pli facile farota.

Ĉar la plej multa da Rust projektoj uzas Cargo, la resto de tiu libro supozas ke
ankaŭ vi uzas Cargo. Cargo kune instalas kun Rust se vi uzis la oficialajn
instalilojn diskutitiajn en la sekcio "Instalado". Se vi instalis Rust per alia
rimedo, kontrolu ĉu Cargo estas instalita enigante la sekvanto en via terminalo:

```text
$ cargo --version
```

Se vi vidas numeron de versio, vi havas ĝin! Se vi vidas eraron, kiel `ordono ne
trovita`, rigardu en la dokumentaron de via metodo de instalado por determini
kiel intali Cargo aparte.

### Krei projekton kun Cargo

Ni kreu novan projekto per Cargo kaj kiel ĝi malsamas de nia origina
Saluton ĉiuj! projekto. Iru denove en via *projektaro* datenujaro (aŭ ie ajn vi
decidis konservi vian kodon). Tiam, ajnestrulile, rulu la sekvanton:

```text
$ cargo new saluton_cargo
$ cd saluton_cargo
```

La unua ordono kreas novan datenujaron nomitan *saluton_cargo*. Ni nomis nian
projekton *saluton_cargo*, kaj Cargo kreas ĝiajn datenujojn en datenujaro kun la
sama nomo.

Iru en la *saluton_cargo* datenujaro kaj listu la datenujojn. Vi vidos ke Cargo
generis du datenujojn kaj unu datenujaro por ni: *Cargo.toml* datenujo kaj
*src* datenujaro enhavanta *main.rs* datenujo. Ĝi ankaŭ primetis novan Git
deponejo kune kun *.gitignore* datenujo.

> Noto: Git estas komuna versiestrilo. Vi povas ŝanĝi `cargo new` por ke ĝi uzas
> alian aŭ neniun versiestrilon per la `--vcs` opcio. Rulu `cargo new --help`
> por vidi haveblan opciojn.

Ovru *Cargo.toml* en via preferata tekstredaktilo. Tio devus ŝajni simile al la
kodo en Listigo 1-2.

<span class="filename">Datenujonomo: Cargo.toml</span>

```toml
[package]
name = "saluton_cargo"
version = "0.1.0"
authors = ["Via Nomo <vi@servo.ie>"]
edition = "2018"

[dependencies]
```

<span class="caption">Listigo 1-2: Enhavo de *Cargo.toml* generita per `cargo
new`</span>

Tiu datenujo estas aranĝita laŭ [*TOML*][toml]<!-- ignoru --> (klara minimuma
lingvo de Tomo, Angle *Tom’s Obvious, Minimal Language*), kiu estas agorda
aranĝo de Cargo.

[toml]: https://github.com/toml-lang/toml

La unua linio, `[pako]` *`[package]`*, estas ĉapo de sekcio kiu indikas ke la
sekvantaj ordonoj agordas la pakon. Kiel ni aldonas pli da informoj al tiu
datenujo, ni aldonos novajn sekciojn.

La sekva kvar linioj agordas informaojn ke Cargo bezonas por transigi vian
elordonon: la nomo, la versio, kaj kiu skribis ĝin. Cargo akiras vian nomon kaj
retpoŝto el via medio, do se tia informo ne estas taŭga, korektu la informon nun
kuj konservu la datenujon. Ni parolos pri la `eldono` (`edition`) datenero en
Apendico E.

La lasta linio, `[dependeco]` (*`[dependencies]`*), estas komenco de sekcio por
ke listi ajnan dependecon de via projekto. En Rust, pakoj de kodo estas nomitaj
kestoj (*crates*). Ni ne bezonos ajnan keston por tiu projekto, sed ni bezonos
tian en la unua projekto de ĉapitro 2, do ni uzos tiam tiun sekcion de
dependecoj.

Nun ovru *src/main.rs* kaj rigardu:

<span class="filename">Datenujonomo: src/main.rs</span>

```rust
fn main() {
    println!("Saluton ĉiuj!");
}
```

Cargo generis Saluton ĉiuj! elordono por vi, tutsame al tiu ni skribis en
listigo 1-1! Ĝis nun, la malsamoj inter nia antaŭa projekto kaj la projekto ke
Cargo generis estas ke Cargo enmetis kodon en la datenujaro *src*, kaj ke ni
havas *Cargo.toml* agordan datenujon en la supra datenujaro.

Cargo atentas ke viaj fontdatenujoj vivas en la *src* datenujaro. La
supra datenujaro de la projekto estas nur por LEGINDA datenujoj, informo de
licenco, datenujoj de agordo, kaj io ajn alia ne rilata al via kodo. Uzi Cargo
helpas vin organizi viajn projektojn. Estas unu placo por ĉio, kaj ĉio estas al
ĝia placo.

Se vi komencis projekton kiu ne uzas Cargo, kiel ni faris kun Saluton ĉiuj!
projekto, vi povas ŝanĝigi ĝin al projekto kiu ja uzs Cargo. Movu la kodon de la
projekto en la *src* datenujaro kaj kreu taŭgan *Cargo.toml* datenujon.
### Konstrui kaj ruli Cargo projekton

Nun, ni rigardu kion estas malsama kiam ni konstruas kaj rulas elordonon
Saltuon ĉiuj! kun Cargo! Ĉe via *saluton_cargo* datenujaro, konstruu vian
projekton per enigo de la sekva ordono:

```text
$ cargo build
   Compiling saluton_cargo v0.1.0 (file:///projects/saluton_cargo)
    Finished dev [unoptimized + debuginfo] target(s) in 2.85 secs
```

Tiu ordono kreas ruleblan datenujon en *target/debug/saluton_cargo* (aŭ
*target\debug\saluton_cargo.exe* ĉe Windows) anstataŭ de via nuna datenujaro.
Vi povas ruli ĝin kun tiu ordono:

```text
$ ./target/debug/saluton_cargo # aŭ .\target\debug\saluton_cargo.exe ĉe Windows
Saluton ĉiuj!
```

Se ĉio bone iras, `Saluton ĉiuj!` devus esti liniita al la terminalo. Ruli
`cargo build` unuafoje ankaŭ farigas Cargo krei novan datenujo al la supra
nivelo: *Cargo.lock*. Tiu datenujo konservas spuron de la ekzata versio de
dependecoj en via projekto. Tiu projekto ne havos dependecojn, do la datenujo
estas iomete maldensa. Vi neniam bezonos ŝanĝi tiun datenujon ule; Cargo estras
ĝian enhavon por vi.

Ni ĵus konstruis projekton kun `cargo build` kaj rulis ĝin kun
`./target/debug/saluton_cargo`, sed ni ankaŭ povas uzi `cargo run` por transigi
la kodon kaj tiam ruli la rezulontan rulebla-datenujo per unu sola ordono:

```text
$ cargo run
    Finished dev [unoptimized + debuginfo] target(s) in 0.0 secs
     Running `target/debug/saluton_cargo`
Saluton ĉiuj!
```

Notu ke tiafoje ni ne vidis eligon indikantan ke Cargo faris transigadon de
`saluton_cargo`. Cargo konkludis ke neniu datenujo ŝanĝis, do ĝi nur rulis la
elordono. Estus ŝanĝoj, Cargo rekonstruus la projekton antaŭ ruli ĝin, kaj vi
vidus la sekvan eligon:

```text
$ cargo run
   Compiling saluton_cargo v0.1.0 (file:///projects/saluton_cargo)
    Finished dev [unoptimized + debuginfo] target(s) in 0.33 secs
     Running `target/debug/saluton_cargo`
Saluton ĉiuj!
```
Cargo ankaŭ provizas ordonon nomitan `cargo check`. Tiu ordono rapide kontrolas
vian kodon por certigi ĝi estas transigebla sed ne produktas ruleblaĵon.

```text
$ cargo check
   Checking saluton_cargo v0.1.0 (file:///projects/saluton_cargo)
    Finished dev [unoptimized + debuginfo] target(s) in 0.32 secs
```

Kial dezirus vin ne krei ruleblaĵon? Ofte, `cargo check` estas multe pli rapida
ol `cargo build`, ĉar ĝi preterlasi la ŝtupon de produktado de ruleblaĵo. Se vi
konstante kontrolas vian laboron dun vi verkas kodon, uzi `cargo check` akcelos
la procedon! Tiel, multe da rustaculoj rulas `cargo check` periode kiel ili
verkas iliajn elordonojn por certigi ĝi transigas. Poste ili rulas `cargo build`
kiam ili estas preta por uzi la ruleblaĵon.

Ni resumu kion ni lernis ĝis tie pri Cargo:
* ni povas konstrui projekton per `cargo build` aŭ `cargo check`;
* ni povas konstrui kj ruli projekton unuŝtupe per `cargo run`;
* anstataŭ konservi la rezulton de la konstruon en la sama datenujaro de la
  kodo, Cargo deponas ĝin en la datenujaro *target/debug*

Kroma avantaĝo de Cargo uzado estas ke ordonoj estas la samaj sendepende de la
estrilo vi uzas. Do, post tie ĉi, ni ne pli provizos specifajn uzindikojn por
Linux kaj macOS kompare al Windows.

### Konstrui por eldono

Kiam via projekto estas fine preta por eldono, vi povas uzi `cargo build
--release` por transigi ĝin kun optimumigoj. Tiu ordono kreos ruleblaĵon en
*target/release* anstataŭ de *target/debug*. La optimumigoj akceligas vian Rust
kodon, sed plilongigas la tempon de transigo. Tial estas dua malsamaj profiloj:
unu por disvolvado, kiam vi deziras konstrui rapide kaj ofte, unu alia por
konstrui la finan elordono vi donos al uzuloj kiu ne estos rekonstruota ripete
kaj rulas tiel rapida ol ebla. Se vi taksotestas rultempadon de via kodo,
certigu ruli `cargo build --release` kaj taksotestu kun la ruleblaĵo en
*target/release*.

### Cargo kiel konvencio

Kun simplaj projektoj, Cargo ne provizas tiom da valoro kompare ol ĵus uzi
`rustc`, sed ĝi montriĝos inda kiam viaj elordonoj fariĝos pli komplikitaj.
Kun kompleksaj projektoj, komponitaj de pluraj kestoj, estas multe pli facila
lasi Cargo kunordigi la konstruado.

Krom la simpleco de `saluton_cargo`, tiu projekto nun uzas plejparte de la
realaj iloj vi uzos en la resto de via kariero. Fakte, por labori kun ajna
ekzistanta projekto, vi povas uzi la sekvaj ordonoj por elmeti la kodon per Git,
iru al la datenujaro de la projekto, kaj konstruu:

```text
$ git clone iuurl.ie/iuprojekto
$ cd iuprojekto
$ cargo build
```

Por pli da informoj pri Cargo, vidu [ĝian dokumentaron].

[ĝian dokumentaron]: https://doc.rust-lang.org/cargo/

## Resumo

Vi jam atingis bonegan debuton en via Rust vojaĝo! En tiu ĉaptiro, vi lernis
kiel:

* instali lastan stabilan version de Rust per `rustup`
* ĝisdatigi al nova versio de Rust
* konsulti loke instalita dokumentaro
* skribi kaj rekte ruli elordonon Saluton ĉiuj! per `rustc`
* krei kaj ruli novan projekto laŭ Cargo konvencioj

Tiu estas bonega tempo por konstrui pli konsiderindajn elordonojn por kumitiĝi
kun legi kaj skribi Rust kodon. Do, en ĉapitro 2, ni konstruos divinadoludan
elordonon. Se vi vi anstataŭ preferus lerni kiel oftaj konceptoj funkcias ne
Rust, vidu ĉapitro 3 kaj poste iru al ĉapitro 2.
