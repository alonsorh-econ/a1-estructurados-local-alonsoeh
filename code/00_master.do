clear all
cd ".."   // subir a la raíz del repo

global ROOT "`c(pwd)'"
global CODE   "$ROOT/code"
global RAW    "$ROOT/data/raw"
global INTER  "$ROOT/data/intermediate"
global OUTTAB "$ROOT/outputs/tables"
global OUTFIG "$ROOT/outputs/figures"

cap mkdir "$OUTTAB"
cap mkdir "$OUTFIG"

do "$CODE/01_test_run.do"
