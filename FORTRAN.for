      SUBROUTINE DLOAD(F,KSTEP,KINC,TIME,NOEL,NPT,LAYER,KSPT,COORDS,
     1                 JLTYP,SNAME)
C
      INCLUDE 'ABA_PARAM.INC'
C
      DIMENSION TIME(1),COORDS(1)
      CHARACTER*80 SNAME
C    
      V = 33.33
      XL = 0.01
      F1 = 143200
      Zcentre1 = (V*TIME(1))
      x = COORDS (1)
      F = 1
C
      if (x > Zcentre1 .and. x < (Zcentre1 + XL) ) then
        F = F1
      End if
      RETURN
      END