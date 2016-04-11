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

  iAttack  = 0.1
  iDecay   = 0.4
  iSustain = 0.5
  iRelease = 0.6

  iCutoff    = 5000
  iResonance = 0.4

  kEnvelopeFilter madsr      iAttack, iDecay, iSustain, iRelease
  aVco            vco2       iAmp, iFreq
  aLowPassFilter  moogladder aVco, iCutoff*kEnvelopeFilter, iResonance
                  out        aLowPassFilter*kEnvelopeFilter
  endin 
  </CsInstruments>
  <CsScore>
  i 1 0 1 220 1.0
  i 1 0 1 440 1.0
  i 1 2 1 220 0.5
  i 1 2 1 440 0.5
  </CsScore>
</CsoundSynthesizer>
