codebook cpr

tab indexres, m

tab indexres followup, m row

********************************************************************************
****************************** FLOWCHART ***************************************
********************************************************************************

tab indexres, m

tab indexres followup

tab hpvtest if indexres == 1 & followup == "NEJ", m

tab hpvtest if indexres == 1 & followup == "JA", m
tab hisres if indexres == 1 & followup == "JA", m
tab hisres2 if indexres == 1 & followup == "JA", m

tab hisres if  hpvtest ==. & indexres == 1 & followup == "JA", m
tab hisres if  hpvtest ==0 & indexres == 1 & followup == "JA", m
tab hisres if  hpvtest ==1 & indexres == 1 & followup == "JA", m

tab hpvtest if indexres == 2 & followup == "NEJ", m

tab hpvtest if indexres == 2 & followup == "JA", m
tab hisres if indexres == 2 & followup == "JA", m
tab hisres2 if indexres == 2 & followup == "JA", m

tab hisres if  hpvtest ==. & indexres == 2 & followup == "JA", m
tab hisres if  hpvtest ==0 & indexres == 2 & followup == "JA", m
tab hisres if  hpvtest ==1 & indexres == 2 & followup == "JA", m

tab hpvtest if indexres == 3 & followup == "NEJ", m

tab hpvtest if indexres == 3 & followup == "JA", m
tab hisres if indexres == 3 & followup == "JA", m
tab hisres2 if indexres == 3 & followup == "JA", m

tab hisres if  hpvtest ==. & indexres == 3 & followup == "JA", m
tab hisres if  hpvtest ==0 & indexres == 3 & followup == "JA", m
tab hisres if  hpvtest ==1 & indexres == 3 & followup == "JA", m


tab hpvtest if indexres == 4 & followup == "NEJ", m

tab hpvtest if indexres == 4 & followup == "JA", m
tab hisres if indexres == 4 & followup == "JA", m
tab hisres2 if indexres == 4 & followup == "JA", m

tab hisres if  hpvtest ==. & indexres == 4 & followup == "JA", m
tab hisres if  hpvtest ==0 & indexres == 4 & followup == "JA", m
tab hisres if  hpvtest ==1 & indexres == 4 & followup == "JA", m

tab hpvtest if indexres == 5 & followup == "NEJ", m

tab hpvtest if indexres == 5 & followup == "JA", m
tab hisres if indexres == 5 & followup == "JA", m
tab hisres2 if indexres == 5 & followup == "JA", m

tab hisres if  hpvtest ==. & indexres == 5 & followup == "JA", m
tab hisres if  hpvtest ==0 & indexres == 5 & followup == "JA", m
tab hisres if  hpvtest ==1 & indexres == 5 & followup == "JA", m

tab hpvtest if indexres == 6 & followup == "NEJ", m

tab hpvtest if indexres == 6 & followup == "JA", m
tab hisres if indexres == 6 & followup == "JA", m
tab hisres2 if indexres == 6 & followup == "JA", m

tab hisres if  hpvtest ==. & indexres == 6 & followup == "JA", m
tab hisres if  hpvtest ==0 & indexres == 6 & followup == "JA", m
tab hisres if  hpvtest ==1 & indexres == 6 & followup == "JA", m

summ alder
tabstat alder, statistics(median min max)
tabstat alder, statistics(median p25 p75)
*histogram alder, normal
***************************
tab indexhpvgenotype, m
**********************
tab hisres indexres if indexdualstain == 1, m

******************************************************************************
********************************* TABEL 1 ************************************
******************************************************************************
label values maxindexcyt cyt
tab maxindexcyt hisres if maxindexcyt != ., m col
tab maxindexcyt hisres if maxindexcyt != ., m row
tab maxindexcyt hisres if indexdualstain == 1 & maxindexcyt != ., m col
tab maxindexcyt hisres if indexdualstain == 1 & maxindexcyt != ., m row
tab maxindexcyt hisres if maxauto == 1 & maxindexcyt != ., m col
tab maxindexcyt hisres if maxauto == 1 & maxindexcyt != ., m row
tab maxindexcyt hisres if dikocytoindex == 1 & maxindexcyt != ., m col
tab maxindexcyt hisres if dikocytoindex == 1 & maxindexcyt != ., m row


******************************************************************************
********************************* TABEL 2 ************************************
******************************************************************************
tab cin2diko_ny_nobiopsy indexdualstain 
tab cin2diko_ny_nobiopsy maxauto 
tab cin2diko_ny_nobiopsy dikocytoindex 

tab dikocytoindex
ci prop dikocytoindex if cin2diko_ny_nobiopsy != .
diagt cin2diko_ny_nobiopsy dikocytoindex

tab indexdualstain
ci prop indexdualstain if cin2diko_ny_nobiopsy != .
diagt cin2diko_ny_nobiopsy indexdualstain 

tab maxauto
ci prop maxauto if cin2diko_ny_nobiopsy != .
diagt cin2diko_ny_nobiopsy maxauto 


ci prop colpocyt
tab cin2diko_ny_nobiopsy if colpocyt == 1, m
tab cin2diko_ny_nobiopsy dikocytoindex 

tab cin2diko_ny_nobiopsy indexdualstain 

tab cin2diko_ny_nobiopsy maxauto 
******

tab cin3diko_ny_nobiopsy indexdualstain 
tab cin3diko_ny_nobiopsy maxauto 
tab cin3diko_ny_nobiopsy dikocytoindex 

tab dikocytoindex
ci prop dikocytoindex if cin3diko_ny_nobiopsy != .
diagt cin3diko_ny_nobiopsy dikocytoindex

tab indexdualstain
ci prop indexdualstain if cin3diko_ny_nobiopsy != .
diagt cin3diko_ny_nobiopsy indexdualstain 

tab maxauto
ci prop maxauto if cin3diko_ny_nobiopsy != .
diagt cin3diko_ny_nobiopsy maxauto

ci prop colpocyt
tab cin3diko_ny_nobiopsy if colpocyt == 1, m
tab cin3diko_ny_nobiopsy dikocytoindex 

tab cin3diko_ny_nobiopsy indexdualstain 

tab cin3diko_ny_nobiopsy maxauto1_15
tab cin3diko_ny_nobiopsy maxauto2_15
tab cin3diko_ny_nobiopsy maxauto3_15
tab cin3diko_ny_nobiopsy maxauto4_15
tab cin3diko_ny_nobiopsy maxauto1
tab cin3diko_ny_nobiopsy maxauto2
tab cin3diko_ny_nobiopsy maxauto3
tab cin3diko_ny_nobiopsy maxauto4


******************************************************************************
********************************* TABEL 3 ************************************
******************************************************************************
tab indexdualstain
diagt cin3diko_ny_nobiopsy indexdualstain 

tab maxauto1
tab cin3diko_ny_nobiopsy maxauto1
diagt cin3diko_ny_nobiopsy maxauto1

tab maxauto2
diagt cin3diko_ny_nobiopsy maxauto2

tab maxauto3
diagt cin3diko_ny_nobiopsy maxauto3

tab maxauto4
diagt cin3diko_ny_nobiopsy maxauto4

tab maxauto1_15
tab cin3diko_ny_nobiopsy maxauto1_15
diagt cin3diko_ny_nobiopsy maxauto1_15

tab maxauto2_15
diagt cin3diko_ny_nobiopsy maxauto2_15

tab maxauto3_15
diagt cin3diko_ny_nobiopsy maxauto3_15

tab maxauto4_15
diagt cin3diko_ny_nobiopsy maxauto4_15

******************************************************************************
*************************** SUPPORTING TABEL 1 *******************************
******************************************************************************
tab dikocytoindex if cin3diko_ny_exnobiopsy !=.
tab dikocytoindex cin3diko_ny_exnobiopsy
diagt cin3diko_ny_exnobiopsy dikocytoindex

tab indexdualstain if cin3diko_ny_exnobiopsy !=.
tab indexdualstain cin3diko_ny_exnobiopsy
diagt cin3diko_ny_exnobiopsy indexdualstain

tab maxauto2_15 if cin3diko_ny_exnobiopsy !=.
tab maxauto2_15 cin3diko_ny_exnobiopsy
diagt cin3diko_ny_exnobiopsy maxauto2_15

tab maxauto2
tab maxauto2 if cin3diko_ny_exnobiopsy !=.
tab maxauto2 cin3diko_ny_exnobiopsy, m
diagt cin3diko_ny_exnobiopsy maxauto2

******************************************************************************
*************************** SUPPORTING TABEL 2 *******************************
******************************************************************************
tab dikocytoindex
diagt cin3diko_ny_nobiopsy_excin dikocytoindex

tab indexdualstain
diagt cin3diko_ny_nobiopsy_excin indexdualstain

tab maxauto
diagt cin3diko_ny_nobiopsy_excin maxauto

******************************************************************************
*************************** SUPPORTING TABEL 3 *******************************
******************************************************************************
tab dikocytoindex cin3diko_ny_exnobiopsy
diagt cin3diko_ny_exnobiopsy dikocytoindex

tab indexdualstain cin3diko_ny_exnobiopsy
diagt cin3diko_ny_exnobiopsy indexdualstain

tab maxauto2_15 cin3diko_ny_exnobiopsy
diagt cin3diko_ny_exnobiopsy maxauto2_15

******************************************************************************
******************************* 3+ CUTOFF ************************************
******************************************************************************
						*****************************
						*****************************
******************************************************************************
********************************* TABEL 1 ************************************
******************************************************************************
label values maxindexcyt cyt
tab maxindexcyt hisres if maxindexcyt != ., m col
tab maxindexcyt hisres if maxindexcyt != ., m row
tab maxindexcyt hisres if indexdualstain == 1 & maxindexcyt != ., m col
tab maxindexcyt hisres if indexdualstain == 1 & maxindexcyt != ., m row
tab maxindexcyt hisres if maxauto3 == 1 & maxindexcyt != ., m col
tab maxindexcyt hisres if maxauto3 == 1 & maxindexcyt != ., m row
tab maxindexcyt hisres if dikocytoindex == 1 & maxindexcyt != ., m col
tab maxindexcyt hisres if dikocytoindex == 1 & maxindexcyt != ., m row


******************************************************************************
********************************* TABEL 2 ************************************
******************************************************************************
* CIN2
*****************************************
tab cin2diko_ny_nobiopsy indexdualstain 
tab cin2diko_ny_nobiopsy maxauto3 
tab cin2diko_ny_nobiopsy dikocytoindex 

tab dikocytoindex
ci prop dikocytoindex if cin2diko_ny_nobiopsy != .
diagt cin2diko_ny_nobiopsy dikocytoindex

tab indexdualstain
ci prop indexdualstain if cin2diko_ny_nobiopsy != .
diagt cin2diko_ny_nobiopsy indexdualstain 

tab maxauto3
ci prop maxauto3 if cin2diko_ny_nobiopsy != .
diagt cin2diko_ny_nobiopsy maxauto3 


ci prop colpocyt
tab cin2diko_ny_nobiopsy if colpocyt == 1, m
tab cin2diko_ny_nobiopsy dikocytoindex 

tab cin2diko_ny_nobiopsy indexdualstain 

tab cin2diko_ny_nobiopsy maxauto3 
*******************************************
* CIN3
*******************************************

tab cin3diko_ny_nobiopsy indexdualstain 
tab cin3diko_ny_nobiopsy maxauto3 
tab cin3diko_ny_nobiopsy dikocytoindex 

tab dikocytoindex
ci prop dikocytoindex if cin3diko_ny_nobiopsy != .
diagt cin3diko_ny_nobiopsy dikocytoindex

tab indexdualstain
ci prop indexdualstain if cin3diko_ny_nobiopsy != .
diagt cin3diko_ny_nobiopsy indexdualstain 

tab maxauto3
ci prop maxauto3 if cin3diko_ny_nobiopsy != .
diagt cin3diko_ny_nobiopsy maxauto3

ci prop colpocyt
tab cin3diko_ny_nobiopsy if colpocyt == 1, m
tab cin3diko_ny_nobiopsy dikocytoindex 

tab cin3diko_ny_nobiopsy indexdualstain 

tab cin3diko_ny_nobiopsy maxauto3

******************************************************************************
******************************** STD15 2+ ************************************
******************************************************************************
						*****************************
						*****************************
******************************************************************************
********************************* TABEL 1 ************************************
******************************************************************************
label values maxindexcyt cyt
tab maxindexcyt hisres if maxindexcyt != ., m col
tab maxindexcyt hisres if maxindexcyt != ., m row
tab maxindexcyt hisres if indexdualstain == 1 & maxindexcyt != ., m col
tab maxindexcyt hisres if indexdualstain == 1 & maxindexcyt != ., m row
tab maxindexcyt hisres if maxauto2_15 == 1 & maxindexcyt != ., m col
tab maxindexcyt hisres if maxauto2_15 == 1 & maxindexcyt != ., m row
tab maxindexcyt hisres if dikocytoindex == 1 & maxindexcyt != ., m col
tab maxindexcyt hisres if dikocytoindex == 1 & maxindexcyt != ., m row


******************************************************************************
********************************* TABEL 2 ************************************
******************************************************************************
* CIN2
*****************************************
tab cin2diko_ny_nobiopsy indexdualstain 
tab cin2diko_ny_nobiopsy maxauto2_15 
tab cin2diko_ny_nobiopsy dikocytoindex 

tab dikocytoindex
ci prop dikocytoindex if cin2diko_ny_nobiopsy != .
diagt cin2diko_ny_nobiopsy dikocytoindex

tab indexdualstain
ci prop indexdualstain if cin2diko_ny_nobiopsy != .
diagt cin2diko_ny_nobiopsy indexdualstain 

tab maxauto2_15
ci prop maxauto2_15 if cin2diko_ny_nobiopsy != .
diagt cin2diko_ny_nobiopsy maxauto2_15 


ci prop colpocyt
tab cin2diko_ny_nobiopsy if colpocyt == 1, m
tab cin2diko_ny_nobiopsy dikocytoindex 

tab cin2diko_ny_nobiopsy indexdualstain 

tab cin2diko_ny_nobiopsy maxauto2_15 
*******************************************
* CIN3
*******************************************

tab cin3diko_ny_nobiopsy indexdualstain 
tab cin3diko_ny_nobiopsy maxauto2_15 
tab cin3diko_ny_nobiopsy dikocytoindex 

tab dikocytoindex
ci prop dikocytoindex if cin3diko_ny_nobiopsy != .
diagt cin3diko_ny_nobiopsy dikocytoindex

tab indexdualstain
ci prop indexdualstain if cin3diko_ny_nobiopsy != .
diagt cin3diko_ny_nobiopsy indexdualstain 

tab maxauto2_15
ci prop maxauto2_15 if cin3diko_ny_nobiopsy != .
diagt cin3diko_ny_nobiopsy maxauto2_15

ci prop colpocyt
tab cin3diko_ny_nobiopsy if colpocyt == 1, m
tab cin3diko_ny_nobiopsy dikocytoindex 

tab cin3diko_ny_nobiopsy indexdualstain 

tab cin3diko_ny_nobiopsy maxauto2_15

******************************************************************************
********************************* TABEL 3 ************************************
******************************************************************************
tab indexdualstain
diagt cin3diko_ny_nobiopsy indexdualstain 

tab maxauto
diagt cin3diko_ny_nobiopsy maxauto2_15

tab maxauto3
diagt cin3diko_ny_nobiopsy maxauto3_15

tab maxauto4
diagt cin3diko_ny_nobiopsy maxauto4_15

******************************************************************************
**************************** STD20 1+ CUTOFF *********************************
******************************************************************************
						*****************************
						*****************************
******************************************************************************
********************************* TABEL 1 ************************************
******************************************************************************
label values maxindexcyt cyt
tab maxindexcyt hisres if maxindexcyt != ., m col
tab maxindexcyt hisres if maxindexcyt != ., m row
tab maxindexcyt hisres if indexdualstain == 1 & maxindexcyt != ., m col
tab maxindexcyt hisres if indexdualstain == 1 & maxindexcyt != ., m row
tab maxindexcyt hisres if maxauto1 == 1 & maxindexcyt != ., m col
tab maxindexcyt hisres if maxauto1 == 1 & maxindexcyt != ., m row
tab maxindexcyt hisres if dikocytoindex == 1 & maxindexcyt != ., m col
tab maxindexcyt hisres if dikocytoindex == 1 & maxindexcyt != ., m row


******************************************************************************
********************************* TABEL 2 ************************************
******************************************************************************
* CIN2
*****************************************
tab cin2diko_ny_nobiopsy indexdualstain 
tab cin2diko_ny_nobiopsy maxauto1 
tab cin2diko_ny_nobiopsy dikocytoindex 

tab dikocytoindex
ci prop dikocytoindex if cin2diko_ny_nobiopsy != .
diagt cin2diko_ny_nobiopsy dikocytoindex

tab indexdualstain
ci prop indexdualstain if cin2diko_ny_nobiopsy != .
diagt cin2diko_ny_nobiopsy indexdualstain 

tab maxauto1
ci prop maxauto1 if cin2diko_ny_nobiopsy != .
diagt cin2diko_ny_nobiopsy maxauto1 


ci prop colpocyt
tab cin2diko_ny_nobiopsy if colpocyt == 1, m
tab cin2diko_ny_nobiopsy dikocytoindex 

tab cin2diko_ny_nobiopsy indexdualstain 

tab cin2diko_ny_nobiopsy maxauto1
*******************************************
* CIN3
*******************************************

tab cin3diko_ny_nobiopsy indexdualstain 
tab cin3diko_ny_nobiopsy maxauto1 
tab cin3diko_ny_nobiopsy dikocytoindex 

tab dikocytoindex
ci prop dikocytoindex if cin3diko_ny_nobiopsy != .
diagt cin3diko_ny_nobiopsy dikocytoindex

tab indexdualstain
ci prop indexdualstain if cin3diko_ny_nobiopsy != .
diagt cin3diko_ny_nobiopsy indexdualstain 

tab maxauto1
ci prop maxauto1 if cin3diko_ny_nobiopsy != .
diagt cin3diko_ny_nobiopsy maxauto1

ci prop colpocyt
tab cin3diko_ny_nobiopsy if colpocyt == 1, m
tab cin3diko_ny_nobiopsy dikocytoindex 

tab cin3diko_ny_nobiopsy indexdualstain 

tab cin3diko_ny_nobiopsy maxauto1

******************************************************************************
**************************** STD15 1+ CUTOFF *********************************
******************************************************************************
						*****************************
						*****************************
******************************************************************************
********************************* TABEL 1 ************************************
******************************************************************************
label values maxindexcyt cyt
tab maxindexcyt hisres if maxindexcyt != ., m col
tab maxindexcyt hisres if maxindexcyt != ., m row
tab maxindexcyt hisres if indexdualstain == 1 & maxindexcyt != ., m col
tab maxindexcyt hisres if indexdualstain == 1 & maxindexcyt != ., m row
tab maxindexcyt hisres if maxauto1_15 == 1 & maxindexcyt != ., m col
tab maxindexcyt hisres if maxauto1_15 == 1 & maxindexcyt != ., m row
tab maxindexcyt hisres if dikocytoindex == 1 & maxindexcyt != ., m col
tab maxindexcyt hisres if dikocytoindex == 1 & maxindexcyt != ., m row


******************************************************************************
********************************* TABEL 2 ************************************
******************************************************************************
* CIN2
*****************************************
tab cin2diko_ny_nobiopsy indexdualstain 
tab cin2diko_ny_nobiopsy maxauto1_15 
tab cin2diko_ny_nobiopsy dikocytoindex 

tab dikocytoindex
ci prop dikocytoindex if cin2diko_ny_nobiopsy != .
diagt cin2diko_ny_nobiopsy dikocytoindex

tab indexdualstain
ci prop indexdualstain if cin2diko_ny_nobiopsy != .
diagt cin2diko_ny_nobiopsy indexdualstain 

tab maxauto1_15
ci prop maxauto1_15 if cin2diko_ny_nobiopsy != .
diagt cin2diko_ny_nobiopsy maxauto1_15 


ci prop colpocyt
tab cin2diko_ny_nobiopsy if colpocyt == 1, m
tab cin2diko_ny_nobiopsy dikocytoindex 

tab cin2diko_ny_nobiopsy indexdualstain 

tab cin2diko_ny_nobiopsy maxauto1_15 
*******************************************
* CIN3
*******************************************

tab cin3diko_ny_nobiopsy indexdualstain 
tab cin3diko_ny_nobiopsy maxauto1_15 
tab cin3diko_ny_nobiopsy dikocytoindex 

tab dikocytoindex
ci prop dikocytoindex if cin3diko_ny_nobiopsy != .
diagt cin3diko_ny_nobiopsy dikocytoindex

tab indexdualstain
ci prop indexdualstain if cin3diko_ny_nobiopsy != .
diagt cin3diko_ny_nobiopsy indexdualstain 

tab maxauto1_15
ci prop maxauto1_15 if cin3diko_ny_nobiopsy != .
diagt cin3diko_ny_nobiopsy maxauto1_15

ci prop colpocyt
tab cin3diko_ny_nobiopsy if colpocyt == 1, m
tab cin3diko_ny_nobiopsy dikocytoindex 

tab cin3diko_ny_nobiopsy indexdualstain 

tab cin3diko_ny_nobiopsy maxauto1_15

******************************************************************************
*log close

******************************************************************************
********************************* ROC-kurve **********************************
******************************************************************************
* SD20 likelihood50
roctab cin3diko_ny_nobiopsy maxlikelihood50, graph
roccomp cin3diko_ny_nobiopsy maxlikelihood50 maxlikelihood50_15
roctab cin3diko_ny_nobiopsy_mette maxlikelihood50, graph

* SD15 likelihood50
roctab cin3diko_ny_nobiopsy maxlikelihood50_15, graph