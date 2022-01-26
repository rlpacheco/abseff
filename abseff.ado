program define abseff

local which = "`1'"

macro shift        

`which' `1' `2' `3' `4' `5' `6' `7' `8'

end

 

program define rr

version 1

local g1 "`1'"

local g2 "`2'"

local g3 "`3'"

local g4 "`4'"

local g5 "`5'"

display as txt "point absolute effect = " =  round((`4' / `5')*`1'*1000)

display as txt "lower_limit absolute effect = " = round((`4' / `5')*`2'*1000)

display as txt "upper_limit absolute effect = " = round((`4' / `5')*`3'*1000)

end

 

program define rr100

version 1

local g1 "`1'"

local g2 "`2'"

local g3 "`3'"

local g4 "`4'"

local g5 "`5'"

display as txt "point absolute effect = " =  round((`4' / `5')*`1'*100)

display as txt "lower_limit absolute effect = " = round((`4' / `5')*`2'*100)

display as txt "upper_limit absolute effect = " = round((`4' / `5')*`3'*100)

end

 

program define or

version 1

local g1 "`1'"

local g2 "`2'"

local g3 "`3'"

local g4 "`4'"

local g5 "`5'"

display as txt "point absolute effect = " =  round(1000*(`4'/`5')*`1'/ (1 - (`4'/`5') + ((`4'/`5')*`1')))

display as txt "lower_limit absolute effect = " = round(1000*(`4'/`5')*`2'/ (1 - (`4'/`5') + ((`4'/`5')*`2')))

display as txt "upper_limit absolute effect = " = round(1000*(`4'/`5')*`3'/ (1 - (`4'/`5') + ((`4'/`5')*`3')))

end


program define or100
	version 1
	
	local g1 "`1'"
	local g2 "`2'"
	local g3 "`3'"
	local g4 "`4'"
	local g5 "`5'"
	
	display as txt "point absolute effect = " =  round(100*(`4'/`5')*`1'/ (1 - (`4'/`5') + ((`4'/`5')*`1')))
	display as txt "lower_limit absolute effect = " = round(100*(`4'/`5')*`2'/ (1 - (`4'/`5') + ((`4'/`5')*`2')))
	display as txt "upper_limit absolute effect = " = round(100*(`4'/`5')*`3'/ (1 - (`4'/`5') + ((`4'/`5')*`3')))


end


program define hrsurv

version 1
	
	local g1 "`1'"
	local g2 "`2'"
	local g3 "`3'"
	local g4 "`4'"
	

	display as txt "point absolute effect = " =  round(exp(ln(`4')*`1')*1000)
	display as txt "lower_limit absolute effect = " = round(exp(ln(`4')*`3')*1000)
	display as txt "upper_limit absolute effect = " = round(exp(ln(`4')*`2')*1000)
	
	
	
end


program define hrsurv100

version 1
	
	local g1 "`1'"
	local g2 "`2'"
	local g3 "`3'"
	local g4 "`4'"
	

	display as txt "point absolute effect = " =  round(exp(ln(`4')*`1')*100)
	display as txt "lower_limit absolute effect = " = round(exp(ln(`4')*`3')*100)
	display as txt "upper_limit absolute effect = " = round(exp(ln(`4')*`2')*100)
	
end

program define hrevent

version 1
	
	local g1 "`1'"
	local g2 "`2'"
	local g3 "`3'"
	local g4 "`4'"
	

	display as txt "point absolute effect = " =  round(1000 - (exp(ln(1 -`4')*`1')*1000))
	display as txt "lower_limit absolute effect = " = round(1000 - (exp(ln(1 -`4')*`2')*1000))
	display as txt "upper_limit absolute effect = " = round(1000 - (exp(ln(1 -`4')*`3')*1000))
	
	
end


program define hrevent100

version 1
	
	local g1 "`1'"
	local g2 "`2'"
	local g3 "`3'"
	local g4 "`4'"
	

	display as txt "point absolute effect = " =  round(100 - (exp(ln(1 -`4')*`1')*100))
	display as txt "lower_limit absolute effect = " = round(100 - (exp(ln(1 -`4')*`2')*100))
	display as txt "upper_limit absolute effect = " = round(100 - (exp(ln(1 -`4')*`3')*100))
	
	
end
