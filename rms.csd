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
  giSine    ftgen     0, 0, 2^10, 10, 1

  instr 1
    a3 init 0
    kamp linseg 0,1.5,0.2,1.5,0
    asnd poscil kamp,440,gi_sine
    if p4 == 1 then
      adel1 poscil 0.0523,0.023,gi_sine
      adel2 poscil 0.073,0.023,gi_sine,0.5
    else
      adel1 randi 0.5,0.1,2
      adel2 randi 0.08,0.2,2
    endif
    a0 delayr 1
    a1 deltapi adel1 + 0.1
    a2 deltapi adel2 + 0.1
    krms rms a3
    delayw asnd + exp(-krms) * a3
    a3 reson -(a1+a2), 3000, 7000, 2
    aout linen a1/3,1,p3,1
    outs aout,aout
  endin
</CsInstruments>
; ==============================================
<CsScore>
  i 1 0 60 1
  i 1 61 . 2
</CsScore>
</CsoundSynthesizer>

