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
        <ParamString."ProtocolName">  { "Initialized by sequence"  }
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
        <ParamBool."indices">  { "false" "true" "true" "true"  }
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
tSequenceFileName	 = 	"C:\MIDEA\NXVA60A_336701\x64_r\bin\rslh_ep3d_vaso"
tProtocolName	 = 	"Initialized by sequence"
tdefaultEVAProt	 = 	"%SiemensEvaDefProt%\Inline\Inline.evp"
lScanRegionPosTra	 = 	0.0
ucScanRegionPosValid	 = 	0x1
lPtabAbsStartPosZ	 = 	0
bPtabAbsStartPosZValid	 = 	0x0
ucEnableNoiseAdjust	 = 	1
lContrasts	 = 	1
lCombinedEchoes	 = 	1
ucEnableIntro	 = 	0x1
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
lRepetitions	 = 	3
lScanTimeSec	 = 	1
lTotalScanTimeSec	 = 	5
dRefSNR	 = 	12456.8967531
dRefSNR_VOI	 = 	12456.8967531
ulMotionCorr	 = 	1
ucCineMode	 = 	1
ucCoilCombineMode	 = 	2
ucFlipAngleMode	 = 	1
lTOM	 = 	1
lProtID	 = 	4
lSequenceID	 = 	4
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
dOverallImageScaleFactor	 = 	0.0928798185941
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
sProtConsistencyInfo.ulConvFromVersion	 = 	66010002
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
sTXSPEC.lNoOfTraPulses	 = 	3
sTXSPEC.lBCExcitationMode	 = 	1
sTXSPEC.lBCSeqExcitationMode	 = 	4
sTXSPEC.ucRFPulseType	 = 	2
sTXSPEC.ucExcitMode	 = 	1
sTXSPEC.ucSimultaneousExcitation	 = 	1
sTXSPEC.lB1ShimMode	 = 	1
sTXSPEC.tB1ShimPPDconfigFile	 = 	"PPDconfig_B1shim_renzo"
sTXSPEC.asNucleusInfo.__attribute__.size	 = 	2
sTXSPEC.asNucleusInfo[0].tNucleus	 = 	"1H"
sTXSPEC.asNucleusInfo[0].lCoilSelectIndex	 = 	0
sTXSPEC.asNucleusInfo[0].lFrequency	 = 	297180000
sTXSPEC.asNucleusInfo[0].flReferenceAmplitude	 = 	223.0
sTXSPEC.asNucleusInfo[0].flCompProtectionRefAmpl	 = 	223.0
sTXSPEC.asNucleusInfo[0].flAmplitudeCorrection	 = 	1.0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.MaxOfflineTxAmpl	 = 	198676240.0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.WorstCasePulseScaleRefAmpl	 = 	223.0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.WorstCaseMaxOfflineTxAmpl	 = 	198676240.0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.MaxOnlineTxAmpl.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.MaxOnlineTxAmpl[0]	 = 	218.543869019
sTXSPEC.asNucleusInfo[0].CompProtectionValues.MaxOnlineTxAmpl[1]	 = 	218.543869019
sTXSPEC.asNucleusInfo[0].CompProtectionValues.MaxOnlineTxAmpl[2]	 = 	218.543869019
sTXSPEC.asNucleusInfo[0].CompProtectionValues.MaxOnlineTxAmpl[3]	 = 	218.543869019
sTXSPEC.asNucleusInfo[0].CompProtectionValues.MaxOnlineTxAmpl[4]	 = 	218.543869019
sTXSPEC.asNucleusInfo[0].CompProtectionValues.MaxOnlineTxAmpl[5]	 = 	218.543869019
sTXSPEC.asNucleusInfo[0].CompProtectionValues.MaxOnlineTxAmpl[6]	 = 	218.543869019
sTXSPEC.asNucleusInfo[0].CompProtectionValues.MaxOnlineTxAmpl[7]	 = 	218.543869019
sTXSPEC.asNucleusInfo[0].CompProtectionValues.WorstCaseMaxOnlineTxAmpl.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.WorstCaseMaxOnlineTxAmpl[0]	 = 	218.543869019
sTXSPEC.asNucleusInfo[0].CompProtectionValues.WorstCaseMaxOnlineTxAmpl[1]	 = 	218.543869019
sTXSPEC.asNucleusInfo[0].CompProtectionValues.WorstCaseMaxOnlineTxAmpl[2]	 = 	218.543869019
sTXSPEC.asNucleusInfo[0].CompProtectionValues.WorstCaseMaxOnlineTxAmpl[3]	 = 	218.543869019
sTXSPEC.asNucleusInfo[0].CompProtectionValues.WorstCaseMaxOnlineTxAmpl[4]	 = 	218.543869019
sTXSPEC.asNucleusInfo[0].CompProtectionValues.WorstCaseMaxOnlineTxAmpl[5]	 = 	218.543869019
sTXSPEC.asNucleusInfo[0].CompProtectionValues.WorstCaseMaxOnlineTxAmpl[6]	 = 	218.543869019
sTXSPEC.asNucleusInfo[0].CompProtectionValues.WorstCaseMaxOnlineTxAmpl[7]	 = 	218.543869019
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationAvg.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationAvg[0]	 = 	1.10000002384
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationAvg[1]	 = 	1.10000002384
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationAvg[2]	 = 	1.10000002384
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationAvg[3]	 = 	1.10000002384
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationAvg[4]	 = 	1.10000002384
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationAvg[5]	 = 	1.10000002384
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationAvg[6]	 = 	1.10000002384
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationAvg[7]	 = 	1.10000002384
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationPeak.__attribute__.size	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationPeak[0]	 = 	1.10000002384
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationPeak[1]	 = 	1.10000002384
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationPeak[2]	 = 	1.10000002384
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationPeak[3]	 = 	1.10000002384
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationPeak[4]	 = 	1.10000002384
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationPeak[5]	 = 	1.10000002384
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationPeak[6]	 = 	1.10000002384
sTXSPEC.asNucleusInfo[0].CompProtectionValues.adGainVariationPeak[7]	 = 	1.10000002384
sTXSPEC.asNucleusInfo[0].CompProtectionValues.DecouplingMatrix.Size1	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.DecouplingMatrix.Size2	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.DecouplingMatrix.ComplexData.__attribute__.size	 = 	64
sTXSPEC.asNucleusInfo[0].CompProtectionValues.DecouplingMatrix.ComplexData[0].dRe	 = 	1.0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.DecouplingMatrix.ComplexData[9].dRe	 = 	1.0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.DecouplingMatrix.ComplexData[18].dRe	 = 	1.0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.DecouplingMatrix.ComplexData[27].dRe	 = 	1.0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.DecouplingMatrix.ComplexData[36].dRe	 = 	1.0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.DecouplingMatrix.ComplexData[45].dRe	 = 	1.0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.DecouplingMatrix.ComplexData[54].dRe	 = 	1.0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.DecouplingMatrix.ComplexData[63].dRe	 = 	1.0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ZZMatrixVector.__attribute__.size	 = 	0
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ScatterMatrix.Size1	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ScatterMatrix.Size2	 = 	8
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ScatterMatrix.ComplexData.__attribute__.size	 = 	64
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ScatterMatrix.ComplexData[0].dRe	 = 	0.0500000007451
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ScatterMatrix.ComplexData[9].dRe	 = 	0.0500000007451
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ScatterMatrix.ComplexData[18].dRe	 = 	0.0500000007451
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ScatterMatrix.ComplexData[27].dRe	 = 	0.0500000007451
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ScatterMatrix.ComplexData[36].dRe	 = 	0.0500000007451
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ScatterMatrix.ComplexData[45].dRe	 = 	0.0500000007451
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ScatterMatrix.ComplexData[54].dRe	 = 	0.0500000007451
sTXSPEC.asNucleusInfo[0].CompProtectionValues.ScatterMatrix.ComplexData[63].dRe	 = 	0.0500000007451
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
sTXSPEC.aRFPULSE[0].tName	 = 	"SBB_FSCSatNS"
sTXSPEC.aRFPULSE[1].tName	 = 	"SBBexS01"
sTXSPEC.aRFPULSE[2].tName	 = 	"PATRefS00"
sTXSPEC.aTxScaleFactor.__attribute__.size	 = 	17
sTXSPEC.aTxScaleFactor[0].dRe	 = 	1.0
sTXSPEC.aTxScaleFactor[1].dRe	 = 	1.0
sTXSPEC.aTxScaleFactor[2].dRe	 = 	1.0
sTXSPEC.aTxScaleFactor[3].dRe	 = 	1.0
sTXSPEC.aTxScaleFactor[4].dRe	 = 	1.0
sTXSPEC.aTxScaleFactor[5].dRe	 = 	1.0
sTXSPEC.aTxScaleFactor[6].dRe	 = 	1.0
sTXSPEC.aTxScaleFactor[7].dRe	 = 	1.0
sTXSPEC.aTxScaleFactor[8].dRe	 = 	1.0
sTXSPEC.aTxScaleFactor[9].dRe	 = 	1.0
sTXSPEC.aTxScaleFactor[10].dRe	 = 	1.0
sTXSPEC.aTxScaleFactor[11].dRe	 = 	1.0
sTXSPEC.aTxScaleFactor[12].dRe	 = 	1.0
sTXSPEC.aTxScaleFactor[13].dRe	 = 	1.0
sTXSPEC.aTxScaleFactor[14].dRe	 = 	1.0
sTXSPEC.aTxScaleFactor[15].dRe	 = 	1.0
sTXSPEC.aTxScaleFactor[16].dRe	 = 	1.0
sTXSPEC.aPTXRFPulse.__attribute__.size	 = 	0
sTXSPEC.B1CorrectionParameters.bValid	 = 	0x0
sTXSPEC.B1CorrectionParameters.bActive	 = 	0x0
sTXSPEC.B1CorrectionParameters.flCorrectionFactorMax	 = 	1.0
sTXSPEC.B1CorrectionParameters.flPeakReserveFactor	 = 	0.0
sRXSPEC.lSeqGain	 = 	1
sRXSPEC.lGain	 = 	1
sRXSPEC.UseDoubleDataRate	 = 	0x0
sRXSPEC.bPilotToneSupportActive	 = 	0x0
sRXSPEC.asNucleusInfo.__attribute__.size	 = 	2
sRXSPEC.asNucleusInfo[0].tNucleus	 = 	"1H"
sRXSPEC.asNucleusInfo[0].lCoilSelectIndex	 = 	0
sRXSPEC.asNucleusInfo[1].lCoilSelectIndex	 = 	-1
sRXSPEC.alVariCapVoltages.__attribute__.size	 = 	4
sRXSPEC.alDwellTime.__attribute__.size	 = 	256
sRXSPEC.alDwellTime[0]	 = 	1500
sRXSPEC.alDwellTime[1]	 = 	5700
sRXSPEC.alDwellTime[2]	 = 	5700
sRXSPEC.alDwellTime[3]	 = 	5700
sRXSPEC.alDwellTime[4]	 = 	5700
sRXSPEC.alDwellTime[5]	 = 	5700
sRXSPEC.alDwellTime[6]	 = 	5700
sRXSPEC.alDwellTime[7]	 = 	5700
sRXSPEC.alDwellTime[8]	 = 	5700
sRXSPEC.asLocalShimData.__attribute__.size	 = 	8
sAdjData.uiAdjFreMode	 = 	1
sAdjData.uiAdjTraMode	 = 	1
sAdjData.uiAdjShimMode	 = 	512
sAdjData.uiAdjWatSupMode	 = 	1
sAdjData.uiAdjRFMapMode	 = 	1
sAdjData.uiAdjMDSMode	 = 	1
sAdjData.uiAdjTableTolerance	 = 	2
sAdjData.uiAdjFreProtRelated	 = 	0x1
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
alTR.__attribute__.size	 = 	256
alTR[0]	 = 	40000
alTR[1]	 = 	640000
alTI.__attribute__.size	 = 	256
alTI[0]	 = 	160000
alTI[1]	 = 	480000
alTD.__attribute__.size	 = 	256
alTD[0]	 = 	32900
alTE.__attribute__.size	 = 	256
alTE[0]	 = 	12900
alTE[1]	 = 	48000
alTE[2]	 = 	48000
alTE[3]	 = 	48000
alTE[4]	 = 	48000
alTE[5]	 = 	48000
alTE[6]	 = 	48000
alTE[7]	 = 	48000
alTE[8]	 = 	48000
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
sSliceArray.lSize	 = 	1
sSliceArray.lConc	 = 	1
sSliceArray.ucMode	 = 	1
sSliceArray.ucAnatomicalSliceMode	 = 	1
sSliceArray.ucConcatenationsSelectModeResp	 = 	1
sSliceArray.asSlice.__attribute__.size	 = 	256
sSliceArray.asSlice[0].dThickness	 = 	16.0
sSliceArray.asSlice[0].dPhaseFOV	 = 	210.0
sSliceArray.asSlice[0].dReadoutFOV	 = 	210.0
sSliceArray.asSlice[0].sPosition.dCor	 = 	-20.0
sSliceArray.asSlice[0].sNormal.dTra	 = 	1.0
sSliceArray.alSliceAcqOrder.__attribute__.size	 = 	256
sSliceArray.anAsc.__attribute__.size	 = 	256
sSliceArray.anPos.__attribute__.size	 = 	256
sSliceArray.sTSat.dThickness	 = 	50.0
sSliceArray.sTSat.ulShape	 = 	1
sGroupArray.lSize	 = 	1
sGroupArray.asGroup.__attribute__.size	 = 	256
sGroupArray.asGroup[0].nSize	 = 	1
sGroupArray.asGroup[0].dDistFact	 = 	0.4
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
sPrepPulses.lFatWaterContrast	 = 	8
sPrepPulses.adT2PrepDuration.__attribute__.size	 = 	1
sPrepPulses.adT2PrepDuration[0]	 = 	40.0
sKSpace.dPhaseResolution	 = 	1.0
sKSpace.dSliceResolution	 = 	1.0
sKSpace.dAngioDynCentralRegionA	 = 	20.0
sKSpace.dAngioDynSamplingDensityB	 = 	25.0
sKSpace.dSeqPhasePartialFourierForSNR	 = 	0.757281553398
sKSpace.lBaseResolution	 = 	206
sKSpace.lPhaseEncodingLines	 = 	206
sKSpace.lPartitions	 = 	8
sKSpace.lImagesPerSlab	 = 	8
sKSpace.lRadialViews	 = 	64
sKSpace.lRadialInterleavesPerImage	 = 	1
sKSpace.lLinesPerShot	 = 	1
sKSpace.unReordering	 = 	1
sKSpace.ucPhasePartialFourier	 = 	4
sKSpace.ucSlicePartialFourier	 = 	16
sKSpace.ucAveragingMode	 = 	2
sKSpace.ucMultiSliceMode	 = 	2
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
sFastImaging.lEPIFactor	 = 	39
sFastImaging.lTurboFactor	 = 	8
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
sSpecPara.ucRemoveOversampling	 = 	0x0
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
sPat.lRefLinesPE	 = 	24
sPat.lRefLines3D	 = 	6
sPat.ucPATMode	 = 	16
sPat.ucRefScanMode	 = 	4
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
alRepetitionsDelayTimeMs.__attribute__.size	 = 	64
adFlipAngleDegree.__attribute__.size	 = 	32
adFlipAngleDegree[0]	 = 	18.0
aulServicePara.__attribute__.size	 = 	5
aulServicePara[0]	 = 	1000593162
aulServicePara[1]	 = 	176
aulServicePara[2]	 = 	2
uiPerProxy2Skip.__attribute__.size	 = 	2
sCoilSelectMeas.sCoilStringForConversion	 = 	"AC"
sCoilSelectMeas.sCoilContext	 = 	"Poet_2026-06-02_162523_1719976730"
sCoilSelectMeas.aRxCoilSelectData.__attribute__.size	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].tNucleus	 = 	"1H"
sCoilSelectMeas.aRxCoilSelectData[0].iUsedRFactor	 = 	3
sCoilSelectMeas.aRxCoilSelectData[0].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[0].tCheckUUID	 = 	"a5f2603c222bda7b06358098f95f7e65c1195164"
sCoilSelectMeas.aRxCoilSelectData[0].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[0].asList.__attribute__.size	 = 	32
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].lMuxChannelConnected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].lRxChannelConnected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].lADCChannelConnected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilElementID.tElement	 = 	"A01"
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilElementID.ulUniqueKey	 = 	-1942892023
sCoilSelectMeas.aRxCoilSelectData[0].asList[0].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].lMuxChannelConnected	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].lRxChannelConnected	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].lADCChannelConnected	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilElementID.tElement	 = 	"A02"
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilElementID.ulUniqueKey	 = 	-879646503
sCoilSelectMeas.aRxCoilSelectData[0].asList[1].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].lMuxChannelConnected	 = 	3
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].lRxChannelConnected	 = 	3
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].lADCChannelConnected	 = 	3
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilElementID.tElement	 = 	"A03"
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilElementID.ulUniqueKey	 = 	-151944855
sCoilSelectMeas.aRxCoilSelectData[0].asList[2].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].lMuxChannelConnected	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].lRxChannelConnected	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].lADCChannelConnected	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilElementID.tElement	 = 	"A04"
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilElementID.ulUniqueKey	 = 	1154571641
sCoilSelectMeas.aRxCoilSelectData[0].asList[3].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].lMuxChannelConnected	 = 	5
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].lRxChannelConnected	 = 	5
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].lADCChannelConnected	 = 	5
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilElementID.tElement	 = 	"A05"
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilElementID.ulUniqueKey	 = 	2041672905
sCoilSelectMeas.aRxCoilSelectData[0].asList[4].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].lMuxChannelConnected	 = 	6
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].lRxChannelConnected	 = 	6
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].lADCChannelConnected	 = 	6
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilElementID.tElement	 = 	"A06"
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilElementID.ulUniqueKey	 = 	1041305113
sCoilSelectMeas.aRxCoilSelectData[0].asList[5].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].lMuxChannelConnected	 = 	7
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].lRxChannelConnected	 = 	7
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].lADCChannelConnected	 = 	7
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilElementID.tElement	 = 	"A07"
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilElementID.ulUniqueKey	 = 	57747369
sCoilSelectMeas.aRxCoilSelectData[0].asList[6].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].lMuxChannelConnected	 = 	8
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].lRxChannelConnected	 = 	8
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].lADCChannelConnected	 = 	8
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilElementID.tElement	 = 	"A08"
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilElementID.ulUniqueKey	 = 	-2128498568
sCoilSelectMeas.aRxCoilSelectData[0].asList[7].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].lMuxChannelConnected	 = 	9
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].lRxChannelConnected	 = 	9
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].lADCChannelConnected	 = 	9
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilElementID.tElement	 = 	"A09"
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilElementID.ulUniqueKey	 = 	-1136551480
sCoilSelectMeas.aRxCoilSelectData[0].asList[8].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].lMuxChannelConnected	 = 	10
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].lRxChannelConnected	 = 	10
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].lADCChannelConnected	 = 	10
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilElementID.tElement	 = 	"A10"
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilElementID.ulUniqueKey	 = 	2047682588
sCoilSelectMeas.aRxCoilSelectData[0].asList[9].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].lMuxChannelConnected	 = 	11
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].lRxChannelConnected	 = 	11
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].lADCChannelConnected	 = 	11
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilElementID.tElement	 = 	"A11"
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilElementID.ulUniqueKey	 = 	1198326188
sCoilSelectMeas.aRxCoilSelectData[0].asList[10].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].lMuxChannelConnected	 = 	12
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].lRxChannelConnected	 = 	12
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].lADCChannelConnected	 = 	12
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilElementID.tElement	 = 	"A12"
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilElementID.ulUniqueKey	 = 	13466492
sCoilSelectMeas.aRxCoilSelectData[0].asList[11].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].lMuxChannelConnected	 = 	13
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].lRxChannelConnected	 = 	13
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].lADCChannelConnected	 = 	13
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilElementID.tElement	 = 	"A13"
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilElementID.ulUniqueKey	 = 	1034769100
sCoilSelectMeas.aRxCoilSelectData[0].asList[12].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].lMuxChannelConnected	 = 	14
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].lRxChannelConnected	 = 	14
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].lADCChannelConnected	 = 	14
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilElementID.tElement	 = 	"A14"
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilElementID.ulUniqueKey	 = 	-1886548260
sCoilSelectMeas.aRxCoilSelectData[0].asList[13].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].lMuxChannelConnected	 = 	15
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].lRxChannelConnected	 = 	15
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].lADCChannelConnected	 = 	15
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilElementID.tElement	 = 	"A15"
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilElementID.ulUniqueKey	 = 	-1293047956
sCoilSelectMeas.aRxCoilSelectData[0].asList[14].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].lMuxChannelConnected	 = 	16
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].lRxChannelConnected	 = 	16
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].lADCChannelConnected	 = 	16
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilElementID.tElement	 = 	"A16"
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilElementID.ulUniqueKey	 = 	-179446340
sCoilSelectMeas.aRxCoilSelectData[0].asList[15].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].lMuxChannelConnected	 = 	17
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].lRxChannelConnected	 = 	17
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].lADCChannelConnected	 = 	17
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilElementID.tElement	 = 	"A17"
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilElementID.ulUniqueKey	 = 	-936512500
sCoilSelectMeas.aRxCoilSelectData[0].asList[16].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].lMuxChannelConnected	 = 	18
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].lRxChannelConnected	 = 	18
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].lADCChannelConnected	 = 	18
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilElementID.tElement	 = 	"A18"
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilElementID.ulUniqueKey	 = 	1249731549
sCoilSelectMeas.aRxCoilSelectData[0].asList[17].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].lMuxChannelConnected	 = 	19
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].lRxChannelConnected	 = 	19
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].lADCChannelConnected	 = 	19
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilElementID.tElement	 = 	"A19"
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilElementID.ulUniqueKey	 = 	1998408301
sCoilSelectMeas.aRxCoilSelectData[0].asList[18].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].lMuxChannelConnected	 = 	20
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].lRxChannelConnected	 = 	20
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].lADCChannelConnected	 = 	20
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilElementID.tElement	 = 	"A20"
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilElementID.ulUniqueKey	 = 	-57058638
sCoilSelectMeas.aRxCoilSelectData[0].asList[19].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].lMuxChannelConnected	 = 	21
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].lRxChannelConnected	 = 	21
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].lADCChannelConnected	 = 	21
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilElementID.tElement	 = 	"A21"
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilElementID.ulUniqueKey	 = 	-1040616702
sCoilSelectMeas.aRxCoilSelectData[0].asList[20].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].lMuxChannelConnected	 = 	22
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].lRxChannelConnected	 = 	22
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].lADCChannelConnected	 = 	22
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilElementID.tElement	 = 	"A22"
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilElementID.ulUniqueKey	 = 	-2040985134
sCoilSelectMeas.aRxCoilSelectData[0].asList[21].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].lMuxChannelConnected	 = 	23
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].lRxChannelConnected	 = 	23
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].lADCChannelConnected	 = 	23
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilElementID.tElement	 = 	"A23"
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilElementID.ulUniqueKey	 = 	-1153884062
sCoilSelectMeas.aRxCoilSelectData[0].asList[22].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].lMuxChannelConnected	 = 	24
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].lRxChannelConnected	 = 	24
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].lADCChannelConnected	 = 	24
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilElementID.tElement	 = 	"A24"
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilElementID.ulUniqueKey	 = 	152697970
sCoilSelectMeas.aRxCoilSelectData[0].asList[23].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].lMuxChannelConnected	 = 	25
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].lRxChannelConnected	 = 	25
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].lADCChannelConnected	 = 	25
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilElementID.tElement	 = 	"A25"
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilElementID.ulUniqueKey	 = 	880399810
sCoilSelectMeas.aRxCoilSelectData[0].asList[24].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].lMuxChannelConnected	 = 	26
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].lRxChannelConnected	 = 	26
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].lADCChannelConnected	 = 	26
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilElementID.tElement	 = 	"A26"
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilElementID.ulUniqueKey	 = 	1943645970
sCoilSelectMeas.aRxCoilSelectData[0].asList[25].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].lMuxChannelConnected	 = 	27
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].lRxChannelConnected	 = 	27
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].lADCChannelConnected	 = 	27
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilElementID.tElement	 = 	"A27"
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilElementID.ulUniqueKey	 = 	1320781474
sCoilSelectMeas.aRxCoilSelectData[0].asList[26].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].lMuxChannelConnected	 = 	28
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].lRxChannelConnected	 = 	28
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].lADCChannelConnected	 = 	28
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilElementID.tElement	 = 	"A28"
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilElementID.ulUniqueKey	 = 	-857140877
sCoilSelectMeas.aRxCoilSelectData[0].asList[27].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].lMuxChannelConnected	 = 	29
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].lRxChannelConnected	 = 	29
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].lADCChannelConnected	 = 	29
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilElementID.tElement	 = 	"A29"
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilElementID.ulUniqueKey	 = 	-242665277
sCoilSelectMeas.aRxCoilSelectData[0].asList[28].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].lMuxChannelConnected	 = 	30
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].lRxChannelConnected	 = 	30
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].lADCChannelConnected	 = 	30
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilElementID.tElement	 = 	"A30"
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilElementID.ulUniqueKey	 = 	935692567
sCoilSelectMeas.aRxCoilSelectData[0].asList[29].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].lMuxChannelConnected	 = 	31
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].lRxChannelConnected	 = 	31
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].lADCChannelConnected	 = 	31
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilElementID.tElement	 = 	"A31"
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilElementID.ulUniqueKey	 = 	178626727
sCoilSelectMeas.aRxCoilSelectData[0].asList[30].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].lElementSelected	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].lMuxChannelConnected	 = 	32
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].lRxChannelConnected	 = 	32
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].lADCChannelConnected	 = 	32
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].uiInsertionTime	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilElementID.tElement	 = 	"A32"
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilElementID.ulUniqueKey	 = 	1292229239
sCoilSelectMeas.aRxCoilSelectData[0].asList[31].sCoilProperties.eCoilType	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE.__attribute__.size	 = 	32
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[0].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[0].lADCChannel	 = 	1
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[1].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[1].lADCChannel	 = 	2
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[2].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[2].lADCChannel	 = 	3
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[3].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[3].lADCChannel	 = 	4
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[4].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[4].lADCChannel	 = 	5
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[5].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[5].lADCChannel	 = 	6
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[6].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[6].lADCChannel	 = 	7
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[7].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[7].lADCChannel	 = 	8
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[8].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[8].lADCChannel	 = 	9
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[9].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[9].lADCChannel	 = 	10
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[10].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[10].lADCChannel	 = 	11
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[11].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[11].lADCChannel	 = 	12
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[12].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[12].lADCChannel	 = 	13
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[13].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[13].lADCChannel	 = 	14
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[14].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[14].lADCChannel	 = 	15
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[15].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[15].lADCChannel	 = 	16
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[16].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[16].lADCChannel	 = 	17
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[17].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[17].lADCChannel	 = 	18
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[18].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[18].lADCChannel	 = 	19
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[19].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[19].lADCChannel	 = 	20
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[20].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[20].lADCChannel	 = 	21
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[21].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[21].lADCChannel	 = 	22
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[22].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[22].lADCChannel	 = 	23
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[23].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[23].lADCChannel	 = 	24
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[24].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[24].lADCChannel	 = 	25
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[25].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[25].lADCChannel	 = 	26
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[26].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[26].lADCChannel	 = 	27
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[27].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[27].lADCChannel	 = 	28
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[28].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[28].lADCChannel	 = 	29
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[29].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[29].lADCChannel	 = 	30
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[30].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[30].lADCChannel	 = 	31
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[31].flFactor	 = 	1.03999996185
sCoilSelectMeas.aRxCoilSelectData[0].aFFT_SCALE[31].lADCChannel	 = 	32
sCoilSelectMeas.aRxCoilSelectData[1].IgnoreCoilGroups	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].BCCombineMode	 = 	1
sCoilSelectMeas.aRxCoilSelectData[1].bSuppressMandatoryProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].bIgnoreBCLCExcluding	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].bSuppressExclusiveProperties	 = 	0x0
sCoilSelectMeas.aRxCoilSelectData[1].BCCombineMatrix.__attribute__.size	 = 	0
sCoilSelectMeas.aRxCoilSelectData[1].asList.__attribute__.size	 = 	8
sCoilSelectMeas.aRxCoilSelectData[1].aFFT_SCALE.__attribute__.size	 = 	8
sCoilSelectMeas.aTxCoilSelectData.__attribute__.size	 = 	2
sCoilSelectMeas.aTxCoilSelectData[0].tNucleus	 = 	"1H"
sCoilSelectMeas.aTxCoilSelectData[0].tCheckUUID	 = 	"e4f7eb37ffedd5aef4e989496fa1d8389897bf7a"
sCoilSelectMeas.aTxCoilSelectData[0].asList.__attribute__.size	 = 	32
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilElementID.tElement	 = 	"Tx1"
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilElementID.ulUniqueKey	 = 	1524427105
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sTxScaleFactorCP.dRe	 = 	0.3535
sCoilSelectMeas.aTxCoilSelectData[0].asList[0].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].lTxChannelConnected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sCoilElementID.tElement	 = 	"Tx2"
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sCoilElementID.ulUniqueKey	 = 	494703537
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sTxScaleFactorCP.dRe	 = 	0.25
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sTxScaleFactorCP.dIm	 = 	-0.25
sCoilSelectMeas.aTxCoilSelectData[0].asList[1].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].lTxChannelConnected	 = 	2
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sCoilElementID.tElement	 = 	"Tx3"
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sCoilElementID.ulUniqueKey	 = 	538753537
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sTxScaleFactorCP.dIm	 = 	-0.3536
sCoilSelectMeas.aTxCoilSelectData[0].asList[2].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].lTxChannelConnected	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sCoilElementID.tElement	 = 	"Tx4"
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sCoilElementID.ulUniqueKey	 = 	-1841535471
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sTxScaleFactorCP.dRe	 = 	-0.25
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sTxScaleFactorCP.dIm	 = 	-0.25
sCoilSelectMeas.aTxCoilSelectData[0].asList[3].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].lTxChannelConnected	 = 	4
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sCoilElementID.tElement	 = 	"Tx5"
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sCoilElementID.ulUniqueKey	 = 	-1352904799
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sTxScaleFactorCP.dRe	 = 	-0.3536
sCoilSelectMeas.aTxCoilSelectData[0].asList[4].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].lTxChannelConnected	 = 	5
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sCoilElementID.tElement	 = 	"Tx6"
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sCoilElementID.ulUniqueKey	 = 	-386124431
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sTxScaleFactorCP.dRe	 = 	-0.25
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sTxScaleFactorCP.dIm	 = 	0.25
sCoilSelectMeas.aTxCoilSelectData[0].asList[5].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].lTxChannelConnected	 = 	6
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sCoilElementID.tElement	 = 	"Tx7"
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sCoilElementID.ulUniqueKey	 = 	-711189311
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sTxScaleFactorCP.dIm	 = 	0.3536
sCoilSelectMeas.aTxCoilSelectData[0].asList[6].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].lElementSelected	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].lTxChannelConnected	 = 	7
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sCoilElementID.tCoilID	 = 	"8Tx32Rx_Head"
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sCoilElementID.lCoilCopy	 = 	1
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sCoilElementID.tElement	 = 	"Tx8"
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sCoilElementID.ulUniqueKey	 = 	1473022736
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sTxScaleFactorCP.dRe	 = 	0.25
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sTxScaleFactorCP.dIm	 = 	0.25
sCoilSelectMeas.aTxCoilSelectData[0].asList[7].sCoilProperties.eCoilType	 = 	3
sCoilSelectMeas.aTxCoilSelectData[1].asList.__attribute__.size	 = 	32
sCoilSelectMeas.aLocalShimCoilSelectData.__attribute__.size	 = 	1
sCoilSelectMeas.aLocalShimCoilSelectData[0].asList.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug.__attribute__.size	 = 	11
sCoilSelectMeas.CoilPlugs.Plug[0].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[0].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[1].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[1].IdPart[0]	 = 	153
sCoilSelectMeas.CoilPlugs.Plug[2].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[2].IdPart[0]	 = 	154
sCoilSelectMeas.CoilPlugs.Plug[3].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[3].IdPart[0]	 = 	155
sCoilSelectMeas.CoilPlugs.Plug[4].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[4].IdPart[0]	 = 	156
sCoilSelectMeas.CoilPlugs.Plug[5].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[5].IdPart[0]	 = 	157
sCoilSelectMeas.CoilPlugs.Plug[6].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[6].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[7].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[7].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[8].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[8].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[9].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[9].IdPart[0]	 = 	238
sCoilSelectMeas.CoilPlugs.Plug[10].IdPart.__attribute__.size	 = 	8
sCoilSelectMeas.CoilPlugs.Plug[10].IdPart[0]	 = 	238
sWipMemBlock.tFree	 = 	"vx_ep3d bb4d852 bb4d852"
sWipMemBlock.alFree.__attribute__.size	 = 	64
sWipMemBlock.alFree[0]	 = 	720
sWipMemBlock.alFree[1]	 = 	12
sWipMemBlock.alFree[2]	 = 	5
sWipMemBlock.alFree[3]	 = 	110
sWipMemBlock.alFree[4]	 = 	4
sWipMemBlock.alFree[5]	 = 	1200
sWipMemBlock.alFree[6]	 = 	1
sWipMemBlock.alFree[7]	 = 	2
sWipMemBlock.alFree[8]	 = 	2
sWipMemBlock.alFree[9]	 = 	1
sWipMemBlock.alFree[10]	 = 	1
sWipMemBlock.alFree[11]	 = 	1
sWipMemBlock.alFree[12]	 = 	1
sWipMemBlock.alFree[13]	 = 	170
sWipMemBlock.alFree[14]	 = 	2000
sWipMemBlock.alFree[15]	 = 	12800
sWipMemBlock.alFree[16]	 = 	262400
sWipMemBlock.alFree[17]	 = 	2
sWipMemBlock.alFree[18]	 = 	1
sWipMemBlock.alFree[19]	 = 	1
sWipMemBlock.alFree[20]	 = 	5000
sWipMemBlock.alFree[21]	 = 	1
sWipMemBlock.adFree.__attribute__.size	 = 	16
sWipMemBlock.adFree[0]	 = 	1.3
sWipMemBlock.adFree[1]	 = 	1.3
sWipMemBlock.adFree[2]	 = 	1.0
sWipMemBlock.adFree[5]	 = 	2.0
sWipMemBlock.adFree[6]	 = 	2.0
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
