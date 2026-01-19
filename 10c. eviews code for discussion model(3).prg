' discussion model 3
' schl>=21, schl<21

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
smpl if schl>=21
equation eq10c1.ls(cov=cr,crname=st) dv iv1 iv2 did cv1 cv2 cv4 c

smpl if schl<21
equation eq10c2.ls(cov=cr,crname=st) dv iv1 iv2 did cv1 cv2 cv4 c


