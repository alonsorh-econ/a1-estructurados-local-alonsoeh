clear
set more off

tempname mem
postfile `mem' int year float y using "$OUTTAB/indicator_clean_raw.dta", replace
post `mem' (2022) (100)
post `mem' (2023) (103)
post `mem' (2024) (108)
postclose `mem'

use "$OUTTAB/indicator_clean_raw.dta", clear
export delimited using "$OUTTAB/indicator_clean.csv", replace

twoway (line y year, lwidth(medthick) mcolor(black)), ///
    title("Prueba indicador") xtitle("Año") ytitle("Índice")
graph export "$OUTFIG/fig_indicator.png", replace width(1600)

display "OK Stata → outputs/tables/indicator_clean.csv & outputs/figures/fig_indicator.png"
