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
      aOut vco2 1, 440
           out aOut
    endin  
  </CsInstruments>
  <CsScore>
    i 1 0 2
  </CsScore>
</CsoundSynthesizer>
