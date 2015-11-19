<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1
instr 1
prints "Playing %d hertz", p4
asig oscils .2, p4, 0
outs asig,asig
endin
</CsInstruments>
<CsScore>
i 1 0 1 10
i . + . 100
i . + . 1000
i . + . 10000
i . + . 20000
</CsScore>
</CsoundSynthesizer>

