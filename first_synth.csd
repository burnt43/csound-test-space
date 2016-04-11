<CsoundSynthesizer>
  <CsOptions>
    -odac
  </CsOptions>
  <CsInstruments>
    sr     = 44100
    kspms  = 32
    nchnls = 2
    0dbfs  = 1

    instr 1
      iFreq = p4
      iAmp  = p5

      aOut vco2 iAmp, iFreq
           out aOut
    endin  
  </CsInstruments>
  <CsScore>
    i 1 0 1 220 1.0
    i 1 0 1 440 1.0
    i 1 1 1 220 0.5
    i 1 1 1 440 0.5
  </CsScore>
</CsoundSynthesizer>
