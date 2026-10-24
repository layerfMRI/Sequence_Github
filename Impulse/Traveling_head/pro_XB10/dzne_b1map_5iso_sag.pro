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
        <ParamString."ProtocolName">  { "dzne_b1mapping_caip2x2_OneInv_flip 6_tr3000"  }
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
        <ParamChoice."CoilSelectMode">  { <Limit> { "All Off" } "All Off"  }
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
        <ParamBool."LoadToStamp">  { }
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
  <ID> 50 
  <Userversion> 4.5 
  
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
    <PipeService."EVA"> 
    {
      <Class> "PipeLinkService@MrParcPipe" 
      
      <ParamLong."POOLTHREADS">  { 1  }
      <ParamString."GROUP">  { "Calculation"  }
      <ParamLong."DATATHREADS">  { }
      <ParamLong."WATERMARK">  { }
      <ParamString."tdefaultEVAProt">  { "%SiemensEvaDefProt%/Inline/Inline.evp"  }
      <ParamFunctor."MotionCorr"> 
      {
        <Class> "MotionCorrDecorator@IceImagePostProcFunctors" 
        
        <ParamBool."EXECUTE">  { }
        <ParamString."image_type">  { "M"  }
        <ParamBool."save">  { }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "" "ComputeImage"  }
      }
      <ParamFunctor."Subtraction"> 
      {
        <Class> "Subtraction@IceImagePostProcFunctors" 
        
        <ParamBool."EXECUTE">  { }
        <ParamString."image_type">  { "M"  }
        <ParamBool."save">  { "true"  }
        <ParamLong."subtrahend">  { 1  }
        <ParamString."string_indices">  { }
        <ParamBool."indices">  { "true"  }
        <ParamLong."subtraction_group">  { 1  }
        <ParamChoice."subtraction_mode">  { <Limit> { "SubtractionModeChoiceStandard" "SubtractionModeChoiceAbsolute" } "SubtractionModeChoiceStandard"  }
        <ParamBool."auto">  { }
        <ParamLong."fact">  { 1  }
        <ParamLong."offs">  { }
        <ParamString."BolusAgent">  { }
        <ParamBool."save_orig">  { "true"  }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "" "ComputeImage"  }
      }
      <ParamFunctor."StdDevFactory"> 
      {
        <Class> "StdDevFactory@IceImagePostProcFunctors" 
        
        <ParamBool."EXECUTE">  { }
        <ParamString."image_type">  { "M"  }
        <ParamBool."sag">  { }
        <ParamBool."cor">  { }
        <ParamBool."tra">  { }
        <ParamBool."time">  { }
        <ParamBool."save_orig">  { "true"  }
        <ParamBool."stddev">  { }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "" "ComputeImage"  }
      }
      <ParamFunctor."MIPFactory"> 
      {
        <Class> "MIPFactory@IceImagePostProcFunctors" 
        
        <ParamBool."EXECUTE">  { }
        <ParamString."image_type">  { "M"  }
        <ParamBool."sag">  { }
        <ParamBool."cor">  { }
        <ParamBool."tra">  { }
        <ParamBool."time">  { }
        <ParamBool."radial">  { }
        <ParamLong."no_radial_views">  { 1  }
        <ParamChoice."axis_radial_views">  { <Limit> { "L-R" "A-P" "H-F" } "L-R"  }
        <ParamBool."save_orig">  { "true"  }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "" "ComputeImage"  }
      }
      <ParamFunctor."MPRFactory"> 
      {
        <Class> "MPRFactory" 
        
        <ParamBool."EXECUTE">  { }
        <ParamString."image_type">  { "M"  }
        <ParamBool."sag">  { }
        <ParamBool."cor">  { }
        <ParamBool."tra">  { }
        <ParamBool."AutoAlign">  { }
        <ParamLong."no_slices">  { 1  }
        <ParamBool."save_orig">  { "true"  }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "" "ComputeImage"  }
      }
      <ParamBool."save_orig">  { "true"  }
    }
  }
}

### ASCCONV BEGIN object=MrProtDataImpl@MrProtocolData version=72504000 converter=%MEASCONST%/ConverterList/Prot_Converter.txt ###
ulVersion	 = 	72504000
tSequenceFileName	 = 	"%CustomerSeq%\dzne_b1mapping"
tProtocolName	 = 	"dzne_b1mapping_caip2x2_OneInv_flip 6_tr3000"
tdefaultEVAProt	 = 	"%SiemensEvaDefProt%\Inline\Inline.evp"
lScanRegionPosTra	 = 	-0.0
ucScanRegionPosValid	 = 	0x1
lPtabAbsStartPosZ	 = 	0
bPtabAbsStartPosZValid	 = 	0x0
ucEnableNoiseAdjust	 = 	1
lContrasts	 = 	3
lCombinedEchoes	 = 	1
ucEnableIntro	 = 	0x1
ucDisableChangeStoreImages	 = 	0x1
ucAAMode	 = 	1
ucReconstructionMode	 = 	1
ucOneSeriesForAllMeas	 = 	1
ucPHAPSMode	 = 	1
ulWrapUpMagn	 = 	1
lAverages	 = 	1
dAveragesDouble	 = 	1.0
lScanTimeSec	 = 	24
lTotalScanTimeSec	 = 	33
dRefSNR	 = 	619004.577258
dRefSNR_VOI	 = 	619004.577258
ulMotionCorr	 = 	1
ucCineMode	 = 	1
ucCoilCombineMode	 = 	2
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
dOverallImageScaleFactor	 = 	0.00677024793388
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
sTXSPEC.ucRFPulseType	 = 	2
sTXSPEC.ucExcitMode	 = 	2
sTXSPEC.ucSimultaneousExcitation	 = 	1
sTXSPEC.lB1ShimMode	 = 	1
sTXSPEC.ucRFPulseOptimization	 = 	1
sTXSPEC.asNucleusInfo.__attribute__.size	 = 	2
sTXSPEC.asNucleusInfo[0].tNucleus	 = 	"1H"
sTXSPEC.asNucleusInfo[0].lCoilSelectIndex	 = 	0
sTXSPEC.asNucleusInfo[0].RFPulseExcitationMode	 = 	2
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
sRXSPEC.asNucleusInfo[0].lCoilSelectIndex	 = 	0
sRXSPEC.asNucleusInfo[1].lCoilSelectIndex	 = 	-1
sRXSPEC.alVariCapVoltages.__attribute__.size	 = 	4
sRXSPEC.alDwellTime.__attribute__.size	 = 	256
sRXSPEC.alDwellTime[0]	 = 	11400
sRXSPEC.asLocalShimData.__attribute__.size	 = 	8
sAdjData.uiAdjFreMode	 = 	1
sAdjData.uiAdjTraMode	 = 	1
sAdjData.uiAdjShimMode	 = 	2
sAdjData.uiAdjWatSupMode	 = 	1
sAdjData.uiAdjRFMapMode	 = 	1
sAdjData.uiAdjMDSMode	 = 	1
sAdjData.uiAdjTableTolerance	 = 	2
sAdjData.uiAdjVolumeValid	 = 	0x1
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
sAdjData.sAdjVolume.dThickness	 = 	176.0
sAdjData.sAdjVolume.dPhaseFOV	 = 	256.0
sAdjData.sAdjVolume.dReadoutFOV	 = 	256.0
sAdjData.sAdjVolume.sNormal.dSag	 = 	1.0
sAdjData.anAdjDicoPulseAmplitude.__attribute__.size	 = 	0
alTR.__attribute__.size	 = 	256
alTR[0]	 = 	3000000
alTI.__attribute__.size	 = 	256
alTD.__attribute__.size	 = 	256
alTE.__attribute__.size	 = 	256
alTE[0]	 = 	740
alTE[1]	 = 	860
alTE[2]	 = 	1990
acFlowComp.__attribute__.size	 = 	256
acFlowComp[0]	 = 	1
sSliceArray.lSize	 = 	1
sSliceArray.lSag	 = 	1
sSliceArray.lConc	 = 	1
sSliceArray.ucMode	 = 	1
sSliceArray.ucAnatomicalSliceMode	 = 	1
sSliceArray.ucConcatenationsSelectModeResp	 = 	1
sSliceArray.asSlice.__attribute__.size	 = 	256
sSliceArray.asSlice[0].dThickness	 = 	200.0
sSliceArray.asSlice[0].dPhaseFOV	 = 	220.0
sSliceArray.asSlice[0].dReadoutFOV	 = 	220.0
sSliceArray.asSlice[0].sNormal.dSag	 = 	1.0
sSliceArray.alSliceAcqOrder.__attribute__.size	 = 	256
sSliceArray.anAsc.__attribute__.size	 = 	256
sSliceArray.anPos.__attribute__.size	 = 	256
sSliceArray.sTSat.dThickness	 = 	50.0
sSliceArray.sTSat.ulShape	 = 	1
sGroupArray.lSize	 = 	1
sGroupArray.asGroup.__attribute__.size	 = 	256
sGroupArray.asGroup[0].nSize	 = 	1
sGroupArray.asGroup[0].dDistFact	 = 	0.2
sGroupArray.asGroup[0].AutoAlignData.Region	 = 	1
sGroupArray.asGroup[0].AutoAlignData.Reference	 = 	1
sGroupArray.asGroup[0].AutoAlignData.InitialOffset.Normal.dSag	 = 	1.0
sGroupArray.anMember.__attribute__.size	 = 	258
sGroupArray.anMember[1]	 = 	-1
sGroupArray.sPSat.dThickness	 = 	50.0
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
sKSpace.lBaseResolution	 = 	44
sKSpace.lPhaseEncodingLines	 = 	44
sKSpace.lPartitions	 = 	40
sKSpace.lImagesPerSlab	 = 	40
sKSpace.lRadialViews	 = 	64
sKSpace.lRadialInterleavesPerImage	 = 	1
sKSpace.lLinesPerShot	 = 	1
sKSpace.unReordering	 = 	1
sKSpace.ucPhasePartialFourier	 = 	16
sKSpace.ucSlicePartialFourier	 = 	16
sKSpace.ucAveragingMode	 = 	2
sKSpace.ucMultiSliceMode	 = 	1
sKSpace.ucDimension	 = 	4
sKSpace.ucTrajectory	 = 	1
sKSpace.lNumberOfBins	 = 	0
sKSpace.ucAsymmetricEchoMode	 = 	1
sKSpace.ucPOCS	 = 	1
sKSpace.ucEnableEllipticalScanning	 = 	0x1
sKSpace.Reordering3D	 = 	1
sKSpace.ucReadoutPartialFourier	 = 	16
sKSpace.ucDynamicMode	 = 	1
sKSpace.ucUndersamplingPattern	 = 	1
sKSpace.lNumberOfSweeps	 = 	0
sKSpace.DistributionAsymmetry	 = 	0
sKSpace.SpiralInterleaves	 = 	1
sKSpace.PhaseEncOrder	 = 	0
sFastImaging.lEPIFactor	 = 	1
sFastImaging.lTurboFactor	 = 	346
sFastImaging.lSliceTurboFactor	 = 	1
sFastImaging.lSegments	 = 	1
sFastImaging.ulEnableRFSpoiling	 = 	0x1
sFastImaging.ucPhaseEncRE	 = 	0x0
sFastImaging.ucSegmentationMode	 = 	1
sFastImaging.lShots	 = 	1
sFastImaging.lEchoTrainDuration	 = 	1021
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
sSpecPara.ucRemoveOversampling	 = 	0x0
sSpecPara.lAutoRefScanMode	 = 	1
sSpecPara.lAutoRefScanNo	 = 	1
sSpecPara.lDecouplingType	 = 	1
sSpecPara.lNOEType	 = 	1
sSpecPara.lExcitationType	 = 	1
sSpecPara.lSpecAppl	 = 	1
sSpecPara.lSpectralSuppression	 = 	1
sSpecPara.sVoI.sPosition.dTra	 = 	-71.0
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
sDistortionCorrFilter.ucMode	 = 	1
sNoiseDecorrData.lNoiseDecorrDefaultMode	 = 	4
sPat.lAccelFactPE	 = 	2
sPat.lAccelFact3D	 = 	2
sPat.lRefLinesPE	 = 	24
sPat.lRefLines3D	 = 	24
sPat.ucPATMode	 = 	16
sPat.ucRefScanMode	 = 	4
sPat.ucTPatAverageAllFrames	 = 	0x1
sPat.ulCaipirinhaMode	 = 	1
sPat.lReorderingShift3D	 = 	1
sPat.lAccelFactPeriph	 = 	16
sPat.lAccelFactCenter	 = 	3
sPat.lAccelFactorEcho	 = 	1
sPat.dTotalAccelFact	 = 	4.0
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
adFlipAngleDegree[0]	 = 	60.0
adFlipAngleDegree[1]	 = 	6.0
aulServicePara.__attribute__.size	 = 	5
uiPerProxy2Skip.__attribute__.size	 = 	2
sCoilSelectMeas.sCoilStringForConversion	 = 	"R64"
sCoilSelectMeas.aRxCoilSelectData.__attribute__.size	 = 	16
sCoilSelectMeas.aRxCoilSelectData[0].ucNoiseDecorrMode	 = 	0x1
sCoilSelectMeas.aRxCoilSelectData[0].tNucleus	 = 	"1H"
sCoilSelectMeas.aRxCoilSelectData[0].iUsedRFactor	 = 	3
sCoilSelectMeas.aRxCoilSelectData[0].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].tCheckUUID	 = 	"05a81570331dd1f29765f8fa1431fae2df8bcaaf"
sCoilSelectMeas.aRxCoilSelectData[0].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[0].asList.__attribute__.size	 = 	64
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].lMuxChannelConnected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].lRxChannelConnected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].lADCChannelConnected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilElementID.tElement	 = 	"A01"
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilElementID.ulUniqueKey	 = 	-704485459
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].lMuxChannelConnected	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].lRxChannelConnected	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].lADCChannelConnected	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilElementID.tElement	 = 	"A02"
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilElementID.ulUniqueKey	 = 	-1851646595
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].lMuxChannelConnected	 = 	3
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].lRxChannelConnected	 = 	3
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].lADCChannelConnected	 = 	3
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilElementID.tElement	 = 	"A03"
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilElementID.ulUniqueKey	 = 	-1396558643
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].lMuxChannelConnected	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].lRxChannelConnected	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].lADCChannelConnected	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilElementID.tElement	 = 	"A04"
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilElementID.ulUniqueKey	 = 	518187229
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].lMuxChannelConnected	 = 	5
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].lRxChannelConnected	 = 	5
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].lADCChannelConnected	 = 	5
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilElementID.tElement	 = 	"A05"
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilElementID.ulUniqueKey	 = 	595771757
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].lMuxChannelConnected	 = 	6
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].lRxChannelConnected	 = 	6
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].lADCChannelConnected	 = 	6
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilElementID.tElement	 = 	"A06"
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilElementID.ulUniqueKey	 = 	1679997885
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].lMuxChannelConnected	 = 	7
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].lRxChannelConnected	 = 	7
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].lADCChannelConnected	 = 	7
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilElementID.tElement	 = 	"A07"
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilElementID.ulUniqueKey	 = 	1497534989
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].lMuxChannelConnected	 = 	8
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].lRxChannelConnected	 = 	8
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].lADCChannelConnected	 = 	8
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilElementID.tElement	 = 	"A08"
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilElementID.ulUniqueKey	 = 	-619575844
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].lMuxChannelConnected	 = 	9
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].lRxChannelConnected	 = 	9
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].lADCChannelConnected	 = 	9
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilElementID.tElement	 = 	"A09"
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilElementID.ulUniqueKey	 = 	-428725140
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].lMuxChannelConnected	 = 	10
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].lRxChannelConnected	 = 	10
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].lADCChannelConnected	 = 	10
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilElementID.tElement	 = 	"A10"
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilElementID.ulUniqueKey	 = 	540974520
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].lMuxChannelConnected	 = 	11
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].lRxChannelConnected	 = 	11
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].lADCChannelConnected	 = 	11
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilElementID.tElement	 = 	"A11"
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilElementID.ulUniqueKey	 = 	492745736
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].lMuxChannelConnected	 = 	12
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].lRxChannelConnected	 = 	12
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].lADCChannelConnected	 = 	12
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilElementID.tElement	 = 	"A12"
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilElementID.ulUniqueKey	 = 	1526648536
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].lMuxChannelConnected	 = 	13
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].lRxChannelConnected	 = 	13
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].lADCChannelConnected	 = 	13
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilElementID.tElement	 = 	"A13"
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilElementID.ulUniqueKey	 = 	1738467176
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].lMuxChannelConnected	 = 	14
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].lRxChannelConnected	 = 	14
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].lADCChannelConnected	 = 	14
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilElementID.tElement	 = 	"A14"
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilElementID.ulUniqueKey	 = 	-708953224
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].lMuxChannelConnected	 = 	15
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].lRxChannelConnected	 = 	15
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].lADCChannelConnected	 = 	15
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilElementID.tElement	 = 	"A15"
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilElementID.ulUniqueKey	 = 	-388099384
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].lMuxChannelConnected	 = 	16
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].lRxChannelConnected	 = 	16
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].lADCChannelConnected	 = 	16
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilElementID.tElement	 = 	"A16"
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilElementID.ulUniqueKey	 = 	-1350670312
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].lMuxChannelConnected	 = 	17
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].lRxChannelConnected	 = 	17
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].lADCChannelConnected	 = 	17
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilElementID.tElement	 = 	"A17"
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilElementID.ulUniqueKey	 = 	-1843510872
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].lMuxChannelConnected	 = 	18
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].lRxChannelConnected	 = 	18
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].lADCChannelConnected	 = 	18
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilElementID.tElement	 = 	"A18"
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilElementID.ulUniqueKey	 = 	273602169
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].lMuxChannelConnected	 = 	19
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].lRxChannelConnected	 = 	19
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].lADCChannelConnected	 = 	19
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilElementID.tElement	 = 	"A19"
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilElementID.ulUniqueKey	 = 	758054857
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].lMuxChannelConnected	 = 	20
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].lRxChannelConnected	 = 	20
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].lADCChannelConnected	 = 	20
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilElementID.tElement	 = 	"A20"
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilElementID.ulUniqueKey	 = 	-1498747114
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].lMuxChannelConnected	 = 	21
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].lRxChannelConnected	 = 	21
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].lADCChannelConnected	 = 	21
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilElementID.tElement	 = 	"A21"
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilElementID.ulUniqueKey	 = 	-1681209690
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].lMuxChannelConnected	 = 	22
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].lRxChannelConnected	 = 	22
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].lADCChannelConnected	 = 	22
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilElementID.tElement	 = 	"A22"
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilElementID.ulUniqueKey	 = 	-596984714
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].lMuxChannelConnected	 = 	23
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].lRxChannelConnected	 = 	23
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].lADCChannelConnected	 = 	23
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilElementID.tElement	 = 	"A23"
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilElementID.ulUniqueKey	 = 	-519399994
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].lMuxChannelConnected	 = 	24
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].lRxChannelConnected	 = 	24
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].lADCChannelConnected	 = 	24
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilElementID.tElement	 = 	"A24"
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilElementID.ulUniqueKey	 = 	1395280342
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].lMuxChannelConnected	 = 	25
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].lRxChannelConnected	 = 	25
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].lADCChannelConnected	 = 	25
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilElementID.tElement	 = 	"A25"
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilElementID.ulUniqueKey	 = 	1850368102
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].lMuxChannelConnected	 = 	26
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].lRxChannelConnected	 = 	26
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].lADCChannelConnected	 = 	26
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilElementID.tElement	 = 	"A26"
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilElementID.ulUniqueKey	 = 	703208118
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].lMuxChannelConnected	 = 	27
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].lRxChannelConnected	 = 	27
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].lADCChannelConnected	 = 	27
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilElementID.tElement	 = 	"A27"
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilElementID.ulUniqueKey	 = 	344601350
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].lMuxChannelConnected	 = 	28
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].lRxChannelConnected	 = 	28
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].lADCChannelConnected	 = 	28
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilElementID.tElement	 = 	"A28"
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilElementID.ulUniqueKey	 = 	-1764055849
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].lMuxChannelConnected	 = 	29
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].lRxChannelConnected	 = 	29
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].lADCChannelConnected	 = 	29
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilElementID.tElement	 = 	"A29"
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilElementID.ulUniqueKey	 = 	-1413837465
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].lMuxChannelConnected	 = 	30
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].lRxChannelConnected	 = 	30
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].lADCChannelConnected	 = 	30
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilElementID.tElement	 = 	"A30"
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilElementID.ulUniqueKey	 = 	1844853939
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].lMuxChannelConnected	 = 	31
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].lRxChannelConnected	 = 	31
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].lADCChannelConnected	 = 	31
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilElementID.tElement	 = 	"A31"
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilElementID.ulUniqueKey	 = 	1352013059
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].lMuxChannelConnected	 = 	32
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].lRxChannelConnected	 = 	32
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].lADCChannelConnected	 = 	32
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilElementID.tElement	 = 	"A32"
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilElementID.ulUniqueKey	 = 	389443539
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].lMuxChannelConnected	 = 	33
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].lRxChannelConnected	 = 	33
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].lADCChannelConnected	 = 	33
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].sCoilElementID.tElement	 = 	"A33"
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].sCoilElementID.ulUniqueKey	 = 	710297187
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].lMuxChannelConnected	 = 	34
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].lRxChannelConnected	 = 	34
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].lADCChannelConnected	 = 	34
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].sCoilElementID.tElement	 = 	"A34"
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].sCoilElementID.ulUniqueKey	 = 	-1737057677
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].lMuxChannelConnected	 = 	35
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].lRxChannelConnected	 = 	35
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].lADCChannelConnected	 = 	35
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].sCoilElementID.tElement	 = 	"A35"
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].sCoilElementID.ulUniqueKey	 = 	-1525238845
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].lMuxChannelConnected	 = 	36
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].lRxChannelConnected	 = 	36
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].lADCChannelConnected	 = 	36
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].sCoilElementID.tElement	 = 	"A36"
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].sCoilElementID.ulUniqueKey	 = 	-491337453
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].lMuxChannelConnected	 = 	37
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].lRxChannelConnected	 = 	37
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].lADCChannelConnected	 = 	37
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].sCoilElementID.tElement	 = 	"A37"
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].sCoilElementID.ulUniqueKey	 = 	-539565917
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].lMuxChannelConnected	 = 	38
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].lRxChannelConnected	 = 	38
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].lADCChannelConnected	 = 	38
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].sCoilElementID.tElement	 = 	"A38"
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].sCoilElementID.ulUniqueKey	 = 	1569093490
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].lMuxChannelConnected	 = 	39
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].lRxChannelConnected	 = 	39
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].lADCChannelConnected	 = 	39
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].sCoilElementID.tElement	 = 	"A39"
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].sCoilElementID.ulUniqueKey	 = 	1625710274
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].lMuxChannelConnected	 = 	40
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].lRxChannelConnected	 = 	40
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].lADCChannelConnected	 = 	40
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].sCoilElementID.tElement	 = 	"A40"
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].sCoilElementID.ulUniqueKey	 = 	1894976523
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].lMuxChannelConnected	 = 	41
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].lRxChannelConnected	 = 	41
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].lADCChannelConnected	 = 	41
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].sCoilElementID.tElement	 = 	"A41"
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].sCoilElementID.ulUniqueKey	 = 	1301489083
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].lMuxChannelConnected	 = 	42
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].lRxChannelConnected	 = 	42
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].lADCChannelConnected	 = 	42
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].sCoilElementID.tElement	 = 	"A42"
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].sCoilElementID.ulUniqueKey	 = 	171138923
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].lMuxChannelConnected	 = 	43
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].lRxChannelConnected	 = 	43
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].lADCChannelConnected	 = 	43
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].sCoilElementID.tElement	 = 	"A43"
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].sCoilElementID.ulUniqueKey	 = 	928216795
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].lMuxChannelConnected	 = 	44
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].lRxChannelConnected	 = 	44
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].lADCChannelConnected	 = 	44
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].sCoilElementID.tElement	 = 	"A44"
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].sCoilElementID.ulUniqueKey	 = 	-2056017205
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].lMuxChannelConnected	 = 	45
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].lRxChannelConnected	 = 	45
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].lADCChannelConnected	 = 	45
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].sCoilElementID.tElement	 = 	"A45"
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].sCoilElementID.ulUniqueKey	 = 	-1206680709
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].lMuxChannelConnected	 = 	46
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].lRxChannelConnected	 = 	46
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].lADCChannelConnected	 = 	46
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].sCoilElementID.tElement	 = 	"A46"
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].sCoilElementID.ulUniqueKey	 = 	-4982357
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].lMuxChannelConnected	 = 	47
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].lRxChannelConnected	 = 	47
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].lADCChannelConnected	 = 	47
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].sCoilElementID.tElement	 = 	"A47"
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].sCoilElementID.ulUniqueKey	 = 	-1026306021
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].lMuxChannelConnected	 = 	48
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].lRxChannelConnected	 = 	48
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].lADCChannelConnected	 = 	48
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].sCoilElementID.tElement	 = 	"A48"
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].sCoilElementID.ulUniqueKey	 = 	1082345418
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].lMuxChannelConnected	 = 	49
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].lRxChannelConnected	 = 	49
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].lADCChannelConnected	 = 	49
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].sCoilElementID.tElement	 = 	"A49"
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].sCoilElementID.ulUniqueKey	 = 	2112056954
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].lMuxChannelConnected	 = 	50
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].lRxChannelConnected	 = 	50
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].lADCChannelConnected	 = 	50
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].sCoilElementID.tElement	 = 	"A50"
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].sCoilElementID.ulUniqueKey	 = 	-1146101842
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].lMuxChannelConnected	 = 	51
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].lRxChannelConnected	 = 	51
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].lADCChannelConnected	 = 	51
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].sCoilElementID.tElement	 = 	"A51"
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].sCoilElementID.ulUniqueKey	 = 	-2033191394
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].lMuxChannelConnected	 = 	52
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].lRxChannelConnected	 = 	52
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].lADCChannelConnected	 = 	52
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].sCoilElementID.tElement	 = 	"A52"
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].sCoilElementID.ulUniqueKey	 = 	-1049654066
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].lMuxChannelConnected	 = 	53
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].lRxChannelConnected	 = 	53
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].lADCChannelConnected	 = 	53
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].sCoilElementID.tElement	 = 	"A53"
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].sCoilElementID.ulUniqueKey	 = 	-66083458
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].lMuxChannelConnected	 = 	54
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].lRxChannelConnected	 = 	54
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].lADCChannelConnected	 = 	54
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].sCoilElementID.tElement	 = 	"A54"
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].sCoilElementID.ulUniqueKey	 = 	1311734126
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].lMuxChannelConnected	 = 	55
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].lRxChannelConnected	 = 	55
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].lADCChannelConnected	 = 	55
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].sCoilElementID.tElement	 = 	"A55"
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].sCoilElementID.ulUniqueKey	 = 	1934577886
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].lMuxChannelConnected	 = 	56
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].lRxChannelConnected	 = 	56
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].lADCChannelConnected	 = 	56
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].sCoilElementID.tElement	 = 	"A56"
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].sCoilElementID.ulUniqueKey	 = 	888089102
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].lMuxChannelConnected	 = 	57
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].lRxChannelConnected	 = 	57
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].lADCChannelConnected	 = 	57
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].sCoilElementID.tElement	 = 	"A57"
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].sCoilElementID.ulUniqueKey	 = 	160367550
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].lMuxChannelConnected	 = 	58
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].lRxChannelConnected	 = 	58
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].lADCChannelConnected	 = 	58
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].sCoilElementID.tElement	 = 	"A58"
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].sCoilElementID.ulUniqueKey	 = 	-1948281745
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].lMuxChannelConnected	 = 	59
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].lRxChannelConnected	 = 	59
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].lADCChannelConnected	 = 	59
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].sCoilElementID.tElement	 = 	"A59"
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].sCoilElementID.ulUniqueKey	 = 	-1228948001
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].lMuxChannelConnected	 = 	60
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].lRxChannelConnected	 = 	60
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].lADCChannelConnected	 = 	60
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].sCoilElementID.tElement	 = 	"A60"
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].sCoilElementID.ulUniqueKey	 = 	1027321088
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].lMuxChannelConnected	 = 	61
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].lRxChannelConnected	 = 	61
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].lADCChannelConnected	 = 	61
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].sCoilElementID.tElement	 = 	"A61"
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].sCoilElementID.ulUniqueKey	 = 	5997744
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].lMuxChannelConnected	 = 	62
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].lRxChannelConnected	 = 	62
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].lADCChannelConnected	 = 	62
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].sCoilElementID.tElement	 = 	"A62"
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].sCoilElementID.ulUniqueKey	 = 	1207696992
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].lMuxChannelConnected	 = 	63
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].lRxChannelConnected	 = 	63
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].lADCChannelConnected	 = 	63
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].sCoilElementID.tElement	 = 	"A63"
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].sCoilElementID.ulUniqueKey	 = 	2057033680
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[63].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[63].lMuxChannelConnected	 = 	64
sCoilSelectMeas.aRxCoilSelectData[0].asList[63].lRxChannelConnected	 = 	64
sCoilSelectMeas.aRxCoilSelectData[0].asList[63].lADCChannelConnected	 = 	64
sCoilSelectMeas.aRxCoilSelectData[0].asList[63].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aRxCoilSelectData[0].asList[63].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[63].sCoilElementID.tElement	 = 	"A64"
sCoilSelectMeas.aRxCoilSelectData[0].asList[63].sCoilElementID.ulUniqueKey	 = 	-927265856
sCoilSelectMeas.aRxCoilSelectData[0].asList[63].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE.__attribute__.size	 = 	64
sCoilSelectMeas.aRxCoilSelectData[1].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[1].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[1].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[1].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[2].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[2].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[2].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[2].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[2].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[2].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[2].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[2].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[3].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[3].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[3].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[3].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[3].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[3].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[3].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[3].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[4].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[4].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[4].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[4].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[4].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[4].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[4].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[4].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[5].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[5].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[5].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[5].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[5].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[5].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[5].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[5].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[6].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[6].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[6].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[6].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[6].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[6].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[6].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[6].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[7].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[7].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[7].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[7].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[7].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[7].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[7].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[7].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[8].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[8].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[8].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[8].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[8].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[8].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[8].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[8].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[9].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[9].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[9].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[9].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[9].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[9].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[9].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[9].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[10].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[10].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[10].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[10].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[10].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[10].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[10].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[10].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[11].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[11].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[11].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[11].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[11].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[11].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[11].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[11].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[12].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[12].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[12].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[12].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[12].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[12].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[12].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[12].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[13].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[13].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[13].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[13].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[13].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[13].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[13].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[13].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[14].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[14].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[14].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[14].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[14].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[14].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[14].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[14].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[15].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[15].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[15].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[15].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[15].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[15].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[15].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[15].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aTxCoilSelectData.__attribute__.size	 = 	2
sCoilSelectMeas.aTxCoilSelectData[0].tNucleus	 = 	"1H"
sCoilSelectMeas.aTxCoilSelectData[0].tCheckUUID	 = 	"6c00053bf77f702827745c8dadc845755d1e8aab"
sCoilSelectMeas.aTxCoilSelectData[0].asList.__attribute__.size	 = 	32
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilElementID.tElement	 = 	"Tx1"
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilElementID.ulUniqueKey	 = 	15686853
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sTxScaleFactorCP.dRe	 = 	0.3535
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].lTxChannelConnected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sCoilElementID.tElement	 = 	"Tx2"
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sCoilElementID.ulUniqueKey	 = 	1196369429
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sTxScaleFactorCP.dRe	 = 	0.25
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sTxScaleFactorCP.dIm	 = 	0.25
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].lTxChannelConnected	 = 	2
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sCoilElementID.tElement	 = 	"Tx3"
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sCoilElementID.ulUniqueKey	 = 	2049904549
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sTxScaleFactorCP.dIm	 = 	0.3535
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].lTxChannelConnected	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sCoilElementID.tElement	 = 	"Tx4"
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sCoilElementID.ulUniqueKey	 = 	-938486859
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sTxScaleFactorCP.dRe	 = 	-0.25
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sTxScaleFactorCP.dIm	 = 	0.25
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].lTxChannelConnected	 = 	4
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sCoilElementID.tElement	 = 	"Tx5"
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sCoilElementID.ulUniqueKey	 = 	-177210875
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sTxScaleFactorCP.dRe	 = 	-0.3535
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].lTxChannelConnected	 = 	5
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sCoilElementID.tElement	 = 	"Tx6"
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sCoilElementID.ulUniqueKey	 = 	-1295023915
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sTxScaleFactorCP.dRe	 = 	-0.25
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sTxScaleFactorCP.dIm	 = 	-0.25
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].lTxChannelConnected	 = 	6
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sCoilElementID.tElement	 = 	"Tx7"
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sCoilElementID.ulUniqueKey	 = 	-1884313243
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sTxScaleFactorCP.dIm	 = 	-0.3535
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].lTxChannelConnected	 = 	7
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sCoilElementID.tCoilID	 = 	"8Tx64Rx_HeadEM"
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sCoilElementID.tElement	 = 	"Tx8"
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sCoilElementID.ulUniqueKey	 = 	234831540
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sTxScaleFactorCP.dRe	 = 	0.25
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sTxScaleFactorCP.dIm	 = 	-0.25
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[1].asList.__attribute__.size	 = 	32
sCoilSelectMeas.aLocalShimCoilSelectData.__attribute__.size	 = 	1
sCoilSelectMeas.aLocalShimCoilSelectData[0].asList.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug.__attribute__.size	 = 	11
sCoilSelectMeas.CoilPlugs.Plug[0].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[0].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[1].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[1].IdPart[0]	 = 	33
sCoilSelectMeas.CoilPlugs.Plug[2].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[2].IdPart[0]	 = 	34
sCoilSelectMeas.CoilPlugs.Plug[3].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[3].IdPart[0]	 = 	35
sCoilSelectMeas.CoilPlugs.Plug[4].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[4].IdPart[0]	 = 	36
sCoilSelectMeas.CoilPlugs.Plug[5].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[5].IdPart[0]	 = 	37
sCoilSelectMeas.CoilPlugs.Plug[6].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[6].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[7].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[7].IdPart[0]	 = 	38
sCoilSelectMeas.CoilPlugs.Plug[8].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[8].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[9].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[9].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[10].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[10].IdPart[0]	 = 	238
sWipMemBlock.tFree	 = 	"threedream 9e96902 9e96902"
sWipMemBlock.alFree.__attribute__.size	 = 	64
sWipMemBlock.alFree[0]	 = 	2
sWipMemBlock.alFree[1]	 = 	1
sWipMemBlock.alFree[2]	 = 	1
sWipMemBlock.alFree[4]	 = 	2000
sWipMemBlock.alFree[5]	 = 	1
sWipMemBlock.alFree[6]	 = 	32
sWipMemBlock.alFree[7]	 = 	200
sWipMemBlock.alFree[8]	 = 	200
sWipMemBlock.alFree[11]	 = 	1130
sWipMemBlock.alFree[13]	 = 	3
sWipMemBlock.alFree[14]	 = 	1
sWipMemBlock.alFree[15]	 = 	1
sWipMemBlock.alFree[16]	 = 	1
sWipMemBlock.alFree[17]	 = 	1000
sWipMemBlock.alFree[18]	 = 	10
sWipMemBlock.alFree[19]	 = 	1
sWipMemBlock.alFree[20]	 = 	1
sWipMemBlock.alFree[22]	 = 	1
sWipMemBlock.alFree[63]	 = 	12345
sWipMemBlock.adFree.__attribute__.size	 = 	16
sWipMemBlock.adFree[0]	 = 	3.2
sWipMemBlock.adFree[1]	 = 	1.2
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
