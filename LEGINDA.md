# Rust programadolingvo

[![Build Status](https://travis-ci.org/rust-lang/book.svg?branch=master)](https://travis-ci.org/rust-lang/book)

Tiu deponejo enhavas fontaro de ĉiuj eldonoj de "*the Rust Programming Language*",
kiel la [oficiala deponejo][oficaladeponejo], sed plie celanta plene esperante traduki la verkaron.

[oficialadeponejo]: https://github.com/rust-lang/book

La projekto estas ĵus komencanta, helpo estas ja bonvena. Laborfluo ne jam estas
difinita, se ne hezitu krei novan bileton por esprimi viajn ideon, deziron helpi
pri io, kaj tiel plu.  

Vi povas legi ĉiujn eldonojn de la libro origina-versie senpage rete! 
Bonvolu vidi la libron kiel provizita en la lasta [stabila], [testa] aŭ [ĵusta]
Rust-a eligo.
Atentu ke koncernoj de tiuj versioj eble estus jam korektitaj en la deponejo,
kiel tiuj ĉi eligoj ĝistagigiĝas malpliofte.

[stabila]: https://doc.rust-lang.org/stable/book/
[testa]: https://doc.rust-lang.org/beta/book/
[ĵusa]: https://doc.rust-lang.org/nightly/book/

Krom, notu ke la angla dua eldono ankaŭ estos havebla morta-arbe de *No Starch Press*,
havebla ĉirkaŭ Juno 2018. Kontrolu [la *No Starch* paĝon][nostarch] por la lastaj
informoj de la elliga dato kaj kiel mendi.

[nostarch]: https://nostarch.com/rust

## Postuloj

Konstrui la libron necesas [mdBook], prefere la saman version ol
[rust-lang/rust uses in this file][rust-mdbook]. Por akiri ĝin:

[mdBook]: https://github.com/azerupi/mdBook
[rust-mdbook]: https://github.com/rust-lang/rust/blob/master/src/tools/rustbook/Cargo.toml

```bash
$ cargo install mdbook --vers [versio-numero]
```

## Konstruado

Por konstrui la libro, unue iru la datenujaro de la libra eldono ke vi
deziras konstrui. Ekzemple la datenujaro `first-edtion` aŭ
`second-edition`. Tiam tajpu:

```bash
$ mdbook build
```

La eligo estos en la `book` subdatenujaro. Por kontroli ĝin, spekti ĝin retumile.

_Firefox:_
```bash
$ firefox book/index.html                       # Linux
$ open -a "Firefox" book/index.html             # OS X
$ Start-Process "firefox.exe" .\book\index.html # Windows (PowerShell)
$ start firefox.exe .\book\index.html           # Windows (Cmd)
```

_Chrome:_
```bash
$ google-chrome book/index.html                 # Linux
$ open -a "Google Chrome" book/index.html       # OS X
$ Start-Process "chrome.exe" .\book\index.html  # Windows (PowerShell)
$ start chrome.exe .\book\index.html            # Windows (Cmd)
```

Por ruli testojn:

```bash
$ mdbook test
```

## Kontribuo

Ni ŝategus havi vian helpon! Bonvolu vidi  [KONTRIBUADO.md][kontribuo] por scii
pri kiaj kontribuoj ni bezonas.

### Eldono de 2018

La Eldono de 2018 estas en ĝisdatiga procedo kun la ŝanĝoj de la lingvo kiuj estos
havebla kun la 2018a eldono de Rust lingvo. Ĉiuj novaj kontribuoj aldonendiĝas en
tiu eldono.

### Dua elodono

Nune, ĉiuj efortoj prefere iros al la traduko de la 2018a eldono. Sed se vi preferas
labori pri pli stabila versio, vi ankaŭ povus traduki prefere la 2018an eldonon.

Por la Angla origina versio, *No Starch Press* provizis la dua eldono prese.
Kunŝatapetoj kiuj korektas faktaj ereroj estos akceptitaj kaj dokumentitaj
kiel preseraro; kunŝatapetoj ŝanĝantaj vortigoj kaj aliaj korektetoj farindiĝus
al la eldono de 2018 anstataŭ.

### Unua eldono

La unua eldono estas tute halta. Ĝi estas gardata pro historia kialo. Traduko de tiu verko estas malprioritata.
Konsideru zorgi unue pri la traduko de la dua eldono se vi deziras nemovan celon.

Krom, la origina deponejo ne akceptos ŝanĝoj al la origina versio de la Angla unua eldono.


[kontribuo]: https://github.com/psychoslave/Rust-libro/blob/master/KONTRIBUADO.md

### Tradukoj

La teamo de tiu ĉi deponejo taŭgas traduki ĉiujn ne-pure-teknikajn datenujojn, do inklude skriptojn ktp,
kiam ili havas ne tute aŭtomate faritan enhavon. Tio dirita, la prioritato estas traduki la 2018an eldonon
unue. Do kvankam traduki permisilojn ktp estas ankaŭ celata, bonvolu konsideri unue traduki enhavon de la
2018a eldono de la libro.

La teamo de la origina deponejo speciale ŝatus havi helpon pri traduko de la dua kaj 2018a elodono
de la libro. Vidu la etikedon "[tradukoj]" por aliĝi tian eforton progresantan. Malfermu novan
atendindaĵon por eklabori pri nova lingvo! Ili atendas en [mdbooka apogo] antaŭ fari ajnan kunmeton,
sed libere startu! La dua eldono estas tute halta, kaj ne plu havos ajnan gravan ŝanĝon, do ili
proponas ektraduki tian version por tiuj kiuj ne deziras refari laboron.


[tradukoj]: https://github.com/rust-lang/book/issues?q=is%3Aopen+is%3Aissue+label%3ATranslations
[mdbooka apogo]: https://github.com/azerupi/mdBook/issues/5

## No Starch

As the second edition of the book will be published by No Starch, we first
iterate here, then ship the text off to No Starch. Then they do editing, and we
fold it back in.

As such, there’s a directory, *nostarch*, which corresponds to the text in No
Starch’s system.

When we've started working with No Starch in a word doc, we will also check
those into the repo in the *nostarch/odt* directory. To extract the text from
the word doc as markdown in order to backport changes to the online book:

1. Open the doc file in LibreOffice
1. Accept all tracked changes
1. Save as Microsoft Word 2007-2013 XML (.docx) in the *tmp* directory
1. Run `./doc-to-md.sh`
1. Inspect changes made to the markdown file in the *nostarch* directory and
   copy the changes to the *src* directory as appropriate.

   ## Graphviz dot

   We're using [Graphviz](http://graphviz.org/) for some of the diagrams in the
   book. The source for those files live in the `dot` directory. To turn a `dot`
   file, for example, `dot/trpl04-01.dot` into an `svg`, run:

   ```bash
   $ dot dot/trpl04-01.dot -Tsvg > src/img/trpl04-01.svg
   ```

   In the generated SVG, remove the width and the height attributes from the `svg`
   element and set the `viewBox` attribute to `0.00 0.00 1000.00 1000.00` or other
   values that don't cut off the image.

   ## Spellchecking

   To scan source files for spelling errors, you can use the `spellcheck.sh`
   script. It needs a dictionary of valid words, which is provided in
   `dictionary.txt`. If the script produces a false positive (say, you used word
   `BTreeMap` which the script considers invalid), you need to add this word to
   `dictionary.txt` (keep the sorted order for consistency).
