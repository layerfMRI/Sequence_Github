<XProtocol> 
{
  <ID> 1000001 
  <Userversion> 666.0 
  
  <ParamMap.""> 
  {
    <ParamMap."Properties"> 
    {
      
      <ParamMap."Queue"> 
      {
        
        <ParamBool."WorkingMan">  { "true"  }
        <ParamBool."WaitForUserToStart">  { }
        <ParamString."ProtocolName">  { "gre_b0map_4iso_sag"  }
        <ParamArray."CoilCompartments"> 
        {
          <Default> <ParamBool.""> 
          {
            <LimitRange> { "false" "true" }
          }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          { }
          
        }
        <ParamChoice."WaitForStartChoice">  { <Limit> { "Single measurement" } "Single measurement"  }
        <ParamChoice."CoilSelectMode">  { <Limit> { "Auto Coil Select On" } "Auto Coil Select On"  }
      }
      <ParamMap."Sound"> 
      {
        
        <ParamString."PreSound">  { }
        <ParamString."PostSound">  { }
      }
      <ParamMap."Reconstruction"> 
      {
        
        <ParamBool."recon_prio">  { }
      }
      <ParamMap."AutoLoad"> 
      {
        
        <ParamBool."DisableAutoTransfer">  { }
        <ParamBool."LoadToViewer">  { "true"  }
        <ParamBool."LoadToStamp">  { "true"  }
        <ParamBool."LoadToGraphic">  { }
        <ParamBool."InlineMovie">  { }
        <ParamBool."AutoOpenInlineDisplay">  { }
        <ParamBool."AutoCloseInlineDisplay">  { }
        <ParamBool."AutoStore">  { "true"  }
        <ParamChoice."GraphicSegmentChoice">  { <Limit> { "Default" } "Default"  }
      }
    }
    <ParamMap."TablePositioning"> 
    {
      
      <ParamBool."ForceIso">  { }
    }
    <ParamMap."ParameterSynchronization"> 
    {
      
      <ParamBool."SynchronizeReadoutFov">  { }
      <ParamBool."SynchronizePhaseFov">  { }
      <ParamBool."SynchronizeSliceThickness">  { }
      <ParamBool."SynchronizeDistanceFactor">  { }
      <ParamBool."SynchronizeBaseResolution">  { }
      <ParamBool."SynchronizePhaseOversampling">  { }
      <ParamBool."SynchronizeAverages">  { }
      <ParamBool."SynchronizeSlices">  { }
      <ParamBool."SynchronizeConcatenations">  { }
    }
    <ParamMap."OpenWorkflow"> 
    {
      
      <ParamString."ModuleConfiguration">  { }
    }
    <ParamMap."OpenRecon"> 
    {
      
      <ParamString."OpenReconAlgorithm">  { }
      <ParamArray."Parameters"> 
      {
        <Default> <ParamMap.""> 
        {
          
          <ParamString."Id"> 
          {
          }
          
          <ParamString."ParameterValue"> 
          {
          }
        }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        { }
        
      }
    }
    <ParamMap."MultiStep"> 
    {
      
      <ParamBool."IsInlineCompose">  { }
      <ParamBool."SaveNonnormalizedImages">  { "true"  }
      <ParamString."SeriesDescription">  { }
      <ParamLong."ComposingGroup">  { 1  }
      <ParamBool."IsLastStep">  { }
      <ParamChoice."ComposingNormalize">  { <Limit> { "Off" } "Off"  }
      <ParamChoice."ComposingFunction">  { <Limit> { "Angio" } "Angio"  }
    }
  }
}

<XProtocol> 
{
  
  <ParamMap.""> 
  {
    <ParamMap."MultiStep"> 
    {
      
      <ParamString."SubStepLabel">  { }
    }
    <ParamMap."Common"> 
    {
      
      <ParamBool."DisableVoiceCommands">  { }
      <ParamBool."IsRadialSliceSortingActive">  { }
      <ParamBool."ConfidenceRescaling">  { }
    }
    <ParamMap."ConflictSolving"> 
    {
      
      <ParamLong."ConflictSolvingMode">  { }
      <ParamDouble."MaxTr">  { }
      <ParamDouble."MinFlipAngle">  { }
    }
  }
}

### ASCCONV BEGIN object=MrProtDataImpl@MrProtocolData version=72504000 converter=%MEASCONST%/ConverterList/Prot_Converter.txt ###
ulVersion	 = 	72504000
tSequenceFileName	 = 	"%SiemensSeq%\gre_field_mapping"
tProtocolName	 = 	"gre_b0map_4iso_sag"
lScanRegionPosTra	 = 	-0.0
ucScanRegionPosValid	 = 	0x1
lPtabAbsStartPosZ	 = 	0
bPtabAbsStartPosZValid	 = 	0x0
lContrasts	 = 	2
lCombinedEchoes	 = 	1
ucDisableChangeStoreImages	 = 	0x1
ucAAMode	 = 	1
ucReconstructionMode	 = 	8
ucOneSeriesForAllMeas	 = 	1
ucPHAPSMode	 = 	1
ulWrapUpMagn	 = 	1
lAverages	 = 	1
dAveragesDouble	 = 	1.0
lScanTimeSec	 = 	31
lTotalScanTimeSec	 = 	31
dRefSNR	 = 	379847.413576
dRefSNR_VOI	 = 	379847.413576
ulMotionCorr	 = 	1
ucCineMode	 = 	1
ucSequenceType	 = 	1
ucCoilCombineMode	 = 	1
ucFlipAngleMode	 = 	1
lTOM	 = 	1
ucReadOutMode	 = 	1
ucBold3dPace	 = 	1
ucTmapB0Correction	 = 	1
ucTmapEval	 = 	1
ucTmapImageType	 = 	1
ulOrganUnderExamination	 = 	1
dTissueT1	 = 	10.0
dTissueT2	 = 	5.0
lInvContrasts	 = 	1
ulReaquisitionMode	 = 	1
lDummyScans	 = 	0
ucExternalTriggerSignal	 = 	0x0
lSilentPeriod	 = 	0
dOverallImageScaleFactor	 = 	0.25
dOverallImageScaleCorrectionFactor	 = 	1.0
dAutoCoilSelectIlluRangeScale	 = 	0.699999988079
SarOptimization	 = 	0
CameraBasedMotionCorrection	 = 	0
ucBreastApplication	 = 	0x0
ucEddyCurrentComp	 = 	0x0
ucStaticFieldCorrection	 = 	0x0
ucDenoiseUniform	 = 	0x0
ucUnfilteredImagesForDenoiseUniform	 = 	0x0
lDenoiseWeight	 = 	1
sInversionContrastCombination	 = 	1
ucMotionCorSAMEROrig	 = 	0x1
ucImplicitFilter	 = 	0x1
sProtConsistencyInfo.flNominalB0	 = 	6.98093605042
sGRADSPEC.ucMode	 = 	1
sGRADSPEC.ucNoiseReduction	 = 	1
sGRADSPEC.asGPAData.__attribute__.size	 = 	1
sGRADSPEC.asGPAData[0].sEddyCompensationX.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sEddyCompensationX.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sEddyCompensationY.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sEddyCompensationY.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sEddyCompensationZ.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sEddyCompensationZ.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationX.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationX.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationY.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationY.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationZ.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sB0CompensationZ.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationXY.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationXY.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationXZ.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationXZ.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationYX.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationYX.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationYZ.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationYZ.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationZX.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationZX.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationZY.aflAmplitude.__attribute__.size	 = 	5
sGRADSPEC.asGPAData[0].sCrossTermCompensationZY.aflTimeConstant.__attribute__.size	 = 	5
sGRADSPEC.alShimCurrent.__attribute__.size	 = 	15
sTXSPEC.lBCExcitationMode	 = 	0
sTXSPEC.lBCSeqExcitationMode	 = 	4
sTXSPEC.ucRFPulseType	 = 	1
sTXSPEC.ucExcitMode	 = 	1
sTXSPEC.ucSimultaneousExcitation	 = 	1
sTXSPEC.lB1ShimMode	 = 	1
sTXSPEC.ucRFPulseOptimization	 = 	1
sTXSPEC.asNucleusInfo.__attribute__.size	 = 	2
sTXSPEC.asNucleusInfo[0].tNucleus	 = 	"1H"
sTXSPEC.asNucleusInfo[0].lCoilSelectIndex	 = 	-1
sTXSPEC.asNucleusInfo[0].CompProtectionValues.MaxOnlineTxAmpl.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.WorstCaseMaxOnlineTxAmpl.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationAvg.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationPeak.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.DecouplingMatrix.ComplexData.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ZZMatrixVector.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ScatterMatrix.ComplexData.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[0].aTxScaleFactorSlice.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[1].lCoilSelectIndex	 = 	-1
sTXSPEC.asNucleusInfo[1].CompProtectionValues.MaxOnlineTxAmpl.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[1].CompProtectionValues.WorstCaseMaxOnlineTxAmpl.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[1].CompProtectionValues.adGainVariationAvg.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[1].CompProtectionValues.adGainVariationPeak.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[1].CompProtectionValues.DecouplingMatrix.ComplexData.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[1].CompProtectionValues.ZZMatrixVector.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[1].CompProtectionValues.ScatterMatrix.ComplexData.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[1].aTxScaleFactorSlice.__attribute__.size	 = 	0
sTXSPEC.aRFPULSE.__attribute__.size	 = 	256
sTXSPEC.aTxScaleFactor.__attribute__.size	 = 	8
sTXSPEC.aPTXRFPulse.__attribute__.size	 = 	0
sTXSPEC.B1CorrectionParameters.bValid	 = 	0x1
sTXSPEC.B1CorrectionParameters.bActive	 = 	0x0
sTXSPEC.B1CorrectionParameters.flCorrectionFactorMax	 = 	1.0
sTXSPEC.B1CorrectionParameters.flPeakReserveFactor	 = 	0.0
sRXSPEC.lSeqGain	 = 	1
sRXSPEC.UseDoubleDataRate	 = 	0x0
sRXSPEC.bPilotToneSupportActive	 = 	0x0
sRXSPEC.asNucleusInfo.__attribute__.size	 = 	2
sRXSPEC.asNucleusInfo[0].tNucleus	 = 	"1H"
sRXSPEC.asNucleusInfo[0].lCoilSelectIndex	 = 	-1
sRXSPEC.asNucleusInfo[1].lCoilSelectIndex	 = 	-1
sRXSPEC.alVariCapVoltages.__attribute__.size	 = 	4
sRXSPEC.alDwellTime.__attribute__.size	 = 	256
sRXSPEC.alDwellTime[0]	 = 	8600
sRXSPEC.alDwellTime[1]	 = 	8600
sRXSPEC.asLocalShimData.__attribute__.size	 = 	8
sAdjData.uiAdjFreMode	 = 	1
sAdjData.uiAdjTraMode	 = 	1
sAdjData.uiAdjShimMode	 = 	512
sAdjData.uiAdjWatSupMode	 = 	1
sAdjData.uiAdjRFMapMode	 = 	1
sAdjData.uiAdjMDSMode	 = 	1
sAdjData.uiAdjTableTolerance	 = 	2
sAdjData.lCoupleAdjVolTo	 = 	1
sAdjData.uiAdjB0AcqMode	 = 	1
sAdjData.uiAdjB1AcqMode	 = 	1
sAdjData.uiAdjFreqConfirmSpec	 = 	1
sAdjData.uiAdjustmentMode	 = 	1
sAdjData.uiFastViewOptimization	 = 	1
sAdjData.uiAdjSliceBySliceTxRef	 = 	0x1
sAdjData.uiAdjSliceBySliceFrequency	 = 	0x1
sAdjData.uiAdjSliceBySliceFirstOrderShim	 = 	0x1
sAdjData.bAdjustWithBreathhold	 = 	0x0
sAdjData.uiLocalShim	 = 	0
sAdjData.uiLRBalancing	 = 	0
sAdjData.sAdjUIOverrides.iAdjUIFieldMapMode	 = 	-1
sAdjData.sAdjUIOverrides.iAdjUITraMode	 = 	-1
sAdjData.anAdjDicoPulseAmplitude.__attribute__.size	 = 	0
alTR.__attribute__.size	 = 	256
alTR[0]	 = 	238000
alTI.__attribute__.size	 = 	256
alTD.__attribute__.size	 = 	256
alTE.__attribute__.size	 = 	256
alTE[0]	 = 	3060
alTE[1]	 = 	4080
acFlowComp.__attribute__.size	 = 	256
acFlowComp[0]	 = 	2
acFlowComp[1]	 = 	2
sSliceArray.lSize	 = 	44
sSliceArray.lSag	 = 	44
sSliceArray.lConc	 = 	1
sSliceArray.ucMode	 = 	4
sSliceArray.ucAnatomicalSliceMode	 = 	4
sSliceArray.ucConcatenationsSelectModeResp	 = 	1
sSliceArray.asSlice.__attribute__.size	 = 	256
sSliceArray.asSlice[0].dThickness	 = 	4.0
sSliceArray.asSlice[0].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[0].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[0].sPosition.dSag	 = 	-86.0
sSliceArray.asSlice[0].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[1].dThickness	 = 	4.0
sSliceArray.asSlice[1].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[1].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[1].sPosition.dSag	 = 	-82.0
sSliceArray.asSlice[1].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[2].dThickness	 = 	4.0
sSliceArray.asSlice[2].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[2].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[2].sPosition.dSag	 = 	-78.0
sSliceArray.asSlice[2].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[3].dThickness	 = 	4.0
sSliceArray.asSlice[3].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[3].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[3].sPosition.dSag	 = 	-74.0
sSliceArray.asSlice[3].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[4].dThickness	 = 	4.0
sSliceArray.asSlice[4].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[4].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[4].sPosition.dSag	 = 	-70.0
sSliceArray.asSlice[4].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[5].dThickness	 = 	4.0
sSliceArray.asSlice[5].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[5].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[5].sPosition.dSag	 = 	-66.0
sSliceArray.asSlice[5].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[6].dThickness	 = 	4.0
sSliceArray.asSlice[6].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[6].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[6].sPosition.dSag	 = 	-62.0
sSliceArray.asSlice[6].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[7].dThickness	 = 	4.0
sSliceArray.asSlice[7].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[7].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[7].sPosition.dSag	 = 	-58.0
sSliceArray.asSlice[7].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[8].dThickness	 = 	4.0
sSliceArray.asSlice[8].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[8].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[8].sPosition.dSag	 = 	-54.0
sSliceArray.asSlice[8].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[9].dThickness	 = 	4.0
sSliceArray.asSlice[9].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[9].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[9].sPosition.dSag	 = 	-50.0
sSliceArray.asSlice[9].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[10].dThickness	 = 	4.0
sSliceArray.asSlice[10].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[10].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[10].sPosition.dSag	 = 	-46.0
sSliceArray.asSlice[10].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[11].dThickness	 = 	4.0
sSliceArray.asSlice[11].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[11].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[11].sPosition.dSag	 = 	-42.0
sSliceArray.asSlice[11].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[12].dThickness	 = 	4.0
sSliceArray.asSlice[12].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[12].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[12].sPosition.dSag	 = 	-38.0
sSliceArray.asSlice[12].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[13].dThickness	 = 	4.0
sSliceArray.asSlice[13].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[13].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[13].sPosition.dSag	 = 	-34.0
sSliceArray.asSlice[13].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[14].dThickness	 = 	4.0
sSliceArray.asSlice[14].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[14].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[14].sPosition.dSag	 = 	-30.0
sSliceArray.asSlice[14].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[15].dThickness	 = 	4.0
sSliceArray.asSlice[15].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[15].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[15].sPosition.dSag	 = 	-26.0
sSliceArray.asSlice[15].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[16].dThickness	 = 	4.0
sSliceArray.asSlice[16].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[16].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[16].sPosition.dSag	 = 	-22.0
sSliceArray.asSlice[16].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[17].dThickness	 = 	4.0
sSliceArray.asSlice[17].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[17].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[17].sPosition.dSag	 = 	-18.0
sSliceArray.asSlice[17].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[18].dThickness	 = 	4.0
sSliceArray.asSlice[18].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[18].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[18].sPosition.dSag	 = 	-14.0
sSliceArray.asSlice[18].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[19].dThickness	 = 	4.0
sSliceArray.asSlice[19].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[19].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[19].sPosition.dSag	 = 	-10.0
sSliceArray.asSlice[19].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[20].dThickness	 = 	4.0
sSliceArray.asSlice[20].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[20].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[20].sPosition.dSag	 = 	-6.0
sSliceArray.asSlice[20].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[21].dThickness	 = 	4.0
sSliceArray.asSlice[21].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[21].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[21].sPosition.dSag	 = 	-2.0
sSliceArray.asSlice[21].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[22].dThickness	 = 	4.0
sSliceArray.asSlice[22].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[22].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[22].sPosition.dSag	 = 	2.0
sSliceArray.asSlice[22].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[23].dThickness	 = 	4.0
sSliceArray.asSlice[23].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[23].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[23].sPosition.dSag	 = 	6.0
sSliceArray.asSlice[23].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[24].dThickness	 = 	4.0
sSliceArray.asSlice[24].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[24].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[24].sPosition.dSag	 = 	10.0
sSliceArray.asSlice[24].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[25].dThickness	 = 	4.0
sSliceArray.asSlice[25].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[25].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[25].sPosition.dSag	 = 	14.0
sSliceArray.asSlice[25].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[26].dThickness	 = 	4.0
sSliceArray.asSlice[26].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[26].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[26].sPosition.dSag	 = 	18.0
sSliceArray.asSlice[26].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[27].dThickness	 = 	4.0
sSliceArray.asSlice[27].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[27].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[27].sPosition.dSag	 = 	22.0
sSliceArray.asSlice[27].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[28].dThickness	 = 	4.0
sSliceArray.asSlice[28].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[28].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[28].sPosition.dSag	 = 	26.0
sSliceArray.asSlice[28].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[29].dThickness	 = 	4.0
sSliceArray.asSlice[29].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[29].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[29].sPosition.dSag	 = 	30.0
sSliceArray.asSlice[29].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[30].dThickness	 = 	4.0
sSliceArray.asSlice[30].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[30].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[30].sPosition.dSag	 = 	34.0
sSliceArray.asSlice[30].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[31].dThickness	 = 	4.0
sSliceArray.asSlice[31].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[31].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[31].sPosition.dSag	 = 	38.0
sSliceArray.asSlice[31].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[32].dThickness	 = 	4.0
sSliceArray.asSlice[32].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[32].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[32].sPosition.dSag	 = 	42.0
sSliceArray.asSlice[32].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[33].dThickness	 = 	4.0
sSliceArray.asSlice[33].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[33].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[33].sPosition.dSag	 = 	46.0
sSliceArray.asSlice[33].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[34].dThickness	 = 	4.0
sSliceArray.asSlice[34].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[34].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[34].sPosition.dSag	 = 	50.0
sSliceArray.asSlice[34].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[35].dThickness	 = 	4.0
sSliceArray.asSlice[35].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[35].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[35].sPosition.dSag	 = 	54.0
sSliceArray.asSlice[35].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[36].dThickness	 = 	4.0
sSliceArray.asSlice[36].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[36].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[36].sPosition.dSag	 = 	58.0
sSliceArray.asSlice[36].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[37].dThickness	 = 	4.0
sSliceArray.asSlice[37].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[37].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[37].sPosition.dSag	 = 	62.0
sSliceArray.asSlice[37].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[38].dThickness	 = 	4.0
sSliceArray.asSlice[38].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[38].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[38].sPosition.dSag	 = 	66.0
sSliceArray.asSlice[38].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[39].dThickness	 = 	4.0
sSliceArray.asSlice[39].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[39].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[39].sPosition.dSag	 = 	70.0
sSliceArray.asSlice[39].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[40].dThickness	 = 	4.0
sSliceArray.asSlice[40].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[40].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[40].sPosition.dSag	 = 	74.0
sSliceArray.asSlice[40].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[41].dThickness	 = 	4.0
sSliceArray.asSlice[41].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[41].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[41].sPosition.dSag	 = 	78.0
sSliceArray.asSlice[41].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[42].dThickness	 = 	4.0
sSliceArray.asSlice[42].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[42].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[42].sPosition.dSag	 = 	82.0
sSliceArray.asSlice[42].sNormal.dSag	 = 	1.0
sSliceArray.asSlice[43].dThickness	 = 	4.0
sSliceArray.asSlice[43].dPhaseFOV	 = 	256.0
sSliceArray.asSlice[43].dReadoutFOV	 = 	256.0
sSliceArray.asSlice[43].sPosition.dSag	 = 	86.0
sSliceArray.asSlice[43].sNormal.dSag	 = 	1.0
sSliceArray.alSliceAcqOrder.__attribute__.size	 = 	256
sSliceArray.alSliceAcqOrder[1]	 = 	1
sSliceArray.alSliceAcqOrder[2]	 = 	2
sSliceArray.alSliceAcqOrder[3]	 = 	3
sSliceArray.alSliceAcqOrder[4]	 = 	4
sSliceArray.alSliceAcqOrder[5]	 = 	5
sSliceArray.alSliceAcqOrder[6]	 = 	6
sSliceArray.alSliceAcqOrder[7]	 = 	7
sSliceArray.alSliceAcqOrder[8]	 = 	8
sSliceArray.alSliceAcqOrder[9]	 = 	9
sSliceArray.alSliceAcqOrder[10]	 = 	10
sSliceArray.alSliceAcqOrder[11]	 = 	11
sSliceArray.alSliceAcqOrder[12]	 = 	12
sSliceArray.alSliceAcqOrder[13]	 = 	13
sSliceArray.alSliceAcqOrder[14]	 = 	14
sSliceArray.alSliceAcqOrder[15]	 = 	15
sSliceArray.alSliceAcqOrder[16]	 = 	16
sSliceArray.alSliceAcqOrder[17]	 = 	17
sSliceArray.alSliceAcqOrder[18]	 = 	18
sSliceArray.alSliceAcqOrder[19]	 = 	19
sSliceArray.alSliceAcqOrder[20]	 = 	20
sSliceArray.alSliceAcqOrder[21]	 = 	21
sSliceArray.alSliceAcqOrder[22]	 = 	22
sSliceArray.alSliceAcqOrder[23]	 = 	23
sSliceArray.alSliceAcqOrder[24]	 = 	24
sSliceArray.alSliceAcqOrder[25]	 = 	25
sSliceArray.alSliceAcqOrder[26]	 = 	26
sSliceArray.alSliceAcqOrder[27]	 = 	27
sSliceArray.alSliceAcqOrder[28]	 = 	28
sSliceArray.alSliceAcqOrder[29]	 = 	29
sSliceArray.alSliceAcqOrder[30]	 = 	30
sSliceArray.alSliceAcqOrder[31]	 = 	31
sSliceArray.alSliceAcqOrder[32]	 = 	32
sSliceArray.alSliceAcqOrder[33]	 = 	33
sSliceArray.alSliceAcqOrder[34]	 = 	34
sSliceArray.alSliceAcqOrder[35]	 = 	35
sSliceArray.alSliceAcqOrder[36]	 = 	36
sSliceArray.alSliceAcqOrder[37]	 = 	37
sSliceArray.alSliceAcqOrder[38]	 = 	38
sSliceArray.alSliceAcqOrder[39]	 = 	39
sSliceArray.alSliceAcqOrder[40]	 = 	40
sSliceArray.alSliceAcqOrder[41]	 = 	41
sSliceArray.alSliceAcqOrder[42]	 = 	42
sSliceArray.alSliceAcqOrder[43]	 = 	43
sSliceArray.anAsc.__attribute__.size	 = 	256
sSliceArray.anAsc[1]	 = 	1
sSliceArray.anAsc[2]	 = 	2
sSliceArray.anAsc[3]	 = 	3
sSliceArray.anAsc[4]	 = 	4
sSliceArray.anAsc[5]	 = 	5
sSliceArray.anAsc[6]	 = 	6
sSliceArray.anAsc[7]	 = 	7
sSliceArray.anAsc[8]	 = 	8
sSliceArray.anAsc[9]	 = 	9
sSliceArray.anAsc[10]	 = 	10
sSliceArray.anAsc[11]	 = 	11
sSliceArray.anAsc[12]	 = 	12
sSliceArray.anAsc[13]	 = 	13
sSliceArray.anAsc[14]	 = 	14
sSliceArray.anAsc[15]	 = 	15
sSliceArray.anAsc[16]	 = 	16
sSliceArray.anAsc[17]	 = 	17
sSliceArray.anAsc[18]	 = 	18
sSliceArray.anAsc[19]	 = 	19
sSliceArray.anAsc[20]	 = 	20
sSliceArray.anAsc[21]	 = 	21
sSliceArray.anAsc[22]	 = 	22
sSliceArray.anAsc[23]	 = 	23
sSliceArray.anAsc[24]	 = 	24
sSliceArray.anAsc[25]	 = 	25
sSliceArray.anAsc[26]	 = 	26
sSliceArray.anAsc[27]	 = 	27
sSliceArray.anAsc[28]	 = 	28
sSliceArray.anAsc[29]	 = 	29
sSliceArray.anAsc[30]	 = 	30
sSliceArray.anAsc[31]	 = 	31
sSliceArray.anAsc[32]	 = 	32
sSliceArray.anAsc[33]	 = 	33
sSliceArray.anAsc[34]	 = 	34
sSliceArray.anAsc[35]	 = 	35
sSliceArray.anAsc[36]	 = 	36
sSliceArray.anAsc[37]	 = 	37
sSliceArray.anAsc[38]	 = 	38
sSliceArray.anAsc[39]	 = 	39
sSliceArray.anAsc[40]	 = 	40
sSliceArray.anAsc[41]	 = 	41
sSliceArray.anAsc[42]	 = 	42
sSliceArray.anAsc[43]	 = 	43
sSliceArray.anPos.__attribute__.size	 = 	256
sSliceArray.anPos[1]	 = 	1
sSliceArray.anPos[2]	 = 	2
sSliceArray.anPos[3]	 = 	3
sSliceArray.anPos[4]	 = 	4
sSliceArray.anPos[5]	 = 	5
sSliceArray.anPos[6]	 = 	6
sSliceArray.anPos[7]	 = 	7
sSliceArray.anPos[8]	 = 	8
sSliceArray.anPos[9]	 = 	9
sSliceArray.anPos[10]	 = 	10
sSliceArray.anPos[11]	 = 	11
sSliceArray.anPos[12]	 = 	12
sSliceArray.anPos[13]	 = 	13
sSliceArray.anPos[14]	 = 	14
sSliceArray.anPos[15]	 = 	15
sSliceArray.anPos[16]	 = 	16
sSliceArray.anPos[17]	 = 	17
sSliceArray.anPos[18]	 = 	18
sSliceArray.anPos[19]	 = 	19
sSliceArray.anPos[20]	 = 	20
sSliceArray.anPos[21]	 = 	21
sSliceArray.anPos[22]	 = 	22
sSliceArray.anPos[23]	 = 	23
sSliceArray.anPos[24]	 = 	24
sSliceArray.anPos[25]	 = 	25
sSliceArray.anPos[26]	 = 	26
sSliceArray.anPos[27]	 = 	27
sSliceArray.anPos[28]	 = 	28
sSliceArray.anPos[29]	 = 	29
sSliceArray.anPos[30]	 = 	30
sSliceArray.anPos[31]	 = 	31
sSliceArray.anPos[32]	 = 	32
sSliceArray.anPos[33]	 = 	33
sSliceArray.anPos[34]	 = 	34
sSliceArray.anPos[35]	 = 	35
sSliceArray.anPos[36]	 = 	36
sSliceArray.anPos[37]	 = 	37
sSliceArray.anPos[38]	 = 	38
sSliceArray.anPos[39]	 = 	39
sSliceArray.anPos[40]	 = 	40
sSliceArray.anPos[41]	 = 	41
sSliceArray.anPos[42]	 = 	42
sSliceArray.anPos[43]	 = 	43
sSliceArray.sTSat.dThickness	 = 	40.0
sSliceArray.sTSat.dGap	 = 	10.0
sSliceArray.sTSat.ulShape	 = 	1
sGroupArray.lSize	 = 	1
sGroupArray.asGroup.__attribute__.size	 = 	256
sGroupArray.asGroup[0].nSize	 = 	44
sGroupArray.asGroup[0].AutoAlignData.Region	 = 	1
sGroupArray.asGroup[0].AutoAlignData.Reference	 = 	1
sGroupArray.asGroup[0].AutoAlignData.InitialOffset.Normal.dSag	 = 	1.0
sGroupArray.anMember.__attribute__.size	 = 	258
sGroupArray.anMember[1]	 = 	1
sGroupArray.anMember[2]	 = 	2
sGroupArray.anMember[3]	 = 	3
sGroupArray.anMember[4]	 = 	4
sGroupArray.anMember[5]	 = 	5
sGroupArray.anMember[6]	 = 	6
sGroupArray.anMember[7]	 = 	7
sGroupArray.anMember[8]	 = 	8
sGroupArray.anMember[9]	 = 	9
sGroupArray.anMember[10]	 = 	10
sGroupArray.anMember[11]	 = 	11
sGroupArray.anMember[12]	 = 	12
sGroupArray.anMember[13]	 = 	13
sGroupArray.anMember[14]	 = 	14
sGroupArray.anMember[15]	 = 	15
sGroupArray.anMember[16]	 = 	16
sGroupArray.anMember[17]	 = 	17
sGroupArray.anMember[18]	 = 	18
sGroupArray.anMember[19]	 = 	19
sGroupArray.anMember[20]	 = 	20
sGroupArray.anMember[21]	 = 	21
sGroupArray.anMember[22]	 = 	22
sGroupArray.anMember[23]	 = 	23
sGroupArray.anMember[24]	 = 	24
sGroupArray.anMember[25]	 = 	25
sGroupArray.anMember[26]	 = 	26
sGroupArray.anMember[27]	 = 	27
sGroupArray.anMember[28]	 = 	28
sGroupArray.anMember[29]	 = 	29
sGroupArray.anMember[30]	 = 	30
sGroupArray.anMember[31]	 = 	31
sGroupArray.anMember[32]	 = 	32
sGroupArray.anMember[33]	 = 	33
sGroupArray.anMember[34]	 = 	34
sGroupArray.anMember[35]	 = 	35
sGroupArray.anMember[36]	 = 	36
sGroupArray.anMember[37]	 = 	37
sGroupArray.anMember[38]	 = 	38
sGroupArray.anMember[39]	 = 	39
sGroupArray.anMember[40]	 = 	40
sGroupArray.anMember[41]	 = 	41
sGroupArray.anMember[42]	 = 	42
sGroupArray.anMember[43]	 = 	43
sGroupArray.anMember[44]	 = 	-1
sGroupArray.sPSat.dThickness	 = 	50.0
sGroupArray.sPSat.dGap	 = 	10.0
sGroupArray.sPSat.ulShape	 = 	1
sRSatArray.asElm.__attribute__.size	 = 	8
sRSatArray.asElm[0].ulShape	 = 	1
sRSatArray.asElm[1].ulShape	 = 	1
sRSatArray.asElm[2].ulShape	 = 	1
sRSatArray.asElm[3].ulShape	 = 	1
sRSatArray.asElm[4].ulShape	 = 	1
sRSatArray.asElm[5].ulShape	 = 	1
sRSatArray.asElm[6].ulShape	 = 	1
sRSatArray.asElm[7].ulShape	 = 	1
sNavigatorArray.asElm.__attribute__.size	 = 	5
sNavigatorPara.lBreathHoldMeas	 = 	1
sNavigatorPara.lRespComp	 = 	4
sNavigatorPara.dMinimumTriggerLevel	 = 	20.0
sNavigatorPara.adTrackingFactor.__attribute__.size	 = 	2
sNavigatorPara.adAcceptWindow.__attribute__.size	 = 	2
sNavigatorPara.adAcceptPosition.__attribute__.size	 = 	2
sNavigatorPara.adSearchWindow.__attribute__.size	 = 	2
sNavigatorPara.alFree.__attribute__.size	 = 	36
sNavigatorPara.adFree.__attribute__.size	 = 	24
sNavigatorPara.tFree.__attribute__.size	 = 	128
sBladePara.dBladeCoverage	 = 	100.0
sBladePara.ulMotionCorr	 = 	2
sBladePara.alFree.__attribute__.size	 = 	16
sBladePara.adFree.__attribute__.size	 = 	8
sPrepPulses.ucInversion	 = 	4
sPrepPulses.ucSatRecovery	 = 	1
sPrepPulses.ucT2Prep	 = 	1
sPrepPulses.ucTIScout	 = 	1
sPrepPulses.lMTCMode	 = 	1
sPrepPulses.lFlowAttenuation	 = 	1
sPrepPulses.ucFatSatMode	 = 	2
sPrepPulses.dDarkBloodThickness	 = 	200.0
sPrepPulses.dDarkBloodFlipAngle	 = 	200.0
sPrepPulses.dIRPulseThicknessFactor	 = 	0.77
sPrepPulses.ucBloodSuppression	 = 	1
sPrepPulses.lPhaseCorrectionMode	 = 	1
sPrepPulses.ucIRScheme	 = 	1
sPrepPulses.lFatSupOpt	 = 	1
sPrepPulses.lFatWaterContrast	 = 	1
sPrepPulses.adT2PrepDuration.__attribute__.size	 = 	1
sPrepPulses.adT2PrepDuration[0]	 = 	40.0
sKSpace.dPhaseResolution	 = 	1.0
sKSpace.dSliceResolution	 = 	1.0
sKSpace.dAngioDynCentralRegionA	 = 	20.0
sKSpace.dAngioDynSamplingDensityB	 = 	25.0
sKSpace.dSeqPhasePartialFourierForSNR	 = 	1.0
sKSpace.lBaseResolution	 = 	64
sKSpace.lPhaseEncodingLines	 = 	64
sKSpace.lPartitions	 = 	32
sKSpace.lImagesPerSlab	 = 	32
sKSpace.lRadialViews	 = 	64
sKSpace.lRadialInterleavesPerImage	 = 	1
sKSpace.lLinesPerShot	 = 	1
sKSpace.unReordering	 = 	1
sKSpace.ucPhasePartialFourier	 = 	16
sKSpace.ucSlicePartialFourier	 = 	16
sKSpace.ucAveragingMode	 = 	1
sKSpace.ucMultiSliceMode	 = 	2
sKSpace.ucDimension	 = 	2
sKSpace.ucTrajectory	 = 	1
sKSpace.lNumberOfBins	 = 	0
sKSpace.ucAsymmetricEchoMode	 = 	1
sKSpace.ucPOCS	 = 	1
sKSpace.Reordering3D	 = 	1
sKSpace.ucReadoutPartialFourier	 = 	16
sKSpace.ucDynamicMode	 = 	1
sKSpace.ucUndersamplingPattern	 = 	1
sKSpace.lNumberOfSweeps	 = 	0
sKSpace.DistributionAsymmetry	 = 	0
sKSpace.SpiralInterleaves	 = 	1
sKSpace.PhaseEncOrder	 = 	0
sFastImaging.lEPIFactor	 = 	1
sFastImaging.lTurboFactor	 = 	1
sFastImaging.lSliceTurboFactor	 = 	1
sFastImaging.lSegments	 = 	1
sFastImaging.ulEnableRFSpoiling	 = 	0x1
sFastImaging.ucPhaseEncRE	 = 	0x0
sFastImaging.ucSegmentationMode	 = 	1
sFastImaging.lShots	 = 	1
sFastImaging.lEchoTrainDuration	 = 	700
sPhysioImaging.lSignal1	 = 	1
sPhysioImaging.lMethod1	 = 	1
sPhysioImaging.lSignal2	 = 	1
sPhysioImaging.lMethod2	 = 	1
sPhysioImaging.lPhases	 = 	1
sPhysioImaging.lRetroGatedImages	 = 	16
sPhysioImaging.lDummyHeartbeats	 = 	0
sPhysioImaging.sPhysioECG.lTriggerPulses	 = 	1
sPhysioImaging.sPhysioECG.lTriggerWindow	 = 	5
sPhysioImaging.sPhysioECG.lArrhythmiaDetection	 = 	1
sPhysioImaging.sPhysioECG.lCardiacGateOnThreshold	 = 	100000
sPhysioImaging.sPhysioECG.lCardiacGateOffThreshold	 = 	700000
sPhysioImaging.sPhysioECG.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioECG.lAcquisitionPosition	 = 	1
sPhysioImaging.sPhysioPulse.lTriggerPulses	 = 	1
sPhysioImaging.sPhysioPulse.lTriggerWindow	 = 	5
sPhysioImaging.sPhysioPulse.lArrhythmiaDetection	 = 	1
sPhysioImaging.sPhysioPulse.lCardiacGateOnThreshold	 = 	100000
sPhysioImaging.sPhysioPulse.lCardiacGateOffThreshold	 = 	700000
sPhysioImaging.sPhysioPulse.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioPulse.lAcquisitionPosition	 = 	1
sPhysioImaging.sPhysioExt.lTriggerPulses	 = 	1
sPhysioImaging.sPhysioExt.lTriggerWindow	 = 	5
sPhysioImaging.sPhysioExt.lArrhythmiaDetection	 = 	1
sPhysioImaging.sPhysioExt.lCardiacGateOnThreshold	 = 	100000
sPhysioImaging.sPhysioExt.lCardiacGateOffThreshold	 = 	700000
sPhysioImaging.sPhysioExt.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioExt.lAcquisitionPosition	 = 	1
sPhysioImaging.sPhysioExt2.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioExt2.lAcquisitionPosition	 = 	1
sPhysioImaging.sPhysioBeatSensor.lTriggerPulses	 = 	1
sPhysioImaging.sPhysioBeatSensor.lTriggerWindow	 = 	5
sPhysioImaging.sPhysioBeatSensor.lArrhythmiaDetection	 = 	1
sPhysioImaging.sPhysioBeatSensor.lCardiacGateOnThreshold	 = 	100000
sPhysioImaging.sPhysioBeatSensor.lCardiacGateOffThreshold	 = 	700000
sPhysioImaging.sPhysioBeatSensor.lTriggerIntervals	 = 	1
sPhysioImaging.sPhysioBeatSensor.lAcquisitionPosition	 = 	1
sPhysioImaging.sPhysioResp.lRespGateThreshold	 = 	20
sPhysioImaging.sPhysioResp.lRespGatePhase	 = 	2
sPhysioImaging.sPhysioResp.dGatingRatio	 = 	0.3
sPhysioImaging.sPhysioNative.ucMode	 = 	1
sPhysioImaging.sPhysioNative.ucFlowSenMode	 = 	1
sSpecPara.lPhaseCyclingType	 = 	1
sSpecPara.lPhaseEncodingType	 = 	1
sSpecPara.lRFExcitationBandwidth	 = 	1
sSpecPara.ucRemoveOversampling	 = 	0x1
sSpecPara.lAutoRefScanMode	 = 	1
sSpecPara.lAutoRefScanNo	 = 	1
sSpecPara.lDecouplingType	 = 	1
sSpecPara.lNOEType	 = 	1
sSpecPara.lExcitationType	 = 	1
sSpecPara.lSpecAppl	 = 	1
sSpecPara.lSpectralSuppression	 = 	1
sSpecPara.sVoI.sPosition.dTra	 = 	10.0
sDiffusion.ulMode	 = 	1
sDiffusion.dsScheme	 = 	1
sDiffusion.ulQSpaceCoverage	 = 	1
sDiffusion.ulQSpaceSampling	 = 	1
sDiffusion.lQSpaceSteps	 = 	1
sDiffusion.alBValue.__attribute__.size	 = 	128
sDiffusion.alAverages.__attribute__.size	 = 	128
sDiffusion.sFreeDiffusionData.ulCoordinateSystem	 = 	1
sDiffusion.sFreeDiffusionData.ulNormalization	 = 	1
sDiffusion.sFreeDiffusionData.asDiffDirVector.__attribute__.size	 = 	0
sAngio.ucPCFlowMode	 = 	2
sAngio.ucTOFInflow	 = 	4
sAngio.lDynamicReconMode	 = 	1
sAngio.lTemporalInterpolation	 = 	1
sAngio.sFlowArray.asElm.__attribute__.size	 = 	16
sPreScanNormalizeFilter.ucMode	 = 	2
sDistortionCorrFilter.ucMode	 = 	4
sDistortionCorrFilter.ucSaveUnfiltered	 = 	0x1
sNoiseDecorrData.lNoiseDecorrDefaultMode	 = 	4
sPat.lAccelFactPE	 = 	1
sPat.lAccelFact3D	 = 	1
sPat.ucPATMode	 = 	1
sPat.ucRefScanMode	 = 	1
sPat.ucTPatAverageAllFrames	 = 	0x1
sPat.ulCaipirinhaMode	 = 	1
sPat.lAccelFactPeriph	 = 	16
sPat.lAccelFactCenter	 = 	3
sPat.lAccelFactorEcho	 = 	1
sPat.dTotalAccelFact	 = 	1.0
sMds.ulMdsModeMask	 = 	1
sMds.lTableSpeedNumerator	 = 	1
sMds.lmdsLinesPerSegment	 = 	15
sMds.lMdsPtabAbsStartPosZ	 = 	0
sMds.bMdsPtabAbsStartPosZValid	 = 	0x0
sMds.lMdsPtabAbsEndPosZ	 = 	0
sMds.bMdsPtabAbsEndPosZValid	 = 	0x0
sMds.lMdsPtabAbsStartPosZOriginal	 = 	0
sMds.lMdsPtabAbsEndPosZOriginal	 = 	0
sMds.dMdsRangeExtension	 = 	600.0
sMds.lSweeps	 = 	1
sMds.ucSweepMode	 = 	1
sMds.dDCSIlluminationScale	 = 	2.0
sMds.ucExcitDir	 = 	1
sMds.ucFreqShimPerSlice	 = 	0x1
sMds.ucSliceFollowing	 = 	0x1
sMds.ucDynamicCoilSwitching	 = 	0x1
sMds.ucPhaseNav	 = 	0x0
sMds.asMdsMotionInterval.__attribute__.size	 = 	8
sMds.alFree.__attribute__.size	 = 	8
sMds.adFree.__attribute__.size	 = 	8
sMds.sMdsEndPosSBCS_mm.dTra	 = 	600.0
sMds.sMdsPreScanNormalize.ucMode	 = 	2
sMds.sMdsPreScanNormalize.ucStackMode	 = 	4
sMds.sMdsPreScanNormalize.lNPELin	 = 	18
alRepetitionsDelayTimeMs.__attribute__.size	 = 	64
adFlipAngleDegree.__attribute__.size	 = 	32
adFlipAngleDegree[0]	 = 	25.0
aulServicePara.__attribute__.size	 = 	5
uiPerProxy2Skip.__attribute__.size	 = 	2
sCoilSelectMeas.sCoilContext	 = 	"InvalidContext"
sCoilSelectMeas.aRxCoilSelectData.__attribute__.size	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[0].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[1].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[1].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[1].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[1].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aTxCoilSelectData.__attribute__.size	 = 	2
sCoilSelectMeas.aTxCoilSelectData[0].asList.__attribute__.size	 = 	32
sCoilSelectMeas.aTxCoilSelectData[1].asList.__attribute__.size	 = 	32
sCoilSelectMeas.aLocalShimCoilSelectData.__attribute__.size	 = 	1
sCoilSelectMeas.aLocalShimCoilSelectData[0].asList.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug.__attribute__.size	 = 	11
sCoilSelectMeas.CoilPlugs.Plug[0].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[1].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[2].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[3].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[4].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[5].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[6].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[7].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[8].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[9].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[10].IdPart.__attribute__.size	 = 	8
sWipMemBlock.alFree.__attribute__.size	 = 	64
sWipMemBlock.adFree.__attribute__.size	 = 	16
sWipMemBlock.adRes.__attribute__.size	 = 	3
ucBOLDParadigmArray.__attribute__.size	 = 	256
sParametricMapping.ucParametricMap	 = 	1
sParametricMapping.SimulatedEchoNumber	 = 	0
sParametricMapping.SimulatedTEArray.__attribute__.size	 = 	20
sIR.alMagicID.__attribute__.size	 = 	2
sIR.alFree.__attribute__.size	 = 	16
sIR.adFree.__attribute__.size	 = 	16
sAsl.ulMode	 = 	1
sAsl.ulSuppressionMode	 = 	1
sAsl.sPostLabelingDelay.__attribute__.size	 = 	64
sInversionArray.asElm.__attribute__.size	 = 	4
sWorkflow.eConflictSolverStrategy	 = 	1
sWorkflow.ucDotVoiceSettingsOverride	 = 	0x1
sWorkflow.ucDotPauseSettingsOverride	 = 	0x1
sWorkflow.alConflictSolverData.__attribute__.size	 = 	0
sWorkflow.adConflictSolverData.__attribute__.size	 = 	0
sDynDistCorrFilter.ucMode	 = 	1
sChannelMatrix.ucChannelMixingMode	 = 	1
sChannelMatrix.ucChannelDiscardMode	 = 	1
sPTXData.uiPTXTargetMagMode	 = 	1
sPTXData.sPTXMPRSliceArray.asSlice.__attribute__.size	 = 	256
sPTXData.sPTXMPRSliceArray.alSliceAcqOrder.__attribute__.size	 = 	256
sPTXData.sPTXMPRSliceArray.anAsc.__attribute__.size	 = 	256
sPTXData.sPTXMPRSliceArray.anPos.__attribute__.size	 = 	256
sPTXData.sPTXMPRSliceArray.sTSat.ulShape	 = 	1
sPTXData.sPTXMPRGroupArray.asGroup.__attribute__.size	 = 	256
sPTXData.sPTXMPRGroupArray.anMember.__attribute__.size	 = 	258
sPTXData.sPTXMPRGroupArray.sPSat.ulShape	 = 	1
sPTXData.asPTXVolume.__attribute__.size	 = 	0
sInlineCardioEval.lInlineEvaMode	 = 	1
sInlineCardioEval.lNoOfPreps	 = 	1
sInlineCardioEval.alRecoveryDuration.__attribute__.size	 = 	1
sInlineCardioEval.alRecoveryDuration[0]	 = 	1
sInlineCardioEval.alSamplingDuration.__attribute__.size	 = 	1
sInlineCardioEval.alSamplingDuration[0]	 = 	1
sInteractive.ucTracking	 = 	0x0
sInteractive.ucSliceFollowing	 = 	1
sInteractive.ucSliceFollowingMode	 = 	1
sInteractive.lTrackingBackgroundSuppr	 = 	5
sInteractive.lTrackingSensitivity	 = 	1
sInteractive.lTrackingFlipAngle	 = 	10
sInteractive.ucPause	 = 	0x0
sInteractive.ucMosaic	 = 	0x0
sInteractive.ucSkipPhysioTrigger	 = 	0x0
sInteractive.lDephasingGradients	 = 	0
sInteractive.ucTrackingOnly	 = 	0x0
sInteractive.lTrackingDeviceIndex	 = 	0
sInteractive.alDephasingGradientAngle.__attribute__.size	 = 	32
sDixonData.ucDixonEvaluation	 = 	0x0
sDixonData.sMrDixonOptions.ucDixonFat	 = 	0x0
sDixonData.sMrDixonOptions.ucDixonWater	 = 	0x0
sDixonData.sMrDixonOptions.ucDixonInPhase	 = 	0x0
sDixonData.sMrDixonOptions.ucDixonOpposedPhase	 = 	0x0
sDixonData.sMrDixonOptions.ucDixonOriginalEchoes	 = 	0x1
sDixonData.sMrDixonEvaluationOptions.ucDixonEvaWaterFraction	 = 	0x0
sDixonData.sMrDixonEvaluationOptions.ucDixonEvaFatFraction	 = 	0x0
sDixonData.sMrDixonEvaluationOptions.ucDixonEvaT2Star	 = 	0x0
sDixonData.sMrDixonEvaluationOptions.ucDixonEvaR2Star	 = 	0x0
sDixonData.sMrDixonEvaluationOptions.ucDixonEvaReport	 = 	0x0
asDynamicAdjustVolumes.__attribute__.size	 = 	0
sCommonIterRecon.lIterations	 = 	30
sCommonIterRecon.eReconMethod	 = 	1
sCommonIterRecon.dRegularization	 = 	9.99999974738e-06
sCommonIterRecon.eDenoisingMode	 = 	1
sCommonIterRecon.lDenoisingStrength	 = 	5
sCommonIterRecon.dScalingFactor	 = 	0.0
sCommonIterRecon.dTemporalScaleFactor	 = 	5.0
sCommonIterRecon.dThresholdWavelet	 = 	0.00700000021607
sCommonIterRecon.dTolerance	 = 	9.99999974738e-06
sCommonIterRecon.ucCompressedSensingPreview	 = 	0x0
sCommonIterRecon.sGRASPData.lNumPhases	 = 	2
sCommonIterRecon.sGRASPData.ucPreview	 = 	0x0
sCommonIterRecon.sGRASPData.ucLiverAutoBolusDetection	 = 	0x0
sCommonIterRecon.sGRASPData.eWorkflow	 = 	1
sCommonIterRecon.sGRASPData.ucLiverGating	 = 	0x0
sCommonIterRecon.sGRASPData.eRedNumberReconVolumes	 = 	1
sCommonIterRecon.sGRASPData.dBolusDelay	 = 	5.0
sCommonIterRecon.sGRASPData.adDuration.__attribute__.size	 = 	2
sCommonIterRecon.sGRASPData.adDuration[0]	 = 	1.0
sCommonIterRecon.sGRASPData.adDuration[1]	 = 	1.0
sCommonIterRecon.sGRASPData.adTemporalResolution.__attribute__.size	 = 	2
sCommonIterRecon.sGRASPData.alReconstructedVolumes.__attribute__.size	 = 	2
sCommonIterRecon.sGRASPData.alReconstructedVolumes[0]	 = 	1
sCommonIterRecon.sGRASPData.alReconstructedVolumes[1]	 = 	1
sSliceAcceleration.lMultiBandFactor	 = 	1
sSliceAcceleration.lFOVShiftFactor	 = 	1
MrFingerprinting.MrfMode	 = 	1
MrFingerprinting.MrfUserMode	 = 	0
MrFingerprinting.MrfDictUUID.__attribute__.size	 = 	16
MrAdvancedReconstruction.lAdvancedReconstructionMode	 = 	1
MrAdvancedReconstruction.lDenoisingMethod	 = 	0
MrAdvancedReconstruction.sDeepResolveGain.lDenoisingStrength	 = 	3
MrAdvancedReconstruction.sDeepResolveGain.lEdgeEnhancementStrength	 = 	3
MrAdvancedReconstruction.sDeepResolveGain.ucEdgeEnhancementOn	 = 	0x1
MrAdvancedReconstruction.sDeepResolveBoost.lDenoisingStrength	 = 	2
MrAdvancedReconstruction.sDeepResolveBoost.ucPreview	 = 	0x0
### ASCCONV END ###
