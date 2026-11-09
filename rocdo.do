roctab cin3diko_ny_nobiopsy maxindexcyt, graph

roctab cin3diko_ny_nobiopsy maxlikelihood50, detail
roctab cin3diko_ny_nobiopsy maxlikelihood50, graph

roccomp cin3diko_ny_nobiopsy maxindexcyt maxlikelihood50, graph

roccomp cin3diko_ny_nobiopsy maxindexcyt maxlikelihood50, ///
    graph legend(position(6) cols(2) ///
    label(1 "Cytologi") ///
    label(2 "DS-auto"))
	
roccomp cin3diko_ny_nobiopsy maxindexcyt maxlikelihood50, ///
    graph legend(position(6) cols(2) ///
    order(1 "Cytologi" 2 "Automated DS (20 st.sd)"))
	
roccomp cin3diko_ny_nobiopsy maxindexcyt maxlikelihood50_15, ///
    graph legend(position(6) cols(2) ///
    order(1 "Cytologi" 2 "Automated DS (15 st.sd)"))


*--------------------------------------------------
* 1. Indsæt cytologiens estimater
*--------------------------------------------------

local cyto_sens = 0.726
local cyto_spec = 0.759

*--------------------------------------------------
* 2. Find de to cutpoints for DS-auto
*--------------------------------------------------

preserve

tempfile rocresults

postfile handle int cutoff ///
    double sensitivity specificity ///
    using `rocresults', replace

forvalues c = 0/30 {

    quietly count if cin3diko_ny_nobiopsy == 1 & !missing(maxlikelihood50_15)
    local D = r(N)

    quietly count if cin3diko_ny_nobiopsy == 0 & !missing(maxlikelihood50_15)
    local ND = r(N)

    quietly count if cin3diko_ny_nobiopsy == 1 & maxlikelihood50_15 >= `c'
    local TP = r(N)

    quietly count if cin3diko_ny_nobiopsy == 0 & maxlikelihood50_15 < `c'
    local TN = r(N)

    local sens = `TP'/`D'
    local spec = `TN'/`ND'

    post handle (`c') (`sens') (`spec')
}

postclose handle

use `rocresults', clear

* Cutpoint ved cytologiens sensitivitet
gen diff_sens = abs(sensitivity - `cyto_sens')
sort diff_sens

local cutoff_sens = cutoff[1]

* Cutpoint ved cytologiens specificitet
gen diff_spec = abs(specificity - `cyto_spec')
sort diff_spec

local cutoff_spec = cutoff[1]

restore

*--------------------------------------------------
* 3. Beregn sensitivitet OG specificitet
*    med 95 % CI ved cutpoint 1
*--------------------------------------------------

display "Cutpoint ved cytologiens sensitivitet: `cutoff_sens'"

count if cin3diko_ny_nobiopsy == 1 & !missing(maxlikelihood50_15)
local D = r(N)

count if cin3diko_ny_nobiopsy == 0 & !missing(maxlikelihood50_15)
local ND = r(N)

count if cin3diko_ny_nobiopsy == 1 & maxlikelihood50_15 >= `cutoff_sens'
local TP = r(N)

count if cin3diko_ny_nobiopsy == 0 & maxlikelihood50_15 < `cutoff_sens'
local TN = r(N)

* Sensitivitet med 95 % CI
cii proportions `D' `TP', exact

* Specificitet med 95 % CI
cii proportions `ND' `TN', exact


*--------------------------------------------------
* 4. Beregn sensitivitet OG specificitet
*    med 95 % CI ved cutpoint 2
*--------------------------------------------------

display "Cutpoint ved cytologiens specificitet: `cutoff_spec'"

count if cin3diko_ny_nobiopsy == 1 & maxlikelihood50_15 >= `cutoff_spec'
local TP = r(N)

count if cin3diko_ny_nobiopsy == 0 & maxlikelihood50_15 < `cutoff_spec'
local TN = r(N)

* Sensitivitet med 95 % CI
cii proportions `D' `TP', exact

* Specificitet med 95 % CI
cii proportions `ND' `TN', exact