' hoterogenous analysis 1
' gender=0 male, gender=1 male

' dependnent variable is employment
series dv=employment

' two independent variables
series iv1=disability
series iv2=time

' Did (interaction term)
series did=disability*time

'four control variable
series cv1=gender
series cv2=non_white
series cv3=non_hs_diploma
series cv4=youth

' estimation
smpl if gender=0
equation eq61.ls(cov=cr,crname=st) dv iv1 iv2 did cv2 cv3 cv4 c

smpl if gender=1
equation eq62.ls(cov=cr,crname=st) dv iv1 iv2 did cv2 cv3 cv4 c


