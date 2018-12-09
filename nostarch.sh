#!/bin/bash
# Kopirajto 2017 far la Rust komunaĵo. Vidu la datenujon KOPIRAJTO
# ĉe la supra-nivela datenujaro de tiu disdono kaj ĉe http://rust-lang.org/COPYRIGHT.
#
# Licencigita laŭ la Apache licenco, Versio 2.0 <LICENSE-APACHE aŭ
# http://www.apache.org/licenses/LICENSE-2.0> aŭ MIT-a licenco
# <LICENSE-MIT or http://opensource.org/licenses/MIT>, laŭ via elekto.
# Ĉi tiu datenujo ne povas esti kopiita, ŝanĝita aŭ disdonita
# escepte laŭ tiuj termoj.

set -eu

cargo build --release

mkdir -p tmp
rm -rf tmp/*.md

# Akiru ĉiujn "markdown"-a datenujon en la `src` datenujaro.
# FARENDA: alinomi `src` datenujaro al `fontaro` kaj ĝistadigi la antaŭan komenton.
ls src/${1:-""}*.md | \
# escepte de `SUMMARY.md`.
# FARENDA: alinomi `SUMMARY.md` al `RESUMO.md` datenujaro kaj ĝistadigi la antaŭan komenton
grep -v SUMMARY.md | \
# Extract just the filename so we can reuse it easily.
xargs -n 1 basename | \
# Forigu ĉiujn ligojn sekvitajn per `<!-- ignore -->, tiam
# ŝanĝu ĉiujn restantajn ligojn el markdown al kursivigita liniigita teksto.
while IFS= read -r filename; do
  < "src/$filename" ./target/release/remove_links \
    | ./target/release/link2print \
    | ./target/release/remove_markup > "tmp/$filename"
done
# Ligu la datenujoj al la `nostarch` datenujaro.
./target/release/concat_chapters tmp nostarch
