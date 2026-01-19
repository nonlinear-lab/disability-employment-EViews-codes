' hoterogenous analysis 4
' youth=0 non-youth, youth=1 youth

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
smpl if youth=0
equation eq91.ls(cov=cr,crname=st) dv iv1 iv2 did cv1 cv2 cv3 c

smpl if youth=1
equation eq92.ls(cov=cr,crname=st) dv iv1 iv2 did cv1 cv2 cv3 c


