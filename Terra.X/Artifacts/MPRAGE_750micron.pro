<XProtocol> 
{
  <ID> 1000001 
  <Userversion> 666.0 
  
  <ParamMap.""> 
  {
    <ParamMap."DMWL"> 
    {
      
      <ParamMap."Pause"> 
      {
        
        <ParamString."CodeValue">  { }
        <ParamString."CodingSchemeVersion">  { }
        <ParamString."CodingSchemeDesignator">  { }
        <ParamString."CodeMeaning">  { }
      }
      <ParamMap."Meas"> 
      {
        
        <ParamString."CodeValue">  { }
        <ParamString."CodingSchemeVersion">  { }
        <ParamString."CodingSchemeDesignator">  { }
        <ParamString."CodeMeaning">  { }
      }
    }
    <ParamMap."MultiStep"> 
    {
      
      <ParamBool."IsMultistep">  { }
      <ParamArray."SubStep"> 
      {
        <Default> <ParamLong.""> 
        {
        }
        { 1  }
        
      }
      <ParamBool."SaveNonnormalizedImages">  { "true"  }
      <ParamBool."IsInlineCompose">  { }
      <ParamLong."ComposingGroup">  { 1  }
      <ParamBool."IsLastStep">  { }
      <ParamChoice."ComposingFunction">  { <Limit> { "Angio" "Spine" "Adaptive" "Diffusion" } "Angio"  }
      <ParamChoice."ComposingNormalize">  { <Limit> { "Off" "Weak" "Medium" "Strong" } "Off"  }
      <ParamString."SeriesDescription">  { }
      <ParamLong."2DDistCor">  { }
      <ParamLong."DynDistCor">  { }
      <ParamLong."ScanAtCenterDummy">  { }
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
    <ParamMap."Properties"> 
    {
      
      <ParamMap."Reconstruction"> 
      {
        
        <ParamBool."recon_prio">  { }
      }
      <ParamMap."Sound"> 
      {
        
        <ParamString."PreSound">  { }
        <ParamString."PostSound">  { }
      }
      <ParamMap."AutoLoad"> 
      {
        
        <ParamBool."DisableAutoTransfer">  { }
        <ParamBool."AutoStore">  { "true"  }
        <ParamBool."LoadToFilming">  { "true"  }
        <ParamBool."LoadToViewer">  { "true"  }
        <ParamBool."LoadToStamp">  { }
        <ParamBool."LoadToGraphic">  { }
        <ParamChoice."GraphicSegmentChoice">  { <Limit> { "Default" "1st segment" "2nd segment" "3rd segment" "All segments" } "Default"  }
        <ParamBool."InlineMovie">  { }
        <ParamBool."AutoOpenInlineDisplay">  { }
        <ParamBool."AutoCloseInlineDisplay">  { }
        <ParamBool."InlinePositionDisplay">  { }
        <ParamChoice."InlinePositionDisplayOrientation">  { <Limit> { "All orientations" "Sag" "Cor" "Tra" } "All orientations"  }
      }
      <ParamMap."SlicePositioning"> 
      {
        
        <ParamBool."AutoAlignSpine">  { }
      }
      <ParamMap."Queue"> 
      {
        
        <ParamChoice."CoilSelectMode">  { <Limit> { "Default" "Auto Coil Select Off" "Auto Coil Select On" "Auto Coil Select No Spine" "Auto Coil Select Restricted" "Coil Memory Off" "Coil Memory On" "All Off" } "All Off"  }
        <ParamArray."CoilCompartments"> 
        {
          <Default> <ParamBool.""> 
          {
            <Visible> "true" 
            <Limit> { "true" "false" }
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
        <ParamBool."WorkingMan">  { "true"  }
        <ParamBool."WaitForUserToStart">  { }
        <ParamChoice."WaitForStartChoice">  { <Limit> { "Single measurement" "Repeated measurement" } "Single measurement"  }
        <ParamString."Description">  { }
        <ParamString."ProtocolName">  { "MPRAGE_750micron"  }
      }
    }
  }
}

<XProtocol> 
{
  <ID> 50 
  <Userversion> 4.5 
  
  <ParamMap.""> 
  {
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

### ASCCONV BEGIN object=MrProtDataImpl@MrProtocolData version=66010002 converter=%MEASCONST%/ConverterList/Prot_Converter.txt ###
ulVersion	 = 	66010002
tSequenceFileName	 = 	"%SiemensSeq%\tfl"
tProtocolName	 = 	"MPRAGE_750micron"
tdefaultEVAProt	 = 	"%SiemensEvaDefProt%\Inline\Inline.evp"
lScanRegionPosTra	 = 	0.0
ucScanRegionPosValid	 = 	0x1
lPtabAbsStartPosZ	 = 	0
bPtabAbsStartPosZValid	 = 	0x0
lContrasts	 = 	1
lCombinedEchoes	 = 	1
ucDisableChangeStoreImages	 = 	0x1
ucAAMode	 = 	1
ucAARegionMode	 = 	2
ucAARefMode	 = 	4
ucReconstructionMode	 = 	1
ucOneSeriesForAllMeas	 = 	4
ucPHAPSMode	 = 	1
ulWrapUpMagn	 = 	1
lAverages	 = 	1
dAveragesDouble	 = 	1.0
lScanTimeSec	 = 	810
lTotalScanTimeSec	 = 	810
dRefSNR	 = 	72849.9828415
dRefSNR_VOI	 = 	72849.9828415
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
SequenceClass	 = 	5
lDummyScans	 = 	0
ucExternalTriggerSignal	 = 	0x0
lSilentPeriod	 = 	0
dOverallImageScaleFactor	 = 	0.00677248677249
dOverallImageScaleCorrectionFactor	 = 	1.0
dAutoCoilSelectIlluRangeScale	 = 	0.699999988079
SarOptimization	 = 	0
CameraBasedMotionCorrection	 = 	0
ucBreastApplication	 = 	0x0
ucEddyCurrentComp	 = 	0x0
ucStaticFieldCorrection	 = 	0x0
ucDenoiseUniform	 = 	0x0
ucUnfilteredImagesForDenoiseUniform	 = 	0x0
lDenoiseWeight	 = 	40
sInversionContrastCombination	 = 	1
ucMotionCorSAMEROrig	 = 	0x1
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
sTXSPEC.ucExcitMode	 = 	2
sTXSPEC.ucSimultaneousExcitation	 = 	1
sTXSPEC.lB1ShimMode	 = 	1
sTXSPEC.asNucleusInfo.__attribute__.size	 = 	2
sTXSPEC.asNucleusInfo[0].tNucleus	 = 	"1H"
sTXSPEC.asNucleusInfo[0].lCoilSelectIndex	 = 	0
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
sRXSPEC.alDwellTime[0]	 = 	1300
sRXSPEC.alDwellTime[1]	 = 	3200
sRXSPEC.alDwellTime[2]	 = 	3200
sRXSPEC.alDwellTime[3]	 = 	3200
sRXSPEC.alDwellTime[4]	 = 	3200
sRXSPEC.alDwellTime[5]	 = 	3200
sRXSPEC.alDwellTime[6]	 = 	3200
sRXSPEC.alDwellTime[7]	 = 	3200
sRXSPEC.alDwellTime[8]	 = 	3200
sRXSPEC.alDwellTime[9]	 = 	3200
sRXSPEC.alDwellTime[10]	 = 	3200
sRXSPEC.alDwellTime[11]	 = 	3200
sRXSPEC.alDwellTime[12]	 = 	3200
sRXSPEC.alDwellTime[13]	 = 	3200
sRXSPEC.alDwellTime[14]	 = 	3200
sRXSPEC.alDwellTime[15]	 = 	3200
sRXSPEC.alDwellTime[16]	 = 	3200
sRXSPEC.alDwellTime[17]	 = 	3200
sRXSPEC.alDwellTime[18]	 = 	3200
sRXSPEC.alDwellTime[19]	 = 	3200
sRXSPEC.alDwellTime[20]	 = 	3200
sRXSPEC.alDwellTime[21]	 = 	3200
sRXSPEC.alDwellTime[22]	 = 	3200
sRXSPEC.alDwellTime[23]	 = 	3200
sRXSPEC.alDwellTime[24]	 = 	3200
sRXSPEC.alDwellTime[25]	 = 	3200
sRXSPEC.alDwellTime[26]	 = 	3200
sRXSPEC.alDwellTime[27]	 = 	3200
sRXSPEC.alDwellTime[28]	 = 	3200
sRXSPEC.alDwellTime[29]	 = 	3200
sRXSPEC.alDwellTime[30]	 = 	3200
sRXSPEC.alDwellTime[31]	 = 	3200
sRXSPEC.asLocalShimData.__attribute__.size	 = 	8
sAdjData.uiAdjFreMode	 = 	1
sAdjData.uiAdjTraMode	 = 	1
sAdjData.uiAdjShimMode	 = 	2
sAdjData.uiAdjWatSupMode	 = 	1
sAdjData.uiAdjRFMapMode	 = 	1
sAdjData.uiAdjMDSMode	 = 	1
sAdjData.uiAdjTableTolerance	 = 	2
sAdjData.uiAdjFreWarningOverrideKey	 = 	64841
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
sAdjData.sAdjVolume.dThickness	 = 	168.0
sAdjData.sAdjVolume.dPhaseFOV	 = 	225.0
sAdjData.sAdjVolume.dReadoutFOV	 = 	225.0
sAdjData.sAdjVolume.dInPlaneRot	 = 	-0.135996700585
sAdjData.sAdjVolume.sPosition.dSag	 = 	1.54014762766
sAdjData.sAdjVolume.sPosition.dCor	 = 	-24.2228627545
sAdjData.sAdjVolume.sPosition.dTra	 = 	-48.2259319789
sAdjData.sAdjVolume.sNormal.dSag	 = 	0.998143
sAdjData.sAdjVolume.sNormal.dCor	 = 	0.016977
sAdjData.sAdjVolume.sNormal.dTra	 = 	0.058493
alTR.__attribute__.size	 = 	256
alTR[0]	 = 	2530000
alTI.__attribute__.size	 = 	256
alTI[0]	 = 	1100000
alTI[1]	 = 	1000000
alTD.__attribute__.size	 = 	256
alTE.__attribute__.size	 = 	256
alTE[0]	 = 	1650
alTE[1]	 = 	10000
alTE[2]	 = 	15000
alTE[3]	 = 	20000
alTE[4]	 = 	25000
alTE[5]	 = 	30000
alTE[6]	 = 	35000
alTE[7]	 = 	40000
alTE[8]	 = 	45000
alTE[9]	 = 	50000
alTE[10]	 = 	55000
alTE[11]	 = 	60000
alTE[12]	 = 	65000
alTE[13]	 = 	70000
alTE[14]	 = 	75000
alTE[15]	 = 	80000
alTE[16]	 = 	85000
alTE[17]	 = 	90000
alTE[18]	 = 	95000
alTE[19]	 = 	100000
alTE[20]	 = 	105000
alTE[21]	 = 	110000
alTE[22]	 = 	115000
alTE[23]	 = 	120000
alTE[24]	 = 	125000
alTE[25]	 = 	130000
alTE[26]	 = 	135000
alTE[27]	 = 	140000
alTE[28]	 = 	145000
alTE[29]	 = 	150000
alTE[30]	 = 	155000
alTE[31]	 = 	160000
acFlowComp.__attribute__.size	 = 	256
acFlowComp[0]	 = 	1
acFlowComp[1]	 = 	1
acFlowComp[2]	 = 	1
acFlowComp[3]	 = 	1
acFlowComp[4]	 = 	1
acFlowComp[5]	 = 	1
acFlowComp[6]	 = 	1
acFlowComp[7]	 = 	1
acFlowComp[8]	 = 	1
acFlowComp[9]	 = 	1
acFlowComp[10]	 = 	1
acFlowComp[11]	 = 	1
acFlowComp[12]	 = 	1
acFlowComp[13]	 = 	1
acFlowComp[14]	 = 	1
acFlowComp[15]	 = 	1
acFlowComp[16]	 = 	1
acFlowComp[17]	 = 	1
acFlowComp[18]	 = 	1
acFlowComp[19]	 = 	1
acFlowComp[20]	 = 	1
acFlowComp[21]	 = 	1
acFlowComp[22]	 = 	1
acFlowComp[23]	 = 	1
acFlowComp[24]	 = 	1
acFlowComp[25]	 = 	1
acFlowComp[26]	 = 	1
acFlowComp[27]	 = 	1
acFlowComp[28]	 = 	1
acFlowComp[29]	 = 	1
acFlowComp[30]	 = 	1
acFlowComp[31]	 = 	1
sSliceArray.lSize	 = 	1
sSliceArray.lSag	 = 	1
sSliceArray.lConc	 = 	1
sSliceArray.ucMode	 = 	4
sSliceArray.ucAnatomicalSliceMode	 = 	4
sSliceArray.ucConcatenationsSelectModeResp	 = 	1
sSliceArray.asSlice.__attribute__.size	 = 	256
sSliceArray.asSlice[0].dThickness	 = 	168.0
sSliceArray.asSlice[0].dPhaseFOV	 = 	240.0
sSliceArray.asSlice[0].dReadoutFOV	 = 	240.0
sSliceArray.asSlice[0].dInPlaneRot	 = 	-0.13596114873
sSliceArray.asSlice[0].sPosition.dSag	 = 	-2.52339623174
sSliceArray.asSlice[0].sPosition.dCor	 = 	-30.2752910891
sSliceArray.asSlice[0].sPosition.dTra	 = 	-40.7348856276
sSliceArray.asSlice[0].sNormal.dSag	 = 	0.998143
sSliceArray.asSlice[0].sNormal.dCor	 = 	0.016977
sSliceArray.asSlice[0].sNormal.dTra	 = 	0.058493
sSliceArray.alSliceAcqOrder.__attribute__.size	 = 	256
sSliceArray.anAsc.__attribute__.size	 = 	256
sSliceArray.anPos.__attribute__.size	 = 	256
sSliceArray.sTSat.dThickness	 = 	50.0
sSliceArray.sTSat.ulShape	 = 	1
sGroupArray.lSize	 = 	1
sGroupArray.asGroup.__attribute__.size	 = 	256
sGroupArray.asGroup[0].nSize	 = 	1
sGroupArray.asGroup[0].dDistFact	 = 	0.5
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
sAutoAlign.dAAMatrix.__attribute__.size	 = 	16
sAutoAlign.dAAMatrix[0]	 = 	1.0
sAutoAlign.dAAMatrix[5]	 = 	1.0
sAutoAlign.dAAMatrix[10]	 = 	1.0
sAutoAlign.dAAMatrix[15]	 = 	1.0
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
sPrepPulses.ucInversion	 = 	2
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
sKSpace.lBaseResolution	 = 	320
sKSpace.lPhaseEncodingLines	 = 	320
sKSpace.lPartitions	 = 	224
sKSpace.lImagesPerSlab	 = 	224
sKSpace.lRadialViews	 = 	64
sKSpace.lRadialInterleavesPerImage	 = 	1
sKSpace.lLinesPerShot	 = 	1
sKSpace.unReordering	 = 	1
sKSpace.ucPhasePartialFourier	 = 	16
sKSpace.ucSlicePartialFourier	 = 	16
sKSpace.ucAveragingMode	 = 	2
sKSpace.ucMultiSliceMode	 = 	4
sKSpace.ucDimension	 = 	4
sKSpace.ucTrajectory	 = 	1
sKSpace.lNumberOfBins	 = 	0
sKSpace.ucAsymmetricEchoMode	 = 	1
sKSpace.ucPOCS	 = 	1
sKSpace.Reordering3D	 = 	1
sKSpace.ucReadoutPartialFourier	 = 	16
sKSpace.ucDynamicMode	 = 	1
sKSpace.ucUndersamplingPattern	 = 	1
sKSpace.lTrajectoryOptimization	 = 	0
sKSpace.DistributionAsymmetry	 = 	0
sKSpace.SpiralInterleaves	 = 	1
sKSpace.PhaseEncOrder	 = 	0
sFastImaging.lEPIFactor	 = 	1
sFastImaging.lTurboFactor	 = 	224
sFastImaging.lSliceTurboFactor	 = 	1
sFastImaging.lSegments	 = 	1
sFastImaging.ulEnableRFSpoiling	 = 	0x1
sFastImaging.ucPhaseEncRE	 = 	0x0
sFastImaging.ucSegmentationMode	 = 	1
sFastImaging.lShots	 = 	1
sFastImaging.lEchoTrainDuration	 = 	700
sFastImaging.ucIncrGradientSpoiling	 = 	0x1
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
sPhysioImaging.sPhysioResp.lAcqusitionWindowPercent	 = 	25
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
sDistortionCorrFilter.ucMode	 = 	2
sNoiseDecorrData.lNoiseDecorrDefaultMode	 = 	4
sPat.lAccelFactPE	 = 	1
sPat.lAccelFact3D	 = 	1
sPat.ucPATMode	 = 	1
sPat.ucRefScanMode	 = 	1
sPat.ucTPatAverageAllFrames	 = 	0x1
sPat.ulCaipirinhaMode	 = 	1
sPat.lAccelFactPeriph	 = 	16
sPat.lAccelFactCenter	 = 	3
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
sAAInitialOffset.Laterality	 = 	0
sAAInitialOffset.SliceInformation.dInPlaneRot	 = 	-0.385613044936
sAAInitialOffset.SliceInformation.sPosition.dSag	 = 	-0.601793939553
sAAInitialOffset.SliceInformation.sPosition.dCor	 = 	-8.69379156188
sAAInitialOffset.SliceInformation.sPosition.dTra	 = 	-24.4161251267
sAAInitialOffset.SliceInformation.sNormal.dSag	 = 	1.0
sAAInitialOffset.SliceInformation.sNormal.dCor	 = 	3.73758133325e-07
sAAInitialOffset.SliceInformation.sNormal.dTra	 = 	-2.19658799098e-07
alRepetitionsDelayTimeMs.__attribute__.size	 = 	64
adFlipAngleDegree.__attribute__.size	 = 	32
adFlipAngleDegree[0]	 = 	7.0
adFlipAngleDegree[1]	 = 	8.0
aulServicePara.__attribute__.size	 = 	5
uiPerProxy2Skip.__attribute__.size	 = 	2
sCoilSelectMeas.sCoilStringForConversion	 = 	"AC"
sCoilSelectMeas.aRxCoilSelectData.__attribute__.size	 = 	16
sCoilSelectMeas.aRxCoilSelectData[0].ucNoiseDecorrMode	 = 	0x1
sCoilSelectMeas.aRxCoilSelectData[0].tNucleus	 = 	"1H"
sCoilSelectMeas.aRxCoilSelectData[0].iUsedRFactor	 = 	3
sCoilSelectMeas.aRxCoilSelectData[0].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].tCheckUUID	 = 	"e459d1ec95c35fc81795dd8221c7ba0ed5d3fe6b"
sCoilSelectMeas.aRxCoilSelectData[0].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[0].asList.__attribute__.size	 = 	63
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].lMuxChannelConnected	 = 	9
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].lRxChannelConnected	 = 	9
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].lADCChannelConnected	 = 	9
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilElementID.tElement	 = 	"H21"
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilElementID.ulUniqueKey	 = 	2068838884
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].lMuxChannelConnected	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].lRxChannelConnected	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].lADCChannelConnected	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilElementID.tElement	 = 	"H12"
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilElementID.ulUniqueKey	 = 	-1166282342
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].lMuxChannelConnected	 = 	3
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].lRxChannelConnected	 = 	3
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].lADCChannelConnected	 = 	3
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilElementID.tElement	 = 	"H13"
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilElementID.ulUniqueKey	 = 	-2028218326
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].lMuxChannelConnected	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].lRxChannelConnected	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].lADCChannelConnected	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilElementID.tElement	 = 	"H14"
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilElementID.ulUniqueKey	 = 	893060154
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].lMuxChannelConnected	 = 	5
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].lRxChannelConnected	 = 	5
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].lADCChannelConnected	 = 	5
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilElementID.tElement	 = 	"H15"
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilElementID.ulUniqueKey	 = 	140193162
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].lMuxChannelConnected	 = 	6
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].lRxChannelConnected	 = 	6
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].lADCChannelConnected	 = 	6
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilElementID.tElement	 = 	"H16"
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilElementID.ulUniqueKey	 = 	1341871962
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].lMuxChannelConnected	 = 	7
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].lRxChannelConnected	 = 	7
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].lADCChannelConnected	 = 	7
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilElementID.tElement	 = 	"H17"
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilElementID.ulUniqueKey	 = 	1922793194
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].lMuxChannelConnected	 = 	8
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].lRxChannelConnected	 = 	8
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].lADCChannelConnected	 = 	8
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilElementID.tElement	 = 	"H18"
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilElementID.ulUniqueKey	 = 	-255071941
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].lMuxChannelConnected	 = 	10
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].lRxChannelConnected	 = 	10
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].lADCChannelConnected	 = 	10
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilElementID.tElement	 = 	"H22"
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilElementID.ulUniqueKey	 = 	1022329652
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].lMuxChannelConnected	 = 	11
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].lRxChannelConnected	 = 	11
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].lADCChannelConnected	 = 	11
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilElementID.tElement	 = 	"H23"
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilElementID.ulUniqueKey	 = 	26192516
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].lMuxChannelConnected	 = 	12
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].lRxChannelConnected	 = 	12
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].lADCChannelConnected	 = 	12
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilElementID.tElement	 = 	"H24"
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilElementID.ulUniqueKey	 = 	-1280346476
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].lMuxChannelConnected	 = 	13
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].lRxChannelConnected	 = 	13
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].lADCChannelConnected	 = 	13
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilElementID.tElement	 = 	"H25"
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilElementID.ulUniqueKey	 = 	-1899012316
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].lMuxChannelConnected	 = 	14
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].lRxChannelConnected	 = 	14
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].lADCChannelConnected	 = 	14
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilElementID.tElement	 = 	"H26"
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilElementID.ulUniqueKey	 = 	-915462668
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].lMuxChannelConnected	 = 	15
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].lRxChannelConnected	 = 	15
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].lADCChannelConnected	 = 	15
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilElementID.tElement	 = 	"H27"
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilElementID.ulUniqueKey	 = 	-200340412
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].lMuxChannelConnected	 = 	16
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].lRxChannelConnected	 = 	16
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].lADCChannelConnected	 = 	16
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilElementID.tElement	 = 	"H28"
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilElementID.ulUniqueKey	 = 	1985977237
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].lMuxChannelConnected	 = 	17
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].lRxChannelConnected	 = 	17
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].lADCChannelConnected	 = 	17
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilElementID.tElement	 = 	"H31"
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilElementID.ulUniqueKey	 = 	-1340921279
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].lMuxChannelConnected	 = 	18
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].lRxChannelConnected	 = 	18
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].lADCChannelConnected	 = 	18
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilElementID.tElement	 = 	"H32"
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilElementID.ulUniqueKey	 = 	-139243375
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].lMuxChannelConnected	 = 	19
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].lRxChannelConnected	 = 	19
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].lADCChannelConnected	 = 	19
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilElementID.tElement	 = 	"H33"
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilElementID.ulUniqueKey	 = 	-892110559
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].lMuxChannelConnected	 = 	20
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].lRxChannelConnected	 = 	20
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].lADCChannelConnected	 = 	20
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilElementID.tElement	 = 	"H34"
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilElementID.ulUniqueKey	 = 	2029233457
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].lMuxChannelConnected	 = 	21
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].lRxChannelConnected	 = 	21
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].lADCChannelConnected	 = 	21
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilElementID.tElement	 = 	"H35"
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilElementID.ulUniqueKey	 = 	1167297665
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].lMuxChannelConnected	 = 	22
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].lRxChannelConnected	 = 	22
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].lADCChannelConnected	 = 	22
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilElementID.tElement	 = 	"H36"
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilElementID.ulUniqueKey	 = 	36959825
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].lMuxChannelConnected	 = 	23
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].lRxChannelConnected	 = 	23
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].lADCChannelConnected	 = 	23
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilElementID.tElement	 = 	"H37"
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilElementID.ulUniqueKey	 = 	1062461409
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].lMuxChannelConnected	 = 	24
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].lRxChannelConnected	 = 	24
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].lADCChannelConnected	 = 	24
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilElementID.tElement	 = 	"H38"
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilElementID.ulUniqueKey	 = 	-1123858384
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].lMuxChannelConnected	 = 	25
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].lRxChannelConnected	 = 	25
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].lADCChannelConnected	 = 	25
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilElementID.tElement	 = 	"H41"
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilElementID.ulUniqueKey	 = 	-1391060231
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].lMuxChannelConnected	 = 	26
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].lRxChannelConnected	 = 	26
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].lADCChannelConnected	 = 	26
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilElementID.tElement	 = 	"H42"
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilElementID.ulUniqueKey	 = 	-357146583
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].lMuxChannelConnected	 = 	27
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].lRxChannelConnected	 = 	27
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].lADCChannelConnected	 = 	27
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilElementID.tElement	 = 	"H43"
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilElementID.ulUniqueKey	 = 	-673822311
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].lMuxChannelConnected	 = 	28
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].lRxChannelConnected	 = 	28
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].lADCChannelConnected	 = 	28
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilElementID.tElement	 = 	"H44"
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilElementID.ulUniqueKey	 = 	1710658953
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].lMuxChannelConnected	 = 	29
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].lRxChannelConnected	 = 	29
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].lADCChannelConnected	 = 	29
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilElementID.tElement	 = 	"H45"
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilElementID.ulUniqueKey	 = 	1486273593
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].lMuxChannelConnected	 = 	30
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].lRxChannelConnected	 = 	30
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].lADCChannelConnected	 = 	30
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilElementID.tElement	 = 	"H46"
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilElementID.ulUniqueKey	 = 	523683561
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].lMuxChannelConnected	 = 	31
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].lRxChannelConnected	 = 	31
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].lADCChannelConnected	 = 	31
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilElementID.tElement	 = 	"H47"
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilElementID.ulUniqueKey	 = 	576122713
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].lMuxChannelConnected	 = 	32
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].lRxChannelConnected	 = 	32
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].lADCChannelConnected	 = 	32
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilElementID.tElement	 = 	"H48"
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilElementID.ulUniqueKey	 = 	-1610188664
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].lMuxChannelConnected	 = 	33
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].lRxChannelConnected	 = 	33
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].lADCChannelConnected	 = 	33
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilElementID.tElement	 = 	"H701"
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilElementID.ulUniqueKey	 = 	-169368076
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].lMuxChannelConnected	 = 	34
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].lRxChannelConnected	 = 	34
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].lADCChannelConnected	 = 	34
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].sCoilElementID.tElement	 = 	"H702"
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].sCoilElementID.ulUniqueKey	 = 	-1303912668
sCoilSelectMeas.aRxCoilSelectData[0].asList[32].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].lMuxChannelConnected	 = 	35
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].lRxChannelConnected	 = 	35
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].lADCChannelConnected	 = 	35
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].sCoilElementID.tElement	 = 	"H703"
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].sCoilElementID.ulUniqueKey	 = 	-1893206380
sCoilSelectMeas.aRxCoilSelectData[0].asList[33].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].lMuxChannelConnected	 = 	36
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].lRxChannelConnected	 = 	36
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].lADCChannelConnected	 = 	36
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].sCoilElementID.tElement	 = 	"H704"
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].sCoilElementID.ulUniqueKey	 = 	1023879812
sCoilSelectMeas.aRxCoilSelectData[0].asList[34].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].lMuxChannelConnected	 = 	37
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].lRxChannelConnected	 = 	37
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].lADCChannelConnected	 = 	37
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].sCoilElementID.tElement	 = 	"H705"
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].sCoilElementID.ulUniqueKey	 = 	6751028
sCoilSelectMeas.aRxCoilSelectData[0].asList[35].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].lMuxChannelConnected	 = 	38
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].lRxChannelConnected	 = 	38
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].lADCChannelConnected	 = 	38
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].sCoilElementID.tElement	 = 	"H706"
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].sCoilElementID.ulUniqueKey	 = 	1204255204
sCoilSelectMeas.aRxCoilSelectData[0].asList[36].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].lMuxChannelConnected	 = 	39
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].lRxChannelConnected	 = 	39
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].lADCChannelConnected	 = 	39
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].sCoilElementID.tElement	 = 	"H707"
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].sCoilElementID.ulUniqueKey	 = 	2057785428
sCoilSelectMeas.aRxCoilSelectData[0].asList[37].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].lMuxChannelConnected	 = 	40
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].lRxChannelConnected	 = 	40
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].lADCChannelConnected	 = 	40
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].sCoilElementID.tElement	 = 	"H708"
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].sCoilElementID.ulUniqueKey	 = 	-117979259
sCoilSelectMeas.aRxCoilSelectData[0].asList[38].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].lMuxChannelConnected	 = 	41
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].lRxChannelConnected	 = 	41
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].lADCChannelConnected	 = 	41
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].sCoilElementID.tElement	 = 	"H709"
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].sCoilElementID.ulUniqueKey	 = 	-979898827
sCoilSelectMeas.aRxCoilSelectData[0].asList[39].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].lMuxChannelConnected	 = 	42
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].lRxChannelConnected	 = 	42
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].lADCChannelConnected	 = 	42
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].sCoilElementID.tElement	 = 	"H710"
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].sCoilElementID.ulUniqueKey	 = 	64708577
sCoilSelectMeas.aRxCoilSelectData[0].asList[40].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].lMuxChannelConnected	 = 	43
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].lRxChannelConnected	 = 	43
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].lADCChannelConnected	 = 	43
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].sCoilElementID.tElement	 = 	"H711"
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].sCoilElementID.ulUniqueKey	 = 	1052472913
sCoilSelectMeas.aRxCoilSelectData[0].asList[41].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].lMuxChannelConnected	 = 	44
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].lRxChannelConnected	 = 	44
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].lADCChannelConnected	 = 	44
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].sCoilElementID.tElement	 = 	"H712"
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].sCoilElementID.ulUniqueKey	 = 	2031815809
sCoilSelectMeas.aRxCoilSelectData[0].asList[42].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].lMuxChannelConnected	 = 	45
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].lRxChannelConnected	 = 	45
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].lADCChannelConnected	 = 	45
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].sCoilElementID.tElement	 = 	"H713"
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].sCoilElementID.ulUniqueKey	 = 	1148921137
sCoilSelectMeas.aRxCoilSelectData[0].asList[43].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].lMuxChannelConnected	 = 	46
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].lRxChannelConnected	 = 	46
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].lADCChannelConnected	 = 	46
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].sCoilElementID.tElement	 = 	"H714"
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].sCoilElementID.ulUniqueKey	 = 	-161744607
sCoilSelectMeas.aRxCoilSelectData[0].asList[44].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].lMuxChannelConnected	 = 	47
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].lRxChannelConnected	 = 	47
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].lADCChannelConnected	 = 	47
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].sCoilElementID.tElement	 = 	"H715"
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].sCoilElementID.ulUniqueKey	 = 	-885272431
sCoilSelectMeas.aRxCoilSelectData[0].asList[45].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].lMuxChannelConnected	 = 	48
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].lRxChannelConnected	 = 	48
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].lADCChannelConnected	 = 	48
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].sCoilElementID.tElement	 = 	"H716"
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].sCoilElementID.ulUniqueKey	 = 	-1935955391
sCoilSelectMeas.aRxCoilSelectData[0].asList[46].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].lMuxChannelConnected	 = 	49
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].lRxChannelConnected	 = 	49
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].lADCChannelConnected	 = 	49
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].sCoilElementID.tElement	 = 	"H717"
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].sCoilElementID.ulUniqueKey	 = 	-1308916751
sCoilSelectMeas.aRxCoilSelectData[0].asList[47].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].lMuxChannelConnected	 = 	50
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].lRxChannelConnected	 = 	50
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].lADCChannelConnected	 = 	50
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].sCoilElementID.tElement	 = 	"H718"
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].sCoilElementID.ulUniqueKey	 = 	866849824
sCoilSelectMeas.aRxCoilSelectData[0].asList[48].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].lMuxChannelConnected	 = 	51
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].lRxChannelConnected	 = 	51
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].lADCChannelConnected	 = 	51
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].sCoilElementID.tElement	 = 	"H719"
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].sCoilElementID.ulUniqueKey	 = 	248200592
sCoilSelectMeas.aRxCoilSelectData[0].asList[49].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].lMuxChannelConnected	 = 	52
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].lRxChannelConnected	 = 	52
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].lADCChannelConnected	 = 	52
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].sCoilElementID.tElement	 = 	"H720"
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].sCoilElementID.ulUniqueKey	 = 	-2058408625
sCoilSelectMeas.aRxCoilSelectData[0].asList[50].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].lMuxChannelConnected	 = 	53
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].lRxChannelConnected	 = 	53
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].lADCChannelConnected	 = 	53
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].sCoilElementID.tElement	 = 	"H721"
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].sCoilElementID.ulUniqueKey	 = 	-1204878081
sCoilSelectMeas.aRxCoilSelectData[0].asList[51].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].lMuxChannelConnected	 = 	54
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].lRxChannelConnected	 = 	54
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].lADCChannelConnected	 = 	54
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].sCoilElementID.tElement	 = 	"H722"
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].sCoilElementID.ulUniqueKey	 = 	-7373265
sCoilSelectMeas.aRxCoilSelectData[0].asList[52].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].lMuxChannelConnected	 = 	55
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].lRxChannelConnected	 = 	55
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].lADCChannelConnected	 = 	55
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].sCoilElementID.tElement	 = 	"H723"
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].sCoilElementID.ulUniqueKey	 = 	-1024501857
sCoilSelectMeas.aRxCoilSelectData[0].asList[53].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].lMuxChannelConnected	 = 	56
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].lRxChannelConnected	 = 	56
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].lADCChannelConnected	 = 	56
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].sCoilElementID.tElement	 = 	"H724"
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].sCoilElementID.ulUniqueKey	 = 	1892649871
sCoilSelectMeas.aRxCoilSelectData[0].asList[54].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].lMuxChannelConnected	 = 	57
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].lRxChannelConnected	 = 	57
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].lADCChannelConnected	 = 	57
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].sCoilElementID.tElement	 = 	"H725"
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].sCoilElementID.ulUniqueKey	 = 	1303355967
sCoilSelectMeas.aRxCoilSelectData[0].asList[55].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].lMuxChannelConnected	 = 	58
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].lRxChannelConnected	 = 	58
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].lADCChannelConnected	 = 	58
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].sCoilElementID.tElement	 = 	"H726"
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].sCoilElementID.ulUniqueKey	 = 	168810735
sCoilSelectMeas.aRxCoilSelectData[0].asList[56].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].lMuxChannelConnected	 = 	59
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].lRxChannelConnected	 = 	59
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].lADCChannelConnected	 = 	59
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].sCoilElementID.tElement	 = 	"H727"
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].sCoilElementID.ulUniqueKey	 = 	930083167
sCoilSelectMeas.aRxCoilSelectData[0].asList[57].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].lMuxChannelConnected	 = 	60
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].lRxChannelConnected	 = 	60
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].lADCChannelConnected	 = 	60
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].sCoilElementID.tElement	 = 	"H728"
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].sCoilElementID.ulUniqueKey	 = 	-1254136178
sCoilSelectMeas.aRxCoilSelectData[0].asList[58].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].lMuxChannelConnected	 = 	61
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].lRxChannelConnected	 = 	61
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].lADCChannelConnected	 = 	61
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].sCoilElementID.tElement	 = 	"H729"
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].sCoilElementID.ulUniqueKey	 = 	-2007019714
sCoilSelectMeas.aRxCoilSelectData[0].asList[59].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].lMuxChannelConnected	 = 	62
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].lRxChannelConnected	 = 	62
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].lADCChannelConnected	 = 	62
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].sCoilElementID.tElement	 = 	"H730"
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].sCoilElementID.ulUniqueKey	 = 	1309933290
sCoilSelectMeas.aRxCoilSelectData[0].asList[60].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].lMuxChannelConnected	 = 	63
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].lRxChannelConnected	 = 	63
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].lADCChannelConnected	 = 	63
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].sCoilElementID.tElement	 = 	"H731"
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].sCoilElementID.ulUniqueKey	 = 	1936971610
sCoilSelectMeas.aRxCoilSelectData[0].asList[61].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].lMuxChannelConnected	 = 	64
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].lRxChannelConnected	 = 	64
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].lADCChannelConnected	 = 	64
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].sCoilElementID.tElement	 = 	"H732"
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].sCoilElementID.ulUniqueKey	 = 	886287754
sCoilSelectMeas.aRxCoilSelectData[0].asList[62].sCoilProperties.eCoilType	 = 	4
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
sCoilSelectMeas.aTxCoilSelectData[0].tCheckUUID	 = 	"f1ac0e51983f6112c3dee4a12f37e1bf5616632b"
sCoilSelectMeas.aTxCoilSelectData[0].asList.__attribute__.size	 = 	32
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilElementID.tElement	 = 	"Tx1"
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilElementID.ulUniqueKey	 = 	1978803796
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sTxScaleFactorCP.dRe	 = 	0.3535534
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].lTxChannelConnected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sCoilElementID.tElement	 = 	"Tx2"
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sCoilElementID.ulUniqueKey	 = 	844258436
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sTxScaleFactorCP.dRe	 = 	0.3535534
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].lTxChannelConnected	 = 	2
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sCoilElementID.tElement	 = 	"Tx3"
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sCoilElementID.ulUniqueKey	 = 	254965044
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sTxScaleFactorCP.dRe	 = 	0.3535534
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].lTxChannelConnected	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sCoilElementID.tElement	 = 	"Tx4"
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sCoilElementID.ulUniqueKey	 = 	-1122850524
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sTxScaleFactorCP.dRe	 = 	0.3535534
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].lTxChannelConnected	 = 	4
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sCoilElementID.tElement	 = 	"Tx5"
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sCoilElementID.ulUniqueKey	 = 	-2139979628
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sTxScaleFactorCP.dRe	 = 	0.3535534
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].lTxChannelConnected	 = 	5
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sCoilElementID.tElement	 = 	"Tx6"
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sCoilElementID.ulUniqueKey	 = 	-942474684
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sTxScaleFactorCP.dRe	 = 	0.3535534
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].lTxChannelConnected	 = 	6
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sCoilElementID.tElement	 = 	"Tx7"
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sCoilElementID.ulUniqueKey	 = 	-88943628
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sTxScaleFactorCP.dRe	 = 	0.3535534
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].lTxChannelConnected	 = 	7
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sCoilElementID.tCoilID	 = 	"MGH_63ch"
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sCoilElementID.tElement	 = 	"Tx8"
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sCoilElementID.ulUniqueKey	 = 	2028094501
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sTxScaleFactorCP.dRe	 = 	0.3535534
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[1].asList.__attribute__.size	 = 	32
sCoilSelectMeas.aLocalShimCoilSelectData.__attribute__.size	 = 	1
sCoilSelectMeas.aLocalShimCoilSelectData[0].asList.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug.__attribute__.size	 = 	11
sCoilSelectMeas.CoilPlugs.Plug[0].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[0].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[1].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[1].IdPart[0]	 = 	149
sCoilSelectMeas.CoilPlugs.Plug[2].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[2].IdPart[0]	 = 	150
sCoilSelectMeas.CoilPlugs.Plug[3].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[3].IdPart[0]	 = 	151
sCoilSelectMeas.CoilPlugs.Plug[4].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[4].IdPart[0]	 = 	152
sCoilSelectMeas.CoilPlugs.Plug[5].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[5].IdPart[0]	 = 	18837
sCoilSelectMeas.CoilPlugs.Plug[6].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[6].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[7].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[7].IdPart[0]	 = 	148
sCoilSelectMeas.CoilPlugs.Plug[8].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[8].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[9].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[9].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[10].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[10].IdPart[0]	 = 	238
sWipMemBlock.alFree.__attribute__.size	 = 	64
sWipMemBlock.adFree.__attribute__.size	 = 	16
sWipMemBlock.adFree[5]	 = 	0.00899999961257
sWipMemBlock.adRes.__attribute__.size	 = 	3
ucBOLDParadigmArray.__attribute__.size	 = 	256
sParametricMapping.ucParametricMap	 = 	1
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
sCommonIterRecon.lIterations	 = 	15
sCommonIterRecon.eReconMethod	 = 	2
sCommonIterRecon.dRegularization	 = 	0.0010000000475
sCommonIterRecon.eDenoisingMode	 = 	1
sCommonIterRecon.lDenoisingStrength	 = 	50
sCommonIterRecon.dScalingFactor	 = 	0.0
sCommonIterRecon.dTemporalScaleFactor	 = 	5.0
sCommonIterRecon.dThresholdWavelet	 = 	0.00700000021607
sCommonIterRecon.dTolerance	 = 	9.99999974738e-06
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
### ASCCONV END ###
