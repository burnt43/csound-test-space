<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr     = 44100
ksmps  = 32
nchnls = 2
0dbfs  = 1
instr 1
asig oscils .2, p4, 0
     outs asig,asig
endin
</CsInstruments>
<CsScore>
i 1 0 2 1000
i 1 3 2 43100
</CsScore>
</CsoundSynthesizer>

