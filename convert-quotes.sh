#!/bin/bash
# Kopirajto 2017 far la Rust komunaĵo. Vidu la datenujon KOPIRAJTO
# ĉe la supra-nivela dosio de tiu disdono kaj ĉe http://rust-lang.org/COPYRIGHT.
#
# Licencigita laŭ la Apache licenco, Versio 2.0 <LICENSE-APACHE aŭ
# http://www.apache.org/licenses/LICENSE-2.0> aŭ MIT-a licenco
# <LICENSE-MIT or http://opensource.org/licenses/MIT>, laŭ via elekto.
# Ĉi tiu datenujo ne povas esti kopiita, ŝanĝita aŭ disdonita
# escepte laŭ tiuj termoj.

set -eu

dir=$1

mkdir -p "tmp/$dir"

for f in $dir/*.md
do
    cat "$f" | cargo run --bin convert_quotes > "tmp/$f"
    mv "tmp/$f" "$f"
done
