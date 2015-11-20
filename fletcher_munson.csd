<CsoundSynthesizer>
<CsOptions>
 -oadc
</CsOptions>
; ==============================================
<CsInstruments>
  sr = 44100
  kspms = 1
  nchnls = 2
  0dbfs = 1
  gi_sine ftgen 0,0,2^10,10,1
  instr 1
    kfreq expseg p4,p3,p5
    printk 1,kfreq
    asin poscil 0.2,kfreq,gi_sine
    aout linen asin,0.1,p3,0.1
    outs aout,aout
  endin
</CsInstruments>
; ==============================================
<CsScore>
  i 1 0 5 1000 1000
  i 1 6 20 20 20000
</CsScore>
</CsoundSynthesizer>

