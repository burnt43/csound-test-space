; Plays A 440 for a second
<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
instr 1
aSin poscil 0dbfs/4, 440
     out    aSin
endin
instr 2
aSin poscil 0dbfs/4, 554.37
     out    aSin
endin
instr 3
aSin poscil 0dbfs/4, 659.25
     out    aSin
endin
instr 4
aSin poscil 0dbfs/4, 830.61
     out    aSin
endin
instr 5
aSin poscil 0dbfs/4, 880
     out    aSin
endin
instr 6
aSin poscil 0dbfs/4, 329.63
     out    aSin
endin
</CsInstruments>
<CsScore>
i 6 0    2
i 1 0    0.25
i 2 0.25 0.25
i 3 0.5  0.25
i 4 0.75 0.25
i 5 1.0  0.25
i 4 1.25 0.25
i 3 1.5  0.25
i 2 1.75 0.25
i 1 2    0.25
</CsScore>
</CsoundSynthesizer>
