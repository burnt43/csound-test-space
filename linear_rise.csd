<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
; ==============================================
<CsInstruments>
sr = 44100
kspms = 1
nchnls = 2
0dbfs = 1

instr 1
kamp line 0,p3,1
asig oscils 1,100,0
aout = asig * kamp
outs aout,aout
endin

instr 2
kdb line -80,p3,0
asig oscils 1,200,0
kamp = ampdb(kdb)
aout = asig * kamp
outs aout,aout
endin

</CsInstruments>
; ==============================================
<CsScore>
i 1 0  10
i 2 11 10


</CsScore>
</CsoundSynthesizer>

