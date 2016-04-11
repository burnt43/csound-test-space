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
iFreq          = p4
iReverbTime    = 2
iLoopTimeLeft  = 0.25
iLoopTimeRight = 0.5

kEnvelopeFilter madsr 0.2, 0.2, 0.2, 0.2
aVco       vco2 1.0, iFreq
aFiltered = kEnvelopeFilter*aVco
aCombLeft  comb aFiltered,  iReverbTime, iLoopTimeLeft
aCombRight comb aFiltered, iReverbTime, iLoopTimeRight
           out  aCombLeft, aCombRight
endin

</CsInstruments>
; ==============================================
<CsScore>
i 1 0 5 300
i 1 5 5 400


</CsScore>
</CsoundSynthesizer>

