<CsoundSynthesizer>
<CsOptions>
-odac -iadc
</CsOptions>
; ==============================================
<CsInstruments>

sr	   =	44100
ksmps	 =	32
nchnls =	2
0dbfs	 =	1

instr 1	
iReverbTime    = 10
iLoopTimeLeft  = 0.25
iLoopTimeRight = 0.5

aInLeft    inch 1
aInRight   inch 2
aCombLeft  comb aInLeft,  iReverbTime, iLoopTimeLeft
aCombRight comb aInRight, iReverbTime, iLoopTimeRight
           out  aCombLeft, aCombRight
endin

</CsInstruments>
; ==============================================
<CsScore>
i 1 0 1000


</CsScore>
</CsoundSynthesizer>

