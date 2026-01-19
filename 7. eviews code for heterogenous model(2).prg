' hoterogenous analysis 2
' race=0 white, race=1 non_white

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
smpl if non_white=0
equation eq71.ls(cov=cr,crname=st) dv iv1 iv2 did cv1 cv3 cv4 c

smpl if non_white=1
equation eq72.ls(cov=cr,crname=st) dv iv1 iv2 did cv1 cv3 cv4 c

