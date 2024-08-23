************************************************************************
***   * 105743 26/10/21 JMCG ASSI VALIDA/CONSULTA CODIGO DE SECTORISTA *
************************************************************************
      *==============================================================*
      *  COPY    : SCLCA031  INFORMACION DEL SECTORISTA               *
      *  L.REG   : 120                                               *
      *--------------------------------------------------------------*
      * RETU-CODE  :  '00' : OK                                      *
      *               '01' :                                         *
      *               -----------------------------------------------*
      *               '10' : SECTORISTA ERRADO (SPACES)              *
      *               '20' : SECTORISTA NO EXISTE EN TABLA-DB2       *
      *               '30' : COD. SECTORISTA 5 SIN EQUIVALENTE DE 9  *
      *               -----------------------------------------------*
      *               '97' : ERROR EN CICS, LONGITUD COMMAREA        *
      *               '98' : ERROR EN CICS (VER CO-RETU-CICS)        *
      *               '99' : ERROR EN DB2  (VER CO-RETU-DB2)         *
      *==============================================================*
       01  SCLCA031-COMMAREA.
      *--------------------------------------------------- 01-20 ----*
  1        03  SCLCA031-DATOS-INPUT.
   1           05  SCLCA031-CO-SCTA-I       PIC X(09).
               05  SCLCA031-CO-SCTA5-I REDEFINES SCLCA031-CO-SCTA-I.
   1               10 SCLCA031-CO-SCTA5     PIC X(05).
   6               10 FILLER                PIC X(04).
   10          05  SCLCA031-FILLER-I        PIC X(11).
      *--------------------------------------------------- 21-120 ---*
 21        03  SCLCA031-DATOS-OUTPUT.
  21           05  SCLCA031-CO-RETU-O        PIC X(02).
  23           05  SCLCA031-CO-RETU-CICS-O   PIC X(02).
  25           05  SCLCA031-CO-RETU-DB2-O    PIC X(04).
  29           05  SCLCA031-DE-ERROR-O       PIC X(20).
  49           05  SCLCA031-ID-SCTA-O        PIC X(08).
  57           05  SCLCA031-NO-SCTA-O        PIC X(40).
  97           05  SCLCA031-FILLER-O         PIC X(24).
      *=================================================== 120 ======*
