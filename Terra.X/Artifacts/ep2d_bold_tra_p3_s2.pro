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
        <ParamBool."LoadToStamp">  { "true"  }
        <ParamBool."LoadToGraphic">  { "true"  }
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
        
        <ParamChoice."CoilSelectMode">  { <Limit> { "Default" "Auto Coil Select Off" "Auto Coil Select On" "Auto Coil Select No Spine" "Auto Coil Select Restricted" "Coil Memory Off" "Coil Memory On" "All Off" } "Auto Coil Select On"  }
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
        <ParamString."ProtocolName">  { "ep2d_bold_tra_p3_s2"  }
      }
    }
  }
}

<XProtocol> 
{
  <ID> 2 
  <Userversion> 3.3 
  
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
      <ParamString."tdefaultEVAProt">  { "%SiemensEvaDefProt%/BOLD/t-test_10B10A_moco.evp"  }
      <ParamBool."tt_visible">  { }
      <ParamFunctor."MosaicUnwrapper"> 
      {
        <Class> "MosaicUnwrapper@IceImagePostProcFunctors" 
        
        <ParamBool."EXECUTE">  { }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "" "ComputeImage"  }
      }
      <ParamFunctor."MotionCorrDecorator"> 
      {
        <Class> "MotionCorrDecorator@IceImagePostProcFunctors" 
        
        <ParamBool."EXECUTE">  { }
        <ParamBool."MoCo">  { }
        <ParamChoice."InterpolMoCo">  { <Limit> { "linear" "3D-K-space" "Sinc" "QuinSpline" } "3D-K-space"  }
        <ParamLong."SincKernelSize">  { 5  }
        <ParamBool."Filter">  { }
        <ParamDouble."FilterWidth">  { <Precision> 1  1.0  }
        <ParamBool."IsInlineProcessing">  { "true"  }
        <ParamLong."Pace">  { 1  }
        <ParamDouble."RotAngle">  { <Precision> 6  }
        <ParamLong."Rep2BePatched">  { -1  }
        <ParamBool."DumpPaceInfo">  { }
        <ParamDouble."PatchTransX">  { <Precision> 1  }
        <ParamDouble."PatchTransY">  { <Precision> 1  }
        <ParamDouble."PatchTransZ">  { <Precision> 1  }
        <ParamDouble."PatchRotX">  { <Precision> 1  }
        <ParamDouble."PatchRotY">  { <Precision> 1  }
        <ParamDouble."PatchRotZ">  { <Precision> 1  }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "" "ComputeImage"  }
      }
      <ParamFunctor."FMRIFunctor"> 
      {
        <Class> "FMRIFunctor@IceImagePostProcFunctors" 
        
        <ParamBool."EXECUTE">  { }
        <ParamLong."IgnoreMeas">  { }
        <ParamLong."IgnoresAfterTransition">  { }
        <ParamBool."HRFModelConvolution">  { "true"  }
        <ParamBool."TemporalHighpass">  { "true"  }
        <ParamLong."paradigm_size">  { 20  }
        <ParamArray."paradigm"> 
        {
          <Default> <ParamChoice.""> 
          {
            <Visible> "true" 
            <Default> "active" 
            <Limit> { "ignore" "active" "baseline" }
          }
          { "baseline"  }
          { "baseline"  }
          { "baseline"  }
          { "baseline"  }
          { "baseline"  }
          { "baseline"  }
          { "baseline"  }
          { "baseline"  }
          { "baseline"  }
          { "baseline"  }
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
        <ParamBool."t-test">  { }
        <ParamBool."glm">  { }
        <ParamDouble."Threshold">  { <Precision> 2  4.00  }
        <ParamChoice."window">  { <Limit> { "constWindow" "Growing Window" } "Growing Window"  }
        <ParamBool."IsInlineProcessing">  { "true"  }
        <ParamChoice."InlineLUT">  { <Limit> { "<Not found>" "BOLDInline.pal" "HotMetal.pal" "ColdMetal.pal" "Thal.pal" } "BOLDInline.pal"  }
        <ParamDouble."InlineLUTRange">  { <Precision> 2  6.00  }
        <ParamLong."StartInlineAtMeas">  { }
        <ParamLong."MaxCovarHighpass">  { 16  }
        <ParamLong."ForcedCovarHighpass">  { -1  }
        <ParamDouble."HRFDelay_s">  { 99999.999  }
        <ParamBool."UseExternalDesign">  { }
        <ParamString."ExternalInputDir">  { "p1cond"  }
        <ParamLong."JobsPerCPU">  { 1  }
        <ParamLong."MaxCovarHighpassUsed">  { 5  }
        <ParamDouble."InlineDisplayUpdateInterval">  { 2.000  }
        <ParamLong."MaxNumberOfJobs">  { }
        <ParamDouble."MeanAndTMapsNoiseMaskingThreshold">  { 0.050  }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "" "ComputeImage"  }
      }
      <ParamFunctor."MosaicDecorator"> 
      {
        <Class> "MosaicDecorator@IceImagePostProcFunctors" 
        
        <ParamBool."EXECUTE">  { "true"  }
        <ParamBool."Mosaic">  { "true"  }
        <Method."ComputeImage">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Event."ImageReady">  { "uint64_t" "class IceAs &" "class MrPtr<class MiniHeader> &" "class ImageControl &"  }
        <Connection."c1">  { "ImageReady" "MosaicDecorator" "ComputeImage"  }
      }
    }
  }
}

### ASCCONV BEGIN object=MrProtDataImpl@MrProtocolData version=66010002 converter=%MEASCONST%/ConverterList/Prot_Converter.txt ###
ulVersion	 = 	66010002
tSequenceFileName	 = 	"%SiemensSeq%\ep2d_bold"
tProtocolName	 = 	"ep2d_bold_tra_p3_s2"
tdefaultEVAProt	 = 	"%SiemensEvaDefProt%\BOLD\t-test_10B10A_moco.evp"
lScanRegionPosTra	 = 	0.0
ucScanRegionPosValid	 = 	0x1
lPtabAbsStartPosZ	 = 	0
bPtabAbsStartPosZValid	 = 	0x0
ucEnableNoiseAdjust	 = 	1
lContrasts	 = 	1
lCombinedEchoes	 = 	1
ucDisableChangeStoreImages	 = 	0x1
ucAAMode	 = 	1
ucAARegionMode	 = 	1
ucAARefMode	 = 	1
ucReconstructionMode	 = 	1
ucOneSeriesForAllMeas	 = 	1
ucPHAPSMode	 = 	1
ulWrapUpMagn	 = 	1
lAverages	 = 	1
dAveragesDouble	 = 	1.0
lRepetitions	 = 	1
lDelayTimeInTR	 = 	8848000
lScanTimeSec	 = 	12
lTotalScanTimeSec	 = 	65
dRefSNR	 = 	4943.70048618
dRefSNR_VOI	 = 	4943.70048618
ulMotionCorr	 = 	1
lParadigmPeriodicity	 = 	20
ucCineMode	 = 	1
ucSequenceType	 = 	4
ucCoilCombineMode	 = 	2
ucFlipAngleMode	 = 	1
lTOM	 = 	1
ucReadOutMode	 = 	1
ucBold3dPace	 = 	1
ucInteractiveRealtime	 = 	0x1
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
dOverallImageScaleFactor	 = 	1.61616161616
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
sProtConsistencyInfo.flNominalB0	 = 	6.98093605042
sGRADSPEC.ucMode	 = 	17
sGRADSPEC.flGSWDMinRiseTime	 = 	5.80000019073
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
sTXSPEC.ucExcitMode	 = 	32
sTXSPEC.ucSimultaneousExcitation	 = 	1
sTXSPEC.lB1ShimMode	 = 	1
sTXSPEC.asNucleusInfo.__attribute__.size	 = 	2
sTXSPEC.asNucleusInfo[0].tNucleus	 = 	"1H"
sTXSPEC.asNucleusInfo[0].lCoilSelectIndex	 = 	-1
sTXSPEC.asNucleusInfo[0].flReferenceAmplitude	 = 	500.0
sTXSPEC.asNucleusInfo[0].flCompProtectionRefAmpl	 = 	500.0
sTXSPEC.asNucleusInfo[0].ucManualReferenceAmplitudeValid	 = 	0x1
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
sTXSPEC.aPTXRFPulse.__attribute__.size	 = 	1
sTXSPEC.aPTXRFPulse[0].lPulseType	 = 	1
sTXSPEC.aPTXRFPulse[0].lTrajectoryType	 = 	1
sTXSPEC.aPTXRFPulse[0].lB1ShimType	 = 	1
sTXSPEC.aPTXRFPulse[0].lB0CorrectionType	 = 	1
sTXSPEC.aPTXRFPulse[0].dPulseAcceleration	 = 	1.0
sTXSPEC.B1CorrectionParameters.bValid	 = 	0x1
sTXSPEC.B1CorrectionParameters.bActive	 = 	0x1
sTXSPEC.B1CorrectionParameters.flCorrectionFactorMax	 = 	1.10000002384
sTXSPEC.B1CorrectionParameters.flPeakReserveFactor	 = 	0.10000000149
sRXSPEC.lSeqGain	 = 	1
sRXSPEC.UseDoubleDataRate	 = 	0x0
sRXSPEC.bPilotToneSupportActive	 = 	0x0
sRXSPEC.asNucleusInfo.__attribute__.size	 = 	2
sRXSPEC.asNucleusInfo[0].tNucleus	 = 	"1H"
sRXSPEC.asNucleusInfo[0].lCoilSelectIndex	 = 	-1
sRXSPEC.asNucleusInfo[1].lCoilSelectIndex	 = 	-1
sRXSPEC.alVariCapVoltages.__attribute__.size	 = 	4
sRXSPEC.alDwellTime.__attribute__.size	 = 	256
sRXSPEC.alDwellTime[0]	 = 	1800
sRXSPEC.asLocalShimData.__attribute__.size	 = 	8
sAdjData.uiAdjFreMode	 = 	1
sAdjData.uiAdjTraMode	 = 	1
sAdjData.uiAdjShimMode	 = 	512
sAdjData.uiAdjWatSupMode	 = 	1
sAdjData.uiAdjRFMapMode	 = 	1
sAdjData.uiAdjMDSMode	 = 	1
sAdjData.uiAdjTableTolerance	 = 	2
sAdjData.uiAdjTraWarningOverrideKey	 = 	50840
sAdjData.uiAdjFreProtRelated	 = 	0x1
sAdjData.lCoupleAdjVolTo	 = 	1
sAdjData.uiAdjB0AcqMode	 = 	1
sAdjData.uiAdjB1AcqMode	 = 	1
sAdjData.uiAdjFreqConfirmSpec	 = 	1
sAdjData.uiAdjustmentMode	 = 	1
sAdjData.uiFastViewOptimization	 = 	1
sAdjData.bAdjustWithBreathhold	 = 	0x0
sAdjData.uiLocalShim	 = 	0
sAdjData.uiLRBalancing	 = 	0
sAdjData.sAdjUIOverrides.iAdjUIFieldMapMode	 = 	-1
sAdjData.sAdjUIOverrides.iAdjUITraMode	 = 	-1
alTR.__attribute__.size	 = 	256
alTR[0]	 = 	11970000
alTI.__attribute__.size	 = 	256
alTD.__attribute__.size	 = 	256
alTE.__attribute__.size	 = 	256
alTE[0]	 = 	26000
acFlowComp.__attribute__.size	 = 	256
acFlowComp[0]	 = 	1
sSliceArray.lSize	 = 	58
sSliceArray.lConc	 = 	1
sSliceArray.ucMode	 = 	4
sSliceArray.ucAnatomicalSliceMode	 = 	4
sSliceArray.ucConcatenationsSelectModeResp	 = 	1
sSliceArray.asSlice.__attribute__.size	 = 	256
sSliceArray.asSlice[0].dThickness	 = 	1.1
sSliceArray.asSlice[0].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[0].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[0].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[0].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[0].sPosition.dTra	 = 	-72.6015936207
sSliceArray.asSlice[0].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[1].dThickness	 = 	1.1
sSliceArray.asSlice[1].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[1].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[1].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[1].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[1].sPosition.dTra	 = 	-70.4015936207
sSliceArray.asSlice[1].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[2].dThickness	 = 	1.1
sSliceArray.asSlice[2].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[2].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[2].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[2].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[2].sPosition.dTra	 = 	-68.2015936207
sSliceArray.asSlice[2].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[3].dThickness	 = 	1.1
sSliceArray.asSlice[3].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[3].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[3].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[3].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[3].sPosition.dTra	 = 	-66.0015936207
sSliceArray.asSlice[3].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[4].dThickness	 = 	1.1
sSliceArray.asSlice[4].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[4].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[4].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[4].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[4].sPosition.dTra	 = 	-63.8015936207
sSliceArray.asSlice[4].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[5].dThickness	 = 	1.1
sSliceArray.asSlice[5].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[5].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[5].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[5].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[5].sPosition.dTra	 = 	-61.6015936207
sSliceArray.asSlice[5].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[6].dThickness	 = 	1.1
sSliceArray.asSlice[6].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[6].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[6].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[6].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[6].sPosition.dTra	 = 	-59.4015936207
sSliceArray.asSlice[6].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[7].dThickness	 = 	1.1
sSliceArray.asSlice[7].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[7].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[7].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[7].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[7].sPosition.dTra	 = 	-57.2015936207
sSliceArray.asSlice[7].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[8].dThickness	 = 	1.1
sSliceArray.asSlice[8].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[8].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[8].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[8].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[8].sPosition.dTra	 = 	-55.0015936207
sSliceArray.asSlice[8].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[9].dThickness	 = 	1.1
sSliceArray.asSlice[9].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[9].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[9].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[9].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[9].sPosition.dTra	 = 	-52.8015936207
sSliceArray.asSlice[9].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[10].dThickness	 = 	1.1
sSliceArray.asSlice[10].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[10].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[10].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[10].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[10].sPosition.dTra	 = 	-50.6015936207
sSliceArray.asSlice[10].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[11].dThickness	 = 	1.1
sSliceArray.asSlice[11].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[11].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[11].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[11].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[11].sPosition.dTra	 = 	-48.4015936207
sSliceArray.asSlice[11].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[12].dThickness	 = 	1.1
sSliceArray.asSlice[12].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[12].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[12].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[12].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[12].sPosition.dTra	 = 	-46.2015936207
sSliceArray.asSlice[12].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[13].dThickness	 = 	1.1
sSliceArray.asSlice[13].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[13].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[13].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[13].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[13].sPosition.dTra	 = 	-44.0015936207
sSliceArray.asSlice[13].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[14].dThickness	 = 	1.1
sSliceArray.asSlice[14].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[14].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[14].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[14].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[14].sPosition.dTra	 = 	-41.8015936207
sSliceArray.asSlice[14].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[15].dThickness	 = 	1.1
sSliceArray.asSlice[15].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[15].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[15].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[15].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[15].sPosition.dTra	 = 	-39.6015936207
sSliceArray.asSlice[15].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[16].dThickness	 = 	1.1
sSliceArray.asSlice[16].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[16].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[16].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[16].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[16].sPosition.dTra	 = 	-37.4015936207
sSliceArray.asSlice[16].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[17].dThickness	 = 	1.1
sSliceArray.asSlice[17].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[17].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[17].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[17].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[17].sPosition.dTra	 = 	-35.2015936207
sSliceArray.asSlice[17].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[18].dThickness	 = 	1.1
sSliceArray.asSlice[18].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[18].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[18].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[18].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[18].sPosition.dTra	 = 	-33.0015936207
sSliceArray.asSlice[18].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[19].dThickness	 = 	1.1
sSliceArray.asSlice[19].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[19].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[19].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[19].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[19].sPosition.dTra	 = 	-30.8015936207
sSliceArray.asSlice[19].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[20].dThickness	 = 	1.1
sSliceArray.asSlice[20].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[20].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[20].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[20].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[20].sPosition.dTra	 = 	-28.6015936207
sSliceArray.asSlice[20].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[21].dThickness	 = 	1.1
sSliceArray.asSlice[21].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[21].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[21].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[21].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[21].sPosition.dTra	 = 	-26.4015936207
sSliceArray.asSlice[21].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[22].dThickness	 = 	1.1
sSliceArray.asSlice[22].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[22].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[22].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[22].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[22].sPosition.dTra	 = 	-24.2015936207
sSliceArray.asSlice[22].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[23].dThickness	 = 	1.1
sSliceArray.asSlice[23].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[23].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[23].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[23].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[23].sPosition.dTra	 = 	-22.0015936207
sSliceArray.asSlice[23].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[24].dThickness	 = 	1.1
sSliceArray.asSlice[24].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[24].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[24].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[24].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[24].sPosition.dTra	 = 	-19.8015936207
sSliceArray.asSlice[24].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[25].dThickness	 = 	1.1
sSliceArray.asSlice[25].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[25].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[25].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[25].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[25].sPosition.dTra	 = 	-17.6015936207
sSliceArray.asSlice[25].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[26].dThickness	 = 	1.1
sSliceArray.asSlice[26].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[26].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[26].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[26].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[26].sPosition.dTra	 = 	-15.4015936207
sSliceArray.asSlice[26].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[27].dThickness	 = 	1.1
sSliceArray.asSlice[27].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[27].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[27].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[27].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[27].sPosition.dTra	 = 	-13.2015936207
sSliceArray.asSlice[27].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[28].dThickness	 = 	1.1
sSliceArray.asSlice[28].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[28].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[28].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[28].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[28].sPosition.dTra	 = 	-11.0015936207
sSliceArray.asSlice[28].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[29].dThickness	 = 	1.1
sSliceArray.asSlice[29].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[29].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[29].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[29].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[29].sPosition.dTra	 = 	-8.8015936207
sSliceArray.asSlice[29].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[30].dThickness	 = 	1.1
sSliceArray.asSlice[30].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[30].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[30].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[30].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[30].sPosition.dTra	 = 	-6.6015936207
sSliceArray.asSlice[30].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[31].dThickness	 = 	1.1
sSliceArray.asSlice[31].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[31].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[31].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[31].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[31].sPosition.dTra	 = 	-4.4015936207
sSliceArray.asSlice[31].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[32].dThickness	 = 	1.1
sSliceArray.asSlice[32].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[32].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[32].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[32].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[32].sPosition.dTra	 = 	-2.2015936207
sSliceArray.asSlice[32].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[33].dThickness	 = 	1.1
sSliceArray.asSlice[33].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[33].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[33].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[33].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[33].sPosition.dTra	 = 	-0.0015936207
sSliceArray.asSlice[33].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[34].dThickness	 = 	1.1
sSliceArray.asSlice[34].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[34].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[34].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[34].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[34].sPosition.dTra	 = 	2.1984063793
sSliceArray.asSlice[34].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[35].dThickness	 = 	1.1
sSliceArray.asSlice[35].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[35].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[35].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[35].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[35].sPosition.dTra	 = 	4.3984063793
sSliceArray.asSlice[35].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[36].dThickness	 = 	1.1
sSliceArray.asSlice[36].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[36].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[36].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[36].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[36].sPosition.dTra	 = 	6.5984063793
sSliceArray.asSlice[36].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[37].dThickness	 = 	1.1
sSliceArray.asSlice[37].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[37].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[37].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[37].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[37].sPosition.dTra	 = 	8.7984063793
sSliceArray.asSlice[37].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[38].dThickness	 = 	1.1
sSliceArray.asSlice[38].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[38].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[38].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[38].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[38].sPosition.dTra	 = 	10.9984063793
sSliceArray.asSlice[38].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[39].dThickness	 = 	1.1
sSliceArray.asSlice[39].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[39].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[39].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[39].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[39].sPosition.dTra	 = 	13.1984063793
sSliceArray.asSlice[39].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[40].dThickness	 = 	1.1
sSliceArray.asSlice[40].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[40].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[40].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[40].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[40].sPosition.dTra	 = 	15.3984063793
sSliceArray.asSlice[40].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[41].dThickness	 = 	1.1
sSliceArray.asSlice[41].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[41].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[41].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[41].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[41].sPosition.dTra	 = 	17.5984063793
sSliceArray.asSlice[41].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[42].dThickness	 = 	1.1
sSliceArray.asSlice[42].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[42].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[42].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[42].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[42].sPosition.dTra	 = 	19.7984063793
sSliceArray.asSlice[42].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[43].dThickness	 = 	1.1
sSliceArray.asSlice[43].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[43].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[43].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[43].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[43].sPosition.dTra	 = 	21.9984063793
sSliceArray.asSlice[43].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[44].dThickness	 = 	1.1
sSliceArray.asSlice[44].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[44].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[44].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[44].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[44].sPosition.dTra	 = 	24.1984063793
sSliceArray.asSlice[44].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[45].dThickness	 = 	1.1
sSliceArray.asSlice[45].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[45].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[45].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[45].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[45].sPosition.dTra	 = 	26.3984063793
sSliceArray.asSlice[45].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[46].dThickness	 = 	1.1
sSliceArray.asSlice[46].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[46].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[46].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[46].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[46].sPosition.dTra	 = 	28.5984063793
sSliceArray.asSlice[46].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[47].dThickness	 = 	1.1
sSliceArray.asSlice[47].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[47].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[47].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[47].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[47].sPosition.dTra	 = 	30.7984063793
sSliceArray.asSlice[47].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[48].dThickness	 = 	1.1
sSliceArray.asSlice[48].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[48].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[48].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[48].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[48].sPosition.dTra	 = 	32.9984063793
sSliceArray.asSlice[48].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[49].dThickness	 = 	1.1
sSliceArray.asSlice[49].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[49].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[49].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[49].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[49].sPosition.dTra	 = 	35.1984063793
sSliceArray.asSlice[49].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[50].dThickness	 = 	1.1
sSliceArray.asSlice[50].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[50].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[50].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[50].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[50].sPosition.dTra	 = 	37.3984063793
sSliceArray.asSlice[50].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[51].dThickness	 = 	1.1
sSliceArray.asSlice[51].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[51].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[51].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[51].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[51].sPosition.dTra	 = 	39.5984063793
sSliceArray.asSlice[51].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[52].dThickness	 = 	1.1
sSliceArray.asSlice[52].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[52].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[52].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[52].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[52].sPosition.dTra	 = 	41.7984063793
sSliceArray.asSlice[52].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[53].dThickness	 = 	1.1
sSliceArray.asSlice[53].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[53].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[53].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[53].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[53].sPosition.dTra	 = 	43.9984063793
sSliceArray.asSlice[53].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[54].dThickness	 = 	1.1
sSliceArray.asSlice[54].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[54].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[54].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[54].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[54].sPosition.dTra	 = 	46.1984063793
sSliceArray.asSlice[54].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[55].dThickness	 = 	1.1
sSliceArray.asSlice[55].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[55].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[55].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[55].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[55].sPosition.dTra	 = 	48.3984063793
sSliceArray.asSlice[55].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[56].dThickness	 = 	1.1
sSliceArray.asSlice[56].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[56].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[56].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[56].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[56].sPosition.dTra	 = 	50.5984063793
sSliceArray.asSlice[56].sNormal.dTra	 = 	1.0
sSliceArray.asSlice[57].dThickness	 = 	1.1
sSliceArray.asSlice[57].dPhaseFOV	 = 	192.0
sSliceArray.asSlice[57].dReadoutFOV	 = 	192.0
sSliceArray.asSlice[57].sPosition.dSag	 = 	-5.58436299425e-08
sSliceArray.asSlice[57].sPosition.dCor	 = 	-8.73518926526
sSliceArray.asSlice[57].sPosition.dTra	 = 	52.7984063793
sSliceArray.asSlice[57].sNormal.dTra	 = 	1.0
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
sSliceArray.alSliceAcqOrder[44]	 = 	44
sSliceArray.alSliceAcqOrder[45]	 = 	45
sSliceArray.alSliceAcqOrder[46]	 = 	46
sSliceArray.alSliceAcqOrder[47]	 = 	47
sSliceArray.alSliceAcqOrder[48]	 = 	48
sSliceArray.alSliceAcqOrder[49]	 = 	49
sSliceArray.alSliceAcqOrder[50]	 = 	50
sSliceArray.alSliceAcqOrder[51]	 = 	51
sSliceArray.alSliceAcqOrder[52]	 = 	52
sSliceArray.alSliceAcqOrder[53]	 = 	53
sSliceArray.alSliceAcqOrder[54]	 = 	54
sSliceArray.alSliceAcqOrder[55]	 = 	55
sSliceArray.alSliceAcqOrder[56]	 = 	56
sSliceArray.alSliceAcqOrder[57]	 = 	57
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
sSliceArray.anAsc[44]	 = 	44
sSliceArray.anAsc[45]	 = 	45
sSliceArray.anAsc[46]	 = 	46
sSliceArray.anAsc[47]	 = 	47
sSliceArray.anAsc[48]	 = 	48
sSliceArray.anAsc[49]	 = 	49
sSliceArray.anAsc[50]	 = 	50
sSliceArray.anAsc[51]	 = 	51
sSliceArray.anAsc[52]	 = 	52
sSliceArray.anAsc[53]	 = 	53
sSliceArray.anAsc[54]	 = 	54
sSliceArray.anAsc[55]	 = 	55
sSliceArray.anAsc[56]	 = 	56
sSliceArray.anAsc[57]	 = 	57
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
sSliceArray.anPos[44]	 = 	44
sSliceArray.anPos[45]	 = 	45
sSliceArray.anPos[46]	 = 	46
sSliceArray.anPos[47]	 = 	47
sSliceArray.anPos[48]	 = 	48
sSliceArray.anPos[49]	 = 	49
sSliceArray.anPos[50]	 = 	50
sSliceArray.anPos[51]	 = 	51
sSliceArray.anPos[52]	 = 	52
sSliceArray.anPos[53]	 = 	53
sSliceArray.anPos[54]	 = 	54
sSliceArray.anPos[55]	 = 	55
sSliceArray.anPos[56]	 = 	56
sSliceArray.anPos[57]	 = 	57
sSliceArray.sTSat.dThickness	 = 	50.0
sSliceArray.sTSat.ulShape	 = 	1
sGroupArray.lSize	 = 	1
sGroupArray.asGroup.__attribute__.size	 = 	256
sGroupArray.asGroup[0].nSize	 = 	58
sGroupArray.asGroup[0].dDistFact	 = 	1.0
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
sGroupArray.anMember[44]	 = 	44
sGroupArray.anMember[45]	 = 	45
sGroupArray.anMember[46]	 = 	46
sGroupArray.anMember[47]	 = 	47
sGroupArray.anMember[48]	 = 	48
sGroupArray.anMember[49]	 = 	49
sGroupArray.anMember[50]	 = 	50
sGroupArray.anMember[51]	 = 	51
sGroupArray.anMember[52]	 = 	52
sGroupArray.anMember[53]	 = 	53
sGroupArray.anMember[54]	 = 	54
sGroupArray.anMember[55]	 = 	55
sGroupArray.anMember[56]	 = 	56
sGroupArray.anMember[57]	 = 	57
sGroupArray.anMember[58]	 = 	-1
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
sPrepPulses.lFatWaterContrast	 = 	4
sPrepPulses.adT2PrepDuration.__attribute__.size	 = 	1
sPrepPulses.adT2PrepDuration[0]	 = 	40.0
sKSpace.dPhaseResolution	 = 	1.0
sKSpace.dSliceResolution	 = 	1.0
sKSpace.dAngioDynCentralRegionA	 = 	20.0
sKSpace.dAngioDynSamplingDensityB	 = 	25.0
sKSpace.dSeqPhasePartialFourierForSNR	 = 	1.0
sKSpace.lBaseResolution	 = 	174
sKSpace.lPhaseEncodingLines	 = 	174
sKSpace.lPartitions	 = 	64
sKSpace.lImagesPerSlab	 = 	64
sKSpace.lRadialViews	 = 	64
sKSpace.lRadialInterleavesPerImage	 = 	1
sKSpace.lLinesPerShot	 = 	1
sKSpace.unReordering	 = 	1
sKSpace.ucPhasePartialFourier	 = 	16
sKSpace.ucSlicePartialFourier	 = 	16
sKSpace.ucAveragingMode	 = 	2
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
sKSpace.lTrajectoryOptimization	 = 	0
sKSpace.DistributionAsymmetry	 = 	0
sKSpace.SpiralInterleaves	 = 	1
sKSpace.PhaseEncOrder	 = 	0
sFastImaging.lEPIFactor	 = 	128
sFastImaging.lTurboFactor	 = 	1
sFastImaging.lSliceTurboFactor	 = 	1
sFastImaging.lSegments	 = 	1
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
sPat.lAccelFactPE	 = 	4
sPat.lAccelFact3D	 = 	1
sPat.lRefLinesPE	 = 	128
sPat.ucPATMode	 = 	32
sPat.ucRefScanMode	 = 	256
sPat.ucTPatAverageAllFrames	 = 	0x1
sPat.ulCaipirinhaMode	 = 	1
sPat.lAccelFactPeriph	 = 	16
sPat.lAccelFactCenter	 = 	3
sPat.dTotalAccelFact	 = 	2.0
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
sAAInitialOffset.SliceInformation.sPosition.dSag	 = 	-5.58436299425e-08
sAAInitialOffset.SliceInformation.sPosition.dCor	 = 	-8.73518926526
sAAInitialOffset.SliceInformation.sPosition.dTra	 = 	-9.9015936207
sAAInitialOffset.SliceInformation.sNormal.dTra	 = 	1.0
alRepetitionsDelayTimeMs.__attribute__.size	 = 	64
adFlipAngleDegree.__attribute__.size	 = 	32
adFlipAngleDegree[0]	 = 	50.0
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
sSliceAcceleration.lMultiBandFactor	 = 	2
sSliceAcceleration.lFOVShiftFactor	 = 	2
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
