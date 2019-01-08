## Instalado

La unua ŝtupo estas instali Rust. Ni elŝutos Rust per `rustup`, ordonĉerpilo por
estri versiojn de Rust kaj ĝiajn asociataj iloj. Vi bezonos rekkontekto por
elŝuti.

> Noto: se vi preferas ne uzi `rustup` pro ial, bonvolu vidi la [paĝo de
> instalado de Rust](https://www.rust-lang.org/install.html) por aliaj opcioj.

La sekvaj ŝtupoj instalos la plej freŝan stabilan version de Rust transigilo.
La stabileco de Rust certigas ke ĉiuj ekzemploj en la libro kiuj transigas nun,
kontinuos transigi kun novaj versioj. La eligo povus iomete ŝanĝi inter versioj,
ĉar Rust ofte plibonigas mesaĝoj de eraro kaj avertoj. Alivorte, ajna pli nova,
stabila versio de Rust vi instalas uzante tiuj ŝtupoj devus funkcii kiel
atendita laŭ la enhavo de tiu libro.

> ### Ordonĉerpa notacio
>
> En tiu ĉapitro kaj tra la libro, ni montros kelkaj ordonoj uzitaj en
> la terminalo.  Linioj ke vi devus enigi en la terminalo komencas kun `$`. Vi
> ne bezonas tajpi la `$` signo; ĝi indikas la komenco de ĉiu ordono. Linioj
> kiuj ne komencas kun `$` tipe montras la eligo de la antaŭa ordono. Aldone,
> PowerShell-specifaj ekzemploj uzos `>` anstataŭ `$`.

### Instali `rustup` ĉe Linux aŭ macOS

Se vi uzas Linux aŭ macOS, ovru terminalon kaj enigu la sekvan ordonon:


```text
$ curl https://sh.rustup.rs -sSf | sh
```

La ordono elŝutas la scripto kaj ekinstalas `rustup` ilon, kiu instalas la
lastan version de Rust. Vi eble estas petita pri via pasvorto. Se la instalado
sukcesas, la sekvantaj linioj aperos:

```text
# Rust estas instalita nun. Bonege!
Rust is installed now. Great!
```

Se vi preferas, libere elŝuti la skripto kaj inspektu ĝin antaŭ ruli ĝin.

La instaladoskripto aŭtomate aldonos Rust al via mediaĵingo PATH post
via sekvanta ensalutado. Se vi volas ekuzi Rust anstataŭ restarti vian
terminalo, rulu la sekvanta ordono en via ŝelo por aldoni ule Rust al
via mediaĵingo PATH.

```text
$ source $HOME/.cargo/env
```

Alternative, vi povas aldoni la sekvantan linion al via *~/.bash_profile*:

```text
$ export PATH="$HOME/.cargo/bin:$PATH"
```

Aldone, vi bezonos iun ligilon. Verŝajne unu estas jam instalita, sed kiam vi
transigas Rust elordonon kaj ricevas erarojn indikantajn ke neniu ligilo estis
rulebla, tio signifas ke ligilo ne estas instalita ĉe via sistemo kaj vi
bezonos unu ule. C transigiloj kutime estas liveritaj kun taŭga ligilo. Kontrolu
la dokumetaron de via platoformo por trovi kiel instali C transigilo. Plie, iuj
Rust pakoj dependas de C kodo kaj necesos C transigilon. Tial, eble estus inda
je instali unu nun.

### Instali `rustup` ĉe Windows

Ĉe Windows, iru al [https://www.rust-lang.org/install.html][instali] kaj sekvu
la instruojn. Iam en la instalado, vi ricevos mesaĝon eksplikanta ke vi ankaŭ
bezonos C++ konstruilojn por Visual Studio 2013 aŭ pliposte. La pli facila
maniero akiri la konstruilojn estas instali [Konstruiloj por Visual Studio 2017]
[visualstudio]. La iloj estas en sekcio Aliaj iloj kaj framoj (*Other Tools and
Frameworks*)

[install]: https://www.rust-lang.org/install.html
[visualstudio]: https://www.visualstudio.com/downloads/

La resto de la libro uzas ordonoj kiuj funkcias kaj kun *cmd.exe* kaj
PowerShell. Se estas specifaj malsamoj, ni eksplikos kiun uzi.

### Ĝisdatigi kaj malinstali

Post vi instalos Rust per `rustup`, ĝisdatigo al la lasta versio estas facila.
Per via ŝelo, rulu la sekvantan ĝistagigan skripton:

```text
$ rustup update
```

Por malinstali Rust per `rustup`, rulu la rulu la sekvantan malinstaladan
skripton per via ŝelo:

```text
$ rustup self uninstall
```

### Problemsolvado

Por kontroli ĉu vi havis Rust taŭge instalita, ovru ŝelon kaj enigu tiun linion:

```text
$ rustc --version
```

Vi devus vidi numeron de versio, enmetohakon, kaj enmetodaton por la lasta
stabila versio kiu estis eldonita laŭ la sekvanta aranĝo:

```text
rustc x.y.z (abcabcabc yyyy-mm-dd)
```

Se vi vidas tiuj informoj, vi sukcese instalis Rust! Se vi ne vidas tiujn
informojn kaj ke vi estas ĉe Windows, kontrolu ke Rust estas en via `%PATH%`
mediaĵingo. Se ĝi estas tute korekta kaj Rust ankoraŭ ne funkcias, estas multe
da placoj kie vi povas akiri helpon. La pli facila estas la [#rust IRB kanalo][
irc]<!-- ignoru -->, kiu vi povas aliri per [Mibbit][mibbit]. Tie vi povas
diskuti kun aliaj Rustaculoj (ridinda kromnomo ni nomas nin) kiuj povas helpi
vin. Aliaj bonegaj rimedoj inkludas la [forumo de uzuloj][uzuloj] kaj
[Stack Overflow][stackoverflow].

[irc]: irc://irc.mozilla.org/#rust
[mibbit]: http://chat.mibbit.com/?server=irc.mozilla.org&channel=%23rust
[uzuloj]: https://users.rust-lang.org/
[stackoverflow]: http://stackoverflow.com/questions/tagged/rust

### Loka dokumentaro

La instalilo ankaŭ inkludas kopion de dokumentaro loke, do vi povas legi ĝin
forrete. Rulu `rustup doc` por ovri la lokan dokumentaron en via retumilo.

Iam tipo aŭ aĵigilo estas provizata de norma elordonteko kaj ke vi ne estas
certa kion ĝi faras aŭ kiel uzi ĝin, uzu la dokumenatron de uzivaro por trovi
tion.
