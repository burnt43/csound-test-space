<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
; ==============================================
<CsInstruments>

sr = 44100
kspms = 32
nchnls = 2
0dbfs = 1

instr 1
prints "%d hz\n", p4
asig oscils 0.2, p4, 0
outs asig,asig
endin

instr 2
prints "%d hz\n", p4+p5
asig oscils 0.2, p4+p5, 0
outs asig,asig
endin

instr 3
prints "%d hz\n", p4*p5
asig oscils 0.2, p4*p5, 0
outs asig,asig
endin

</CsInstruments>
; ==============================================
<CsScore>
i 1 0  1 260
i 2 1  1 260 100
i 1 2  1 260
i 3 3  1 260 [3/2]

i 1 4  1 456
i 2 5  1 456 100
i 1 6  1 456
i 3 7  1 456 [3/2]

i 1 8  1 731
i 2 9  1 731 100
i 1 10 1 731
i 3 11 1 731 [3/2]
</CsScore>
</CsoundSynthesizer>

