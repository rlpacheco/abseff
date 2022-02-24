program define abseff

version 1.1

local which = "`1'"

macro shift        

`which' `1' `2' `3' `4' `5' `6' `7' `8'

end

program define rr

version 1.1

	local g1 "`1'"
	local g2 "`2'"
	local g3 "`3'"
	local g4 "`4'"
	local g5 "`5'"
	local b1000 = round(`4'*1000 / `5')
	local p1000 = round((`4' / `5')*`1'*1000)
	local l1000 = round((`4' / `5')*`2'*1000)
	local u1000 = round((`4' / `5')*`3'*1000)
	local b100 = round(`4'*100 / `5')
	local p100 = round((`4' / `5')*`1'*100)
	local l100 = round((`4' / `5')*`2'*100)
	local u100 = round((`4' / `5')*`3'*100)


display as txt "Base 1000"

display as txt "The risk with control group is " `b1000' " per 1000."

display as txt "The anticipated absolute effects is " `p1000' " per 1000 (95% CI = " `l1000' " to " `u1000' ")."

display as txt "The absolute risk difference is " `p1000' - `b1000' " per 1000 (95% CI = " `l1000' - `b1000'  " to "  `u1000' - `b1000' ")."

display as txt " "

display as txt "Base 100"

display as txt "The risk with control group is "  `b100' " per 100."

display as txt "The anticipated absolute effects is "  `p100' " per 100 (95% CI = " `l100'  " to " `u100' ")."

display as txt "The absolute risk difference is " `p100' - `b100' " per 100 (95% CI = " `l100' - `b100'  " to "  `u100' - `b100' ")."

end

program define or

version 1.1

	local g1 "`1'"
	local g2 "`2'"
	local g3 "`3'"
	local g4 "`4'"
	local g5 "`5'"
	local b1000 = round(`4'*1000 / `5')
	local p1000 = round(1000*(`4'/`5')*`1'/ (1 - (`4'/`5') + ((`4'/`5')*`1')))
	local l1000 = round(1000*(`4'/`5')*`2'/ (1 - (`4'/`5') + ((`4'/`5')*`2')))
	local u1000 = round(1000*(`4'/`5')*`3'/ (1 - (`4'/`5') + ((`4'/`5')*`3')))
	local b100 = round(`4'*100 / `5')
	local p100 = round(100*(`4'/`5')*`1'/ (1 - (`4'/`5') + ((`4'/`5')*`1')))
	local l100 = round(100*(`4'/`5')*`2'/ (1 - (`4'/`5') + ((`4'/`5')*`2')))
	local u100 = round(100*(`4'/`5')*`3'/ (1 - (`4'/`5') + ((`4'/`5')*`3')))


display as txt "Base 1000"

display as txt "The risk with control group is " `b1000' " per 1000."

display as txt "The anticipated absolute effects is " `p1000' " per 1000 (95% CI = " `l1000' " to " `u1000' ")."

display as txt "The absolute risk difference is " `p1000' - `b1000' " per 1000 (95% CI = " `l1000' - `b1000'  " to "  `u1000' - `b1000' ")."

display as txt " "

display as txt "Base 100"

display as txt "The risk with control group is "  `b100' " per 100."

display as txt "The anticipated absolute effects is "  `p100' " per 100 (95% CI = " `l100'  " to " `u100' ")."

display as txt "The absolute risk difference is " `p100' - `b100' " per 100 (95% CI = " `l100' - `b100'  " to "  `u100' - `b100' ")."

end

program define hrsurv

version 1.1
	
	local g1 "`1'"
	local g2 "`2'"
	local g3 "`3'"
	local g4 "`4'"
	local b1000 = round(`4'*1000)
	local p1000 = round(exp(ln(`4')*`1')*1000)
	local l1000 = round(exp(ln(`4')*`3')*1000)
	local u1000 = round(exp(ln(`4')*`2')*1000)
	local b100 = round(`4'*100)
	local p100 = round(exp(ln(`4')*`1')*100)
	local l100 = round(exp(ln(`4')*`3')*100)
	local u100 = round(exp(ln(`4')*`2')*100)

display as txt "Base 1000"

display as txt "The proportion of patients free of event in a certain time-point with control group is " `b1000' " per 1000."

display as txt "The anticipated absolute effects is " `p1000' " per 1000 (95% CI = " `l1000' " to " `u1000' ")."

display as txt "The absolute risk difference is " `p1000' - `b1000' " per 1000 (95% CI = " `l1000' - `b1000'  " to "  `u1000' - `b1000' ")."

display as txt " "

display as txt "Base 100"

display as txt "The proportion of patients free of event in a certain time-point with control group is "  `b100' " per 100."

display as txt "The anticipated absolute effects is "  `p100' " per 100 (95% CI = " `l100'  " to " `u100' ")."

display as txt "The absolute risk difference is " `p100' - `b100' " per 100 (95% CI = " `l100' - `b100'  " to "  `u100' - `b100' ")."
	
	
end

program define hrevent

version 1.1
	
	local g1 "`1'"
	local g2 "`2'"
	local g3 "`3'"
	local g4 "`4'"
	local b1000 = round(`4'*1000)
	local p1000 = round(1000 - (exp(ln(1 -`4')*`1')*1000))
	local l1000 = round(1000 - (exp(ln(1 -`4')*`2')*1000))
	local u1000 = round(1000 - (exp(ln(1 -`4')*`3')*1000))
	local b100 = round(`4'*100)
	local p100 = round(100 - (exp(ln(1 -`4')*`1')*100))
	local l100 = round(100 - (exp(ln(1 -`4')*`2')*100))
	local u100 = round(100 - (exp(ln(1 -`4')*`3')*100))

display as txt "Base 1000"

display as txt "The risk of event in a certain time-point with control group is " `b1000' " per 1000."

display as txt "The anticipated absolute effects is " `p1000' " per 1000 (95% CI = " `l1000' " to " `u1000' ")."

display as txt "The absolute risk difference is " `p1000' - `b1000' " per 1000 (95% CI = " `l1000' - `b1000'  " to "  `u1000' - `b1000' ")."

display as txt " "

display as txt "Base 100"

display as txt "The risk of event in a certain time-point with control group is "  `b100' " per 100."

display as txt "The anticipated absolute effects is "  `p100' " per 100 (95% CI = " `l100'  " to " `u100' ")."

display as txt "The absolute risk difference is " `p100' - `b100' " per 100 (95% CI = " `l100' - `b100'  " to "  `u100' - `b100' ")."
	
	
end
