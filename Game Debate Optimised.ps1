$system = New-Object -TypeName XML
$system.Load((Resolve-Path "system.xml"))

$system.rage__fwuiSystemSettingsCollection.graphics.textureQuality = "kSettingLevel_Ultra"
$system.rage__fwuiSystemSettingsCollection.graphics.anisotropicFiltering.value = "3"
$system.rage__fwuiSystemSettingsCollection.graphics.lightingQuality = "kSettingLevel_High"
$system.rage__fwuiSystemSettingsCollection.graphics.ambientLightingQuality = "kSettingLevel_Low"
$system.rage__fwuiSystemSettingsCollection.graphics.shadowQuality = "kSettingLevel_Medium"
$system.rage__fwuiSystemSettingsCollection.graphics.farShadowQuality = "kSettingLevel_Medium"
$system.rage__fwuiSystemSettingsCollection.graphics.ssao = "kSettingLevel_Medium"
$system.rage__fwuiSystemSettingsCollection.graphics.reflectionQuality = "kSettingLevel_Medium"
$system.rage__fwuiSystemSettingsCollection.graphics.mirrorQuality = "kSettingLevel_High"
$system.rage__fwuiSystemSettingsCollection.graphics.waterQuality = "kSettingLevel_Custom"
$system.rage__fwuiSystemSettingsCollection.graphics.volumetricsQuality = "kSettingLevel_Custom"
$system.rage__fwuiSystemSettingsCollection.graphics.particleQuality = "kSettingLevel_Medium"
$system.rage__fwuiSystemSettingsCollection.graphics.tessellation = "kSettingLevel_High"
$system.rage__fwuiSystemSettingsCollection.graphics.taa = "kSettingLevel_Medium"
$system.rage__fwuiSystemSettingsCollection.graphics.fxaaEnabled.value = "true"
$system.rage__fwuiSystemSettingsCollection.graphics.msaa.value = "0"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.API = "kSettingAPI_Vulkan"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.locked.value = "false"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.scatteringVolumeQuality = "kSettingLevel_Medium"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.volumetricsRaymarchQuality = "kSettingLevel_Medium"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.volumetricsLightingQuality = "kSettingLevel_Medium"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.volumetricsRaymarchResolutionUnclamped.value = "true"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.particleLightingQuality = "kSettingLevel_Medium"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.shadowSoftShadows = "kSettingLevel_High"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.shadowGrassShadows = "kSettingLevel_Medium"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.shadowLongShadows.value = "false"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.worldHeightShadowQuality.value = "0.330000"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.directionalScreenSpaceShadowQuality.value = "0.330000"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.ssaoFullScreenEnabled.value = "false"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.waterRefractionQuality = "kSettingLevel_Medium"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.waterReflectionQuality = "kSettingLevel_Low"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.waterSimulationQuality.value = "3"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.waterLightingQuality = "kSettingLevel_Medium"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.scalingMode = "kSettingScale_Mode1o1"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.sharpenIntensity.value = "0.500000"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.motionBlur.value = "false"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.reflectionMSAA.value = "0"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.lodScale.value = "1.000000"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.grassLod.value = "1.500000"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.treeQuality = "kSettingLevel_Medium"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.POMQuality = "kSettingLevel_High"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.decalQuality = "kSettingLevel_Medium"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.terrainShadowQuality = "kSettingLevel_Medium"
$system.rage__fwuiSystemSettingsCollection.advancedGraphics.furDisplayQuality = "kSettingLevel_Medium"

$utf8WithoutBom = New-Object System.Text.UTF8Encoding($false)
$sw = New-Object System.IO.StreamWriter((Resolve-Path "system.xml"), $false, $utf8WithoutBom)
$system.Save($sw)
$sw.Close()