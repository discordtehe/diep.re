# include headers
```
#include "HUDScoreboardNode.h"
#include "AnimWait.h"
#include "MenuSettingsLocView.h"
#include "MenuSettingsLocNodeView.h"
#include "MenuSettingsLocNode.h"
#include "MenuSettingsLoc.h"
#include "MenuFeatureNotAvailableView.h"
#include "EmptyState.h"
#include "JoystickInput.h"
#include "MenuForceUpgrade.h"
#include "MenuVideosNotAvailable.h"
#include "HUDDiep.h"
#include "SpriteJoystickView.h"
#include "InterpolationValue.h"
#include "MenuReconnectingView.h"
#include "MenuHourlyReward.h"
#include "GDPRManager.h"
#include "GDPRPopup.h"
#include "MenuHourlyBonusNotReady.h"
#include "MenuBackground.h"
#include "MenuMainView.h"
#include "GameView.h"
#include "AgarCell.h"
#include "ArenaView.h"
#include "UserData.h"
#include "BaseState.h"
#include "SkinSettings.h"
#include "GameplaySettings.h"
#include "MenuPauseView.h"
#include "MenuVideosAnotherView.h"
#include "MenuCredits.h"
#include "HUDStatsNode.h"
#include "MenuVideosNotAvailableView.h"
#include "SimpleArenaBackground.h"
#include "MenuLoginElsewhere.h"
#include "TargetedAdsPopup.h"
#include "MenuSimpleMessagePopup.h"
#include "MenuHelpView.h"
#include "GameState.h"
#include "MenuReconnecting.h"
#include "MenuVideosWatching.h"
#include "UserSettings.h"
#include "HUDSmasherStatsNode.h"
#include "MenuFeatureNotAvailable.h"
#include "MenuGenericPopUpView.h"
#include "MenuVideosLoadingView.h"
#include "SimpleJoystickView.h"
#include "HUDUpgradesNode.h"
#include "Application.h"
#include "MenuMain.h"
#include "MenuGenericPopUp.h"
#include "HUDUpgrades.h"
#include "MenuSettings.h"
#include "MCTouchMove.h"
#include "MCInputDispatcher.h"
#include "HUDStats.h"
#include "UserStats.h"
#include "HUDLevelBar.h"
#include "LocalizationManagerDelegate.h"
#include "BaseDataModel.h"
#include "ShaderArenaBackground.h"
#include "MenuLoadingView.h"
#include "MenuProfile.h"
#include "TutorialInGame.h"
#include "InterstitialsManager.h"
#include "GameNavigationController.h"
#include "ConfigurationDelegate.h"
#include "LoadingWidget.h"
#include "OptimizedArenaBackground.h"
#include "AppDelegate.h"
#include "MenuSettingsNode.h"
#include "MenuPromotionPopUp.h"
#include "MenuProfileView.h"
#include "MenuLoginElsewhereView.h"
#include "MenuPromotionPopUpView.h"
#include "MenuSettingsNodeView.h"
#include "AlarmManagerSchedulerHelper.h"
#include "MenuItemToggleChildren.h"
#include "MenuHelp.h"
#include "UserInfo.h"
#include "LocalizedCCBReader.h"
#include "MenuLoading.h"
#include "HUDNode.h"
#include "MenuPause.h"
#include "MenuSoftUpdate.h"
#include "UserWallet.h"
#include "MenuDefaultFullScreenView.h"
#include "HUDScoreboard.h"
#include "MenuView.h"
#include "MenuRateView.h"
#include "MenuBackgroundView.h"
#include "Account.h"
#include "MenuLoginView.h"
#include "MCGoliathHandler.h"
#include "FriendNodeView.h"
#include "MenuRate.h"
#include "MCUserAcquisitionManager.h"
#include "MenuHourlyBonusNotReadyView.h"
#include "MenuHourlyRewardView.h"
#include "MenuSettingsView.h"
#include "ObjcAnyWrapper.h"
#include "MenuSoftUpdateView.h"
#include "MenuDefaultPopupView.h"
#include "StateMachine.h"
#include "MenuCreditsView.h"
#include "MenuCreditsNodeView.h"
#include "MenuCreditsNode.h"
#include "CLSDataCollectionArbiter.h"
#include "CLSFIRApp.h"
#include "AdMobKit.h"
#include "FABSettingsOnboardingManager.h"
#include "FABIcon.h"
#include "Fabric.h"
#include "FABNetworkOperation.h"
#include "FABURLBuilder.h"
#include "FABCertificatePinner.h"
#include "FABAppIconUtility.h"
#include "FABMultipartMimeStreamEncoder.h"
#include "FABSettings.h"
#include "FABApplicationIdentifierModel.h"
#include "FABDownloadAndSaveSettingsOperation.h"
#include "FABNetworkResponseHandler.h"
#include "FABOnboardingOperation.h"
#include "FABNetworkClient.h"
#include "CLSdSYM.h"
#include "CLSCodeMapping.h"
#include "CLSMachOBinary.h"
#include "CLSMachOSlice.h"
#include "CLSURLSessionDownloadTask.h"
#include "CLSURLSessionTask.h"
#include "CLSURLSessionDataTask.h"
#include "CLSURLSession.h"
#include "CLSURLSessionConfiguration.h"
#include "CLSURLSessionUploadTask.h"
#include "CLSUserDefaults.h"
#include "FABAsyncOperation.h"
#include "FABCompoundOperation.h"
#include "PodsDummy_GoogleUtilities.h"
#include "GULZeroingWeakContainer.h"
#include "GULAppDelegateObserver.h"
#include "GULAppDelegateSwizzler.h"
#include "GULAppEnvironmentUtil.h"
#include "GULLoggerWrapper.h"
#include "GULMutableDictionary.h"
#include "GULNetwork.h"
#include "GULNetworkURLSession.h"
#include "GULObjectSwizzler.h"
#include "GULReachabilityChecker.h"
#include "GULSwizzledObject.h"
#include "GULSwizzler.h"
#include "GULUserDefaults.h"
#include "ISAdColonyAdapter.h"
#include "UnityServices.h"
#include "UnityAds.h"
#include "UnityServicesListener.h"
#include "UADSAdsModuleConfiguration.h"
#include "UADSVideoView.h"
#include "UADSAVPlayer.h"
#include "UADSWebPlayerView.h"
#include "UADSPurchasing.h"
#include "UADSAdUnitViewHandler.h"
#include "UADSViewController.h"
#include "UADSWebViewHandler.h"
#include "UADSWebViewShowOperation.h"
#include "UADSWebPlayerHandler.h"
#include "UADSVideoPlayerHandler.h"
#include "UADSProperties.h"
#include "UADSApiPlacement.h"
#include "UADSApiAdsProperties.h"
#include "UADSApiVideoPlayer.h"
#include "UADSApiAdUnit.h"
#include "UADSApiPurchasing.h"
#include "UADSApiWebPlayer.h"
#include "UADSApiListener.h"
#include "UADSPlayerMetaData.h"
#include "UADSMediationMetaData.h"
#include "UADSMetaData.h"
#include "UADSInAppPurchaseMetaData.h"
#include "UADSPlacement.h"
#include "USRVJsonStorage.h"
#include "USRVConfiguration.h"
#include "USRVCoreModuleConfiguration.h"
#include "USRVModuleConfiguration.h"
#include "USRVInitialize.h"
#include "USRVInitializeState.h"
#include "USRVInitializeStateReset.h"
#include "USRVInitializeStateForceReset.h"
#include "USRVInitializeStateInitModules.h"
#include "USRVInitializeStateConfig.h"
#include "USRVInitializeStateLoadCache.h"
#include "USRVInitializeStateLoadWeb.h"
#include "USRVInitializeStateCreate.h"
#include "USRVInitializeStateComplete.h"
#include "USRVInitializeStateError.h"
#include "USRVInitializeStateNetworkError.h"
#include "USRVInitializeStateRetry.h"
#include "USRVPreferences.h"
#include "USRVCacheOperation.h"
#include "USRVCacheQueue.h"
#include "USRVConnectivityMonitor.h"
#include "USRVConnectivityUtils.h"
#include "USRVNotificationObserver.h"
#include "USRVWKWebViewUtilities.h"
#include "USRVWKWebViewApp.h"
#include "USRVWebViewBackgroundView.h"
#include "USRVWebViewApp.h"
#include "USRVWebViewBridge.h"
#include "USRVInvocation.h"
#include "USRVWebViewCallback.h"
#include "USRVWebViewMethodInvokeOperation.h"
#include "USRVNativeCallback.h"
#include "USRVURLProtocol.h"
#include "USRVWebViewMethodInvokeHandler.h"
#include "USRVWebViewMethodInvokeQueue.h"
#include "USRVEnvironmentProperties.h"
#include "USRVSdkProperties.h"
#include "USRVClientProperties.h"
#include "USRVApiUrlScheme.h"
#include "USRVApiNotification.h"
#include "USRVApiSdk.h"
#include "USRVApiPermissions.h"
#include "USRVApiSensorInfo.h"
#include "USRVApiPreferences.h"
#include "USRVApiStorage.h"
#include "USRVApiCache.h"
#include "USRVApiMainBundle.h"
#include "USRVApiRequest.h"
#include "USRVVolumeChangeListener.h"
#include "USRVApiDeviceInfo.h"
#include "USRVApiResolve.h"
#include "USRVApiConnectivity.h"
#include "USRVWebRequestQueue.h"
#include "USRVResolveOperation.h"
#include "USRVWebRequest.h"
#include "USRVResolve.h"
#include "USRVWebRequestOperation.h"
#include "USRVSensorInfo.h"
#include "USRVStorageManager.h"
#include "USRVDeviceLog.h"
#include "USRVVolumeChange.h"
#include "USRVDevice.h"
#include "USRVStorage.h"
#include "USRVUnityPurchasing.h"
#include "UPURProduct.h"
#include "UPURProductBuilder.h"
#include "UPURTransactionErrorDetails.h"
#include "UPURTransactionErrorDetailsBuilder.h"
#include "UPURTransactionDetails.h"
#include "UPURTransactionDetailsBuilder.h"
#include "UPURPurchasingModuleConfiguration.h"
#include "UPURClientProperties.h"
#include "UPURApiCustomPurchasing.h"
#include "UnityAdsBanner.h"
#include "UADSBannerModuleConfiguration.h"
#include "UADSWebViewBannerHideOperation.h"
#include "UADSWebViewBannerShowOperation.h"
#include "UADSBannerProperties.h"
#include "UADSBannerView.h"
#include "UADSApiBanner.h"
#include "UADSApiBannerListener.h"
#include "UADSARUtils.h"
#include "UADSARView.h"
#include "UADSARViewHandler.h"
#include "UADSARModuleConfiguration.h"
#include "UARApiAR.h"
#include "UnityMonetization.h"
#include "UMONMonetizationModuleConfiguration.h"
#include "UMONJSONUtilities.h"
#include "UMONClientProperties.h"
#include "UMONApiPlacementContents.h"
#include "UMONApiMonetizationListener.h"
#include "UMONPlacementContents.h"
#include "UMONPlacementContentFactory.h"
#include "UMONShowAdDelegateManager.h"
#include "UMONShowAdPlacementContent.h"
#include "UMONRewardablePlacementContent.h"
#include "UMONNotAvailablePlacementContent.h"
#include "UMONPlacementContent.h"
#include "UMONCustomEventBuilder.h"
#include "UMONCustomEvent.h"
#include "UMONNoFillPlacementContent.h"
#include "UMONPromoAdPlacementContent.h"
#include "UMONPromoMetaData.h"
#include "UMONPromoMetaDataBuilder.h"
#include "UMONItem.h"
#include "UMONItemBuilder.h"
#include "UMONNativePromoAdapter.h"
#include "UMONPromoMetaDataUtilities.h"
#include "UnityAnalytics.h"
#include "UANAAnalyticsModuleConfiguration.h"
#include "UANAApiAnalytics.h"
#include "USTRStore.h"
#include "USTRStoreModuleConfiguration.h"
#include "USTRAppSheet.h"
#include "USTRTransactionObserver.h"
#include "USTRProductRequest.h"
#include "USTRApiProducts.h"
#include "USTRApiAppSheet.h"
#include "GADMTapjoyExtras.h"
#include "GADMAdapterTapjoy.h"
#include "FIRAnalyticsConfiguration.h"
#include "FIRApp.h"
#include "FIRAppAssociationRegistration.h"
#include "FIRBundleUtil.h"
#include "FIRComponent.h"
#include "FIRComponentContainer.h"
#include "FIRComponentType.h"
#include "FIRConfiguration.h"
#include "FIRDependency.h"
#include "PodsDummy_FirebaseCore.h"
#include "FIRLoggerWrapper.h"
#include "FIROptions.h"
#include "CLSInternalReport.h"
#include "Crashlytics.h"
#include "CLSFileManager.h"
#include "CLSAlert.h"
#include "CLSDemangleOperation.h"
#include "CLSPackageReportOperation.h"
#include "CLSSerializeSymbolicatedFramesOperation.h"
#include "CLSProcessReportOperation.h"
#include "CLSSettings.h"
#include "CLSBetaController.h"
#include "CLSSymbolResolver.h"
#include "CLSCrashReportingController.h"
#include "CLSStackFrame.h"
#include "CLSSymbolicationOperation.h"
#include "CLSReportsController.h"
#include "CLSReport.h"
#include "CLSThreadArrayOperation.h"
#include "CLSFCRAnalytics.h"
#include "CLSBetaUpdate.h"
#include "CLSNetworkClient.h"
#include "Answers.h"
#include "ANSPredefinedEvent.h"
#include "ANSCrashMetadata.h"
#include "ANSPackageLogOperation.h"
#include "ANSLifecycleEvent.h"
#include "ANSRotateCrashMetadataOperation.h"
#include "ANSCleanupFilesOperation.h"
#include "ANSAttributeDictionary.h"
#include "ANSSettings.h"
#include "ANSMetadata.h"
#include "ANSEvent.h"
#include "ANSFileUtils.h"
#include "ANSBackoffTimer.h"
#include "ANSNetworkRetryHandler.h"
#include "ANSWriteEventOperation.h"
#include "ANSStubsForFIRAnalytics.h"
#include "ANSFirebaseAnalyticsBridge.h"
#include "ANSTimer.h"
#include "ANSActivityOperation.h"
#include "ANSCompressLogOperation.h"
#include "ANSUploader.h"
#include "ANSLogger.h"
#include "ANSApplication.h"
#include "ANSCrashEvent.h"
#include "ANSCustomEvent.h"
#include "ANSActivity.h"
#include "ANSAnswersController.h"
#include "ANSUploadOperation.h"
#include "ANSEventFilter.h"
#include "APMAdExposureReporter.h"
#include "APMAlarm.h"
#include "APMAnalytics.h"
#include "APMAudience.h"
#include "APMDatabase.h"
#include "APMEnvironmentInfo.h"
#include "APMIdentity.h"
#include "APMMeasurement.h"
#include "APMMonitor.h"
#include "APMPersistedConfig.h"
#include "APMRemoteConfig.h"
#include "APMScheduler.h"
#include "APMSessionReporter.h"
#include "APMIdentifiers.h"
#include "APMSearchAdReporter.h"
#include "APMAppDelegateInterceptor.h"
#include "APMAudienceComparisonValues.h"
#include "APMSequenceTimestampsCache.h"
#include "APMConditionalUserProperty.h"
#include "APMConditionalUserPropertyController.h"
#include "APMAppMetadata.h"
#include "APMDailyCounts.h"
#include "APMDataTypeValidator.h"
#include "APMEvent.h"
#include "APMEventAggregates.h"
#include "APMEventFilter.h"
#include "APMFilterResult.h"
#include "APMPropertyFilter.h"
#include "APMRawEventData.h"
#include "APMUserAttribute.h"
#include "APMValue.h"
#include "APMSqliteStore.h"
#include "APMASIdentifierManager.h"
#include "APMInAppPurchaseProductCache.h"
#include "APMInAppPurchaseItem.h"
#include "APMInAppPurchaseTransactionReporter.h"
#include "APMProductsRequest.h"
#include "APMLifetimeValueRecorder.h"
#include "APMASLLogger.h"
#include "APMMonitoringSampledData.h"
#include "APMUserDefaults.h"
#include "APMScreen.h"
#include "APMScreenViewReporter.h"
#include "APMAEU.h"
#include "APMInfoPlistFileUtil.h"
#include "APMKeychainWrapper.h"
#include "APMNumericUtil.h"
#include "APMPBAudience.h"
#include "APMPBAudienceLeafFilterResult.h"
#include "APMPBDynamicFilterResultTimestamp.h"
#include "APMPBEvent.h"
#include "APMPBEventConfig.h"
#include "APMPBEventFilter.h"
#include "APMPBEventParam.h"
#include "APMPBFilter.h"
#include "APMPBMeasurementBatch.h"
#include "APMPBMeasurementBundle.h"
#include "APMPBMeasurementConfig.h"
#include "APMPBNumberFilter.h"
#include "APMPBPropertyFilter.h"
#include "APMPBResultData.h"
#include "APMPBSequenceFilterResultTimestamp.h"
#include "APMPBSetting.h"
#include "APMPBStringFilter.h"
#include "APMPBUserAttribute.h"
#include "ADCMuteSwitchDetectorJob.h"
#include "ADCMuteSwitchDetector.h"
#include "ADCFilepathContext.h"
#include "ADCAudioPlayer.h"
#include "ADCDevice.h"
#include "ADCFileHandler.h"
#include "ADCLog.h"
#include "ADCLogManager.h"
#include "ADCLogReporter.h"
#include "ADCCrash.h"
#include "ADCCrashManager.h"
#include "ADCAdColonyAPI.h"
#include "ADCAlertAPI.h"
#include "ADCButtonAPI.h"
#include "ADCColorViewAPI.h"
#include "ADCContainerContext.h"
#include "ADCContainerAPI.h"
#include "ADCCryptoAPI.h"
#include "ADCDeviceAPI.h"
#include "ADCFileSystemAPI.h"
#include "ADCImageViewAPI.h"
#include "ADCModuleAPI.h"
#include "ADCNetworkAPI.h"
#include "ADCTextViewAPI.h"
#include "ADCVideoViewAPI.h"
#include "ADCWebServicesAPI.h"
#include "ADCAdColonyMPAPI.h"
#include "ADCAdSessionAPI.h"
#include "ADCAlertMPAPI.h"
#include "ADCAudioPlayerContext.h"
#include "ADCAudioPlayerAPI.h"
#include "ADCColorViewMPAPI.h"
#include "ADCContainerMPContext.h"
#include "ADCContainerMPAPI.h"
#include "ADCCryptoMPAPI.h"
#include "ADCCustomNotificationAPI.h"
#include "ADCFileSystemMPAPI.h"
#include "ADCImageViewMPAPI.h"
#include "ADCLoggingAPI.h"
#include "ADCModuleMPAPI.h"
#include "ADCSystemAPI.h"
#include "ADCVideoViewMPAPI.h"
#include "ADCWebServicesMPAPI.h"
#include "ADCWebViewAPI.h"
#include "ADCMessage.h"
#include "ADCMessageHandler.h"
#include "ADCNativeLayer.h"
#include "ADCController.h"
#include "ADCModule.h"
#include "ADCJSCoreModule.h"
#include "ADCWebViewModule.h"
#include "ADCGCDWebServerHandler.h"
#include "ADCGCDWebServer.h"
#include "ADCGCDWebServerConnection.h"
#include "ADCGCDWebServerBodyDecoder.h"
#include "ADCGCDWebServerGZipDecoder.h"
#include "ADCGCDWebServerRequest.h"
#include "ADCGCDWebServerBodyEncoder.h"
#include "ADCGCDWebServerGZipEncoder.h"
#include "ADCGCDWebServerResponse.h"
#include "ADCGCDWebServerDataRequest.h"
#include "ADCGCDWebServerFileRequest.h"
#include "ADCGCDWebServerMultiPart.h"
#include "ADCGCDWebServerMultiPartArgument.h"
#include "ADCGCDWebServerMultiPartFile.h"
#include "ADCGCDWebServerMIMEStreamParser.h"
#include "ADCGCDWebServerMultiPartFormRequest.h"
#include "ADCGCDWebServerURLEncodedFormRequest.h"
#include "ADCGCDWebServerDataResponse.h"
#include "ADCGCDWebServerErrorResponse.h"
#include "ADCGCDWebServerFileResponse.h"
#include "ADCGCDWebServerStreamedResponse.h"
#include "ADCDownloader.h"
#include "ADCHTTPConnection.h"
#include "ADCNetwork.h"
#include "ADCAlert.h"
#include "ADCAlertAction.h"
#include "ADCAlertController.h"
#include "ADCStaticAlertController.h"
#include "ADCButton.h"
#include "ADCColorView.h"
#include "ADCContainer.h"
#include "ADCStaticContainer.h"
#include "ADCTransitionalContainer.h"
#include "ADCTransitionalStaticContainer.h"
#include "ADCImageView.h"
#include "ADCTextView.h"
#include "ADCView.h"
#include "ADCMPViewContext.h"
#include "ADCViewContext.h"
#include "ADCViewabilityMonitor.h"
#include "ADCAvidViewabilityMonitor.h"
#include "ADCStoreProductViewController.h"
#include "ADCStaticStoreProductViewController.h"
#include "ADCBrowser.h"
#include "ADCBrowserControl.h"
#include "ADCShadowedLabel.h"
#include "ADCVideoTimer.h"
#include "ADCMPVideoView.h"
#include "ADCVideoView.h"
#include "AdColony.h"
#include "AdColonyAdRequestError.h"
#include "AdColonyOptions.h"
#include "ADCJSTimer.h"
#include "AdColonyAdOptions.h"
#include "AdColonyAppOptions.h"
#include "AdColonyInterstitial.h"
#include "AdColonyNativeAdView.h"
#include "AdColonyZone.h"
#include "AdColonyUserMetadata.h"
#include "AdColonyEventTracker.h"
#include "ADCAdSession.h"
#include "ADCInterstitialAdSession.h"
#include "ADCNativeAdSession.h"
#include "ADCAPIGuards.h"
#include "ADCRateLimiter.h"
#include "ADCUtil.h"
#include "ADCDataTransform.h"
#include "ADCDynamicControls.h"
#include "AdColony_InternalAvidAdSession.h"
#include "AdColony_AvidProvider.h"
#include "AdColony_InternalAvidWebViewAdSession.h"
#include "AdColony_AvidStateWatcher.h"
#include "AdColony_AvidWebViewHolderFactory.h"
#include "AdColony_AvidManagedVideoAdSession.h"
#include "AdColony_InternalAvidManagedDisplayAdSession.h"
#include "AdColony_AvidViewKey.h"
#include "AdColony_AvidWKWebViewHolder.h"
#include "AdColony_AbstractAvidAdSession.h"
#include "AdColony_AvidProcessorFactory.h"
#include "AdColony_AvidUIWebViewHolder.h"
#include "AdColony_AvidAdSessionManager.h"
#include "AdColony_AvidDictionaryUtil.h"
#include "AdColony_InternalAvidManagedVideoAdSession.h"
#include "AdColony_AvidBridge.h"
#include "AdColony_AvidDeferredAdSessionListenerImpl.h"
#include "AdColony_AvidTreeWalker.h"
#include "AdColony_AvidDisplayAdSession.h"
#include "AdColony_AvidVideoPlaybackListenerImpl.h"
#include "AdColony_AvidVideoAdSession.h"
#include "AdColony_AvidEventDispatcher.h"
#include "AdColony_AvidViewProcessor.h"
#include "AdColony_InternalAvidDisplayAdSession.h"
#include "AdColony_AvidManagedDisplayAdSession.h"
#include "AdColony_AvidEvent.h"
#include "AdColony_AvidManager.h"
#include "AdColony_AvidAdSessionRegistry.h"
#include "AdColony_InternalAvidVideoAdSession.h"
#include "AdColony_AvidWindowProcessor.h"
#include "AdColony_AvidCommand.h"
#include "AdColony_AvidScreenProcessor.h"
#include "AdColony_ExternalAvidAdSessionContext.h"
#include "AdColony_AvidContext.h"
#include "AdColony_InternalAvidAdSessionContext.h"
#include "AdColony_InternalAvidManagedAdSession.h"
#include "AdColony_AbstractAvidManagedAdSession.h"
#include "AdColony_AvidAdViewCache.h"
#include "AdColony_AvidView.h"
#include "AdColony_AvidStatePublisher.h"
#include "AdColony_AvidObstructionsWhiteList.h"
#include "ISAdMobAdapter.h"
#include "ISMoPubAdapter.h"
#include "ISFacebookAdapter.h"
#include "ISVungleAdapter.h"
#include "MCURLFileListDownloader.h"
#include "MCURLFileDownloader.h"
#include "FlatBundleHelper.h"
#include "MCBundleFile.h"
#include "MCBundleManager.h"
#include "MCDownloadInfo.h"
#include "MCPatcher.h"
#include "MCBundle.h"
#include "MCRemoteBundle.h"
#include "ISUnityAdsAdapter.h"
#include "MCAnimSequencerLayer.h"
#include "MCAnimSequencer.h"
#include "MCAnimVSZRemoveFromParentAction.h"
#include "MCAnimConcurrentAnimations.h"
#include "MCAnimVSZUtils.h"
#include "MCAnimVSZHelper.h"
#include "MCAnimSingleAnimation.h"
#include "MCAnimVSZNode.h"
#include "MCAnimVSZData.h"
#include "MCAnimVSZCache.h"
#include "MCAnimVSZFireAndForgetDelegate.h"
#include "CCNode.h"
#include "CCNodeRGBA.h"
#include "CCAtlasNode.h"
#include "MCSpineNode.h"
#include "MCSpineNodeChild.h"
#include "CCDrawNode.h"
#include "MCAdjustableLabelBMFont.h"
#include "CCFontDefinition.h"
#include "CCBMFontConfiguration.h"
#include "CCLabelBMFont.h"
#include "CCLabelTTF.h"
#include "CCLabelAtlas.h"
#include "CCAnimationFrame.h"
#include "CCAnimation.h"
#include "CCAnimationCache.h"
#include "CCSprite.h"
#include "CCSpriteBatchNode.h"
#include "CCSpriteFrame.h"
#include "MCToggle.h"
#include "CCSpriteFrameCache.h"
#include "CCMenu.h"
#include "CCMenuItem.h"
#include "CCMenuItemLabel.h"
#include "CCMenuItemAtlasFont.h"
#include "CCMenuItemFont.h"
#include "CCMenuItemSprite.h"
#include "CCMenuItemImage.h"
#include "CCMenuItemToggle.h"
#include "CCParticleSystem.h"
#include "CCParticleSystemQuad.h"
#include "CCParticleBatchNode.h"
#include "CCParticleFireworks.h"
#include "CCParticleFire.h"
#include "CCParticleSun.h"
#include "CCParticleGalaxy.h"
#include "CCParticleFlower.h"
#include "CCParticleMeteor.h"
#include "CCParticleSpiral.h"
#include "CCParticleExplosion.h"
#include "CCParticleSmoke.h"
#include "CCParticleSnow.h"
#include "CCParticleRain.h"
#include "CGPointObject.h"
#include "CCParallaxNode.h"
#include "CCTileMapAtlas.h"
#include "ButtonColor.h"
#include "MCMenuItemSprite.h"
#include "CCTMXLayer.h"
#include "MCAlignmentNodeStatic.h"
#include "CCTMXObjectGroup.h"
#include "CCTMXTiledMap.h"
#include "CCScene.h"
#include "CCTMXLayerInfo.h"
#include "CCTMXTilesetInfo.h"
#include "CCTMXMapInfo.h"
#include "CCTransitionScene.h"
#include "CCTransitionSceneOriented.h"
#include "CCTransitionRotoZoom.h"
#include "CCTransitionJumpZoom.h"
#include "CCTransitionMoveInL.h"
#include "CCTransitionMoveInR.h"
#include "CCTransitionMoveInT.h"
#include "CCTransitionMoveInB.h"
#include "CCTransitionSlideInL.h"
#include "CCTransitionSlideInR.h"
#include "CCTransitionSlideInT.h"
#include "CCTransitionSlideInB.h"
#include "CCTransitionShrinkGrow.h"
#include "CCTransitionFlipX.h"
#include "CCTransitionFlipY.h"
#include "CCTransitionFlipAngular.h"
#include "CCTransitionZoomFlipX.h"
#include "CCTransitionZoomFlipY.h"
#include "CCTransitionZoomFlipAngular.h"
#include "CCTransitionFade.h"
#include "CCTransitionCrossFade.h"
#include "CCTransitionTurnOffTiles.h"
#include "CCTransitionSplitCols.h"
#include "CCTransitionSplitRows.h"
#include "CCTransitionFadeTR.h"
#include "CCTransitionFadeBL.h"
#include "CCTransitionFadeUp.h"
#include "CCTransitionFadeDown.h"
#include "CCTransitionPageTurn.h"
#include "MCAdjustableLabelAtlasTTF.h"
#include "CCTransitionProgress.h"
#include "CCTransitionProgressRadialCCW.h"
#include "CCTransitionProgressRadialCW.h"
#include "CCTransitionProgressHorizontal.h"
#include "CCTransitionProgressVertical.h"
#include "CCTransitionProgressInOut.h"
#include "CCTransitionProgressOutIn.h"
#include "CCClippingNode.h"
#include "CCMotionStreak.h"
#include "CCProgressTimer.h"
#include "CCRenderTexture.h"
#include "CCActionManager.h"
#include "CCActionCamera.h"
#include "CCOrbitCamera.h"
#include "CCAction.h"
#include "CCFiniteTimeAction.h"
#include "CCRepeatForever.h"
#include "CCSpeed.h"
#include "CCFollow.h"
#include "CCActionInstant.h"
#include "CCShow.h"
#include "CCHide.h"
#include "CCToggleVisibility.h"
#include "CCFlipX.h"
#include "CCFlipY.h"
#include "CCPlace.h"
#include "CCCallFunc.h"
#include "CCCallFuncN.h"
#include "CCCallFuncND.h"
#include "CCCallFuncO.h"
#include "CCCallBlock.h"
#include "CCCallBlockN.h"
#include "CCCallBlockO.h"
#include "CCEnable.h"
#include "CCDisable.h"
#include "CCToggleEnable.h"
#include "CCScrollView.h"
#include "CCActionInterval.h"
#include "CCSequence.h"
#include "CCRepeat.h"
#include "CCSpawn.h"
#include "CCRotateTo.h"
#include "CCRotateBy.h"
#include "CCMoveBy.h"
#include "CCMoveTo.h"
#include "CCSkewTo.h"
#include "CCSkewBy.h"
#include "CCJumpBy.h"
#include "CCJumpTo.h"
#include "CCBezierBy.h"
#include "CCBezierTo.h"
#include "CCScaleTo.h"
#include "CCScaleBy.h"
#include "CCBlink.h"
#include "CCFadeIn.h"
#include "CCFadeOut.h"
#include "CCFadeTo.h"
#include "CCTintTo.h"
#include "CCTintBy.h"
#include "CCDelayTime.h"
#include "CCReverseTime.h"
#include "CCAnimate.h"
#include "CCTargetedAction.h"
#include "CCJitter.h"
#include "CCCallFuncObjOnInterval.h"
#include "CCRotateYAxisTo.h"
#include "CCRotateYAxisBy.h"
#include "CCRotateXAxisTo.h"
#include "CCRotateXAxisBy.h"
#include "CCMoveCurve.h"
#include "CCForceDuration.h"
#include "CCResizeTo.h"
#include "CCActionEase.h"
#include "CCEaseRateAction.h"
#include "CCEaseIn.h"
#include "CCEaseOut.h"
#include "CCEaseInOut.h"
#include "CCEaseExponentialIn.h"
#include "CCEaseExponentialOut.h"
#include "CCEaseExponentialInOut.h"
#include "CCEasePolynomial.h"
#include "CCEasePolynomialIn.h"
#include "CCEasePolynomialOut.h"
#include "CCEasePolynomialInOut.h"
#include "CCEaseSineIn.h"
#include "CCEaseSineOut.h"
#include "CCEaseSineInOut.h"
#include "CCEaseElastic.h"
#include "CCEaseElasticIn.h"
#include "CCEaseElasticOut.h"
#include "CCEaseElasticInOut.h"
#include "CCEaseBounce.h"
#include "CCEaseBounceIn.h"
#include "CCEaseBounceOut.h"
#include "CCEaseBounceInOut.h"
#include "CCEaseBackIn.h"
#include "CCEaseBackOut.h"
#include "CCEaseBackInOut.h"
#include "CCShakyTiles3D.h"
#include "CCShatteredTiles3D.h"
#include "CCShuffleTiles.h"
#include "CCFadeOutTRTiles.h"
#include "CCFadeOutBLTiles.h"
#include "CCFadeOutUpTiles.h"
#include "CCFadeOutDownTiles.h"
#include "CCTurnOffTiles.h"
#include "CCWavesTiles3D.h"
#include "CCJumpTiles3D.h"
#include "CCSplitRows.h"
#include "CCSplitCols.h"
#include "CCWaves3D.h"
#include "CCFlipX3D.h"
#include "CCFlipY3D.h"
#include "CCLens3D.h"
#include "CCRipple3D.h"
#include "CCShaky3D.h"
#include "CCLiquid.h"
#include "CCWaves.h"
#include "CCTwirl.h"
#include "CCGridAction.h"
#include "CCGrid3DAction.h"
#include "CCTiledGrid3DAction.h"
#include "CCAccelDeccelAmplitude.h"
#include "CCAccelAmplitude.h"
#include "CCDeccelAmplitude.h"
#include "CCStopGrid.h"
#include "CCReuseGrid.h"
#include "CCPointArray.h"
#include "CCCardinalSplineTo.h"
#include "CCCardinalSplineBy.h"
#include "CCCatmullRomTo.h"
#include "CCCatmullRomBy.h"
#include "CCPageTurn3D.h"
#include "CCProgressTo.h"
#include "CCProgressFromTo.h"
#include "CCActionTween.h"
#include "CCGrabber.h"
#include "CCGridBase.h"
#include "CCGrid3D.h"
#include "CCTiledGrid3D.h"
#include "CCTexture2D.h"
#include "CCTextureAtlas.h"
#include "CCTextureCache.h"
#include "CCArray.h"
#include "HorizontalStretchFrame.h"
#include "HorizontalStretchFrameCache.h"
#include "FramedSpriteTile.h"
#include "FramedSprite.h"
#include "FramedSpriteCache.h"
#include "CCProfiler.h"
#include "CCProfilingTimer.h"
#include "CCCacheValue.h"
#include "CCFileUtils.h"
#include "CCObjectWith2Params.h"
#include "CCResourcePackManager.h"
#include "CCGLStateCache.h"
#include "CCShaderCache.h"
#include "CCGLProgram.h"
#include "MCEvent.h"
#include "MCTouch.h"
#include "CCGLViewMC.h"
#include "CCDirectorIOS.h"
#include "CCDirectorDisplayLink.h"
#include "AdjustableLabelBMFont.h"
#include "CCTouchDispatcher.h"
#include "CCTouchHandler.h"
#include "CCStandardTouchHandler.h"
#include "CCTargetedTouchHandler.h"
#include "CCGLView.h"
#include "CCES2Renderer.h"
#include "MCMenuItemNodeRGBA.h"
#include "EAGLView.h"
#include "CCDirector.h"
#include "CCCamera.h"
#include "CCConfiguration.h"
#include "CCTimer.h"
#include "CCTimerTargetSelector.h"
#include "CCTimerBlock.h"
#include "CCScheduler.h"
#include "MCMenuItemNodeStatic.h"
#include "CDAsynchInitialiser.h"
#include "CDLongAudioSource.h"
#include "CDAudioManager.h"
#include "CDLongAudioSourceFader.h"
#include "CDBufferManager.h"
#include "CDXPropertyModifierAction.h"
#include "CDUtilities.h"
#include "CDSoundEngine.h"
#include "CDSoundSource.h"
#include "CDAudioInterruptTargetGroup.h"
#include "CDAsynchBufferLoader.h"
#include "CDBufferLoadRequest.h"
#include "CDFloatInterpolator.h"
#include "CDPropertyModifier.h"
#include "CDSoundSourceFader.h"
#include "CDSoundSourcePanner.h"
#include "CDSoundSourcePitchBender.h"
#include "CDSoundEngineFader.h"
#include "SimpleAudioEngine.h"
#include "MCMenuItemToggleSwipe.h"
#include "CCDirectorIOSMC.h"
#include "CCDirectorMiniclip.h"
#include "MCFramedSpriteTile.h"
#include "MCFramedSprite.h"
#include "MCFramedSpriteCache.h"
#include "MCFSProcessedValues.h"
#include "MCFSCachedValues.h"
#include "CCDirectorMC.h"
#include "CCBAnimationManager.h"
#include "CCBSetSpriteFrame.h"
#include "CCBRotateTo.h"
#include "CCEaseInstant.h"
#include "CCBKeyframe.h"
#include "CCBReader.h"
#include "CCBFile.h"
#include "CCBFileUtils.h"
#include "CCBSequenceProperty.h"
#include "CCLabelAtlasTTFFont.h"
#include "CCLayer.h"
#include "CCLayerRGBA.h"
#include "CCLayerColor.h"
#include "CCLayerGradient.h"
#include "CCLayerMultiplex.h"
#include "AdjustableLabelTTF.h"
#include "MCColorNode.h"
#include "spPolygonBatch.h"
#include "SkeletonAnimation.h"
#include "SkeletonRenderer.h"
#include "MCMenuItemStretchSprite.h"
#include "MCMenuItem.h"
#include "MCAdjustableLabelTTF.h"
#include "CCBSequence.h"
#include "MCMenuItemNode.h"
#include "MCAlignmentNode.h"
#include "CC2FramedSprite.h"
#include "ScissorTestNode.h"
#include "MCMenuItemNodeRGBAStatic.h"
#include "MCNMessageImageView.h"
#include "MCNNextButton.h"
#include "MCNCloseButton.h"
#include "MCNNewsFrameViewPortraitiPad.h"
#include "MCNNextButtonRender.h"
#include "MCNBackButton.h"
#include "MCNNewsFrameViewPortrait.h"
#include "MCNewsfeedGUI.h"
#include "MCNNewsFrameViewLandscape.h"
#include "RateNotificationObserver.h"
#include "MCNBackButtonRender.h"
#include "MCNNewsFrameViewLandscapeiPad.h"
#include "MCNGetitButton.h"
#include "MCNCloseButtonRender.h"
#include "MCNGetitButtonRender.h"
#include "TROfferRequest.h"
#include "TR_DDAbstractDatabaseLogger.h"
#include "TR_DDASLLogCapture.h"
#include "TR_DDASLLogger.h"
#include "TR_DDLogFileManagerDefault.h"
#include "TR_DDLogFileFormatterDefault.h"
#include "TR_DDFileLogger.h"
#include "TR_DDLogFileInfo.h"
#include "TR_DDLog.h"
#include "TR_DDLoggerNode.h"
#include "TR_DDLogMessage.h"
#include "TR_DDAbstractLogger.h"
#include "TR_DDLoggerInformation.h"
#include "TR_DDTTYLogger.h"
#include "TR_DDTTYLoggerColorProfile.h"
#include "TR_DDContextWhitelistFilterLogFormatter.h"
#include "TR_DDContextBlacklistFilterLogFormatter.h"
#include "TR_DDLoggingContextSet.h"
#include "TR_DDDispatchQueueLogFormatter.h"
#include "TR_DDMultiFormatter.h"
#include "TRAppImpression.h"
#include "TR_AFHTTPSessionManager.h"
#include "TR_AFNetworkReachabilityManager.h"
#include "TR_AFSecurityPolicy.h"
#include "TRWebviewController.h"
#include "TR_AFQueryStringPair.h"
#include "TR_AFHTTPRequestSerializer.h"
#include "TR_AFStreamingMultipartFormData.h"
#include "TR_AFMultipartBodyStream.h"
#include "TR_AFHTTPBodyPart.h"
#include "TR_AFJSONRequestSerializer.h"
#include "TR_AFPropertyListRequestSerializer.h"
#include "TRSerilizationHelper.h"
#include "TR_AFHTTPResponseSerializer.h"
#include "TR_AFJSONResponseSerializer.h"
#include "TR_AFXMLParserResponseSerializer.h"
#include "TR_AFPropertyListResponseSerializer.h"
#include "TR_AFImageResponseSerializer.h"
#include "TR_AFCompoundResponseSerializer.h"
#include "TROffer.h"
#include "TR_AFURLSessionManagerTaskDelegate.h"
#include "TR__AFURLSessionTaskSwizzling.h"
#include "TR_AFURLSessionManager.h"
#include "TRSessionManager.h"
#include "TRPlayerRequest.h"
#include "TRBackButtonItem.h"
#include "TRRewardDeltaRequest.h"
#include "TRAppSessionRequest.h"
#include "TRAlertHandler.h"
#include "TR_RNEncryptor.h"
#include "TRSurveyURLRequest.h"
#include "TRPlayer.h"
#include "TR_RNCryptor.h"
#include "TREventsRequest.h"
#include "TREvent.h"
#include "TRRequest.h"
#include "TRAppSession.h"
#include "TRAppImpressionRequest.h"
#include "TRRewardRedeemedRequest.h"
#include "TapResearch.h"
#include "TRCacheManager.h"
#include "TR_RNDecryptor.h"
#include "TRNetworkManager.h"
#include "TR_RNCryptorEngine.h"
#include "TRObjectStore.h"
#include "TRReward.h"
#include "TRPlacement.h"
#include "TRVersionRequest.h"
#include "TRAppSessionOfferRequest.h"
#include "TRActivityIndicatorView.h"
#include "TRDeviceHelper.h"
#include "CCES2Renderer_MCPlatform.h"
#include "CCGLView_MCPlatform.h"
#include "CCNavigationController_MCPlatform.h"
#include "CCViewController_MCPlatform.h"
#include "CCDirectorDisplayLink_MCPlatform.h"
#include "UnityAdsAdapterConfiguration.h"
#include "MPURLActionInfo.h"
#include "MPRewardedVideoAdapter.h"
#include "MPBannerAdManager.h"
#include "IronSourceExtras.h"
#include "MOPUBNativeVideoAdRenderer.h"
#include "MPGoogleAdMobNativeRenderer.h"
#include "UnityAdsBannerCustomEvent.h"
#include "AdColonyGlobalMediationSettings.h"
#include "FacebookInterstitialCustomEvent.h"
#include "MPNativePositionSource.h"
#include "MPReachability.h"
#include "MPImpressionData.h"
#include "MPConstants.h"
#include "MOPUBPlayerViewController.h"
#include "MRVideoPlayerManager.h"
#include "MPNativeAdRendererImageHandler.h"
#include "MPMoPubNativeCustomEvent.h"
#include "MPTableViewAdPlacer.h"
#include "MPVASTTrackingEvent.h"
#include "MPSessionTracker.h"
#include "MPTableViewAdPlacerCell.h"
#include "MPServerAdPositioning.h"
#include "MRNativeCommandHandler.h"
#include "MPViewabilityTracker.h"
#include "MPAdAlertManager.h"
#include "MPVideoPlaybackCandidate.h"
#include "MPVideoConfig.h"
#include "AdColonyInterstitialCustomEvent.h"
#include "MRController.h"
#include "MPiOS7SafeStoreProductViewController.h"
#include "MPStoreKitProvider.h"
#include "MPVungleRouter.h"
#include "MPClientAdPositioning.h"
#include "UnityAdsRewardedVideoCustomEvent.h"
#include "MPBaseBannerAdapter.h"
#include "MPLastResortDelegate.h"
#include "MPAnalyticsTracker.h"
#include "IronSourceAdapterConfiguration.h"
#include "MPCollectionViewAdPlacerCell.h"
#include "MoPub.h"
#include "MPGoogleAdMobInterstitialCustomEvent.h"
#include "MPRateLimitConfiguration.h"
#include "MPMRAIDInterstitialViewController.h"
#include "MPConsoleLogger.h"
#include "MPTimer.h"
#include "UnityRouter.h"
#include "MPNativeAdSourceQueue.h"
#include "MPStaticNativeAdRendererSettings.h"
#include "MPBaseInterstitialAdapter.h"
#include "MPVASTWrapper.h"
#include "GoogleAdMobAdapterConfiguration.h"
#include "MPBaseAdapterConfiguration.h"
#include "MPRewardedVideoReward.h"
#include "MPNativeCache.h"
#include "MOPUBExperimentProvider.h"
#include "MPNativeAdData.h"
#include "MPReachabilityManager.h"
#include "MPAdConversionTracker.h"
#include "MOPUBFullscreenPlayerViewController.h"
#include "MPInterstitialAdController.h"
#include "TapjoyAdapterConfiguration.h"
#include "MPAdTargeting.h"
#include "MOPUBNativeVideoAdAdapter.h"
#include "MPAdServerURLBuilder.h"
#include "MPHTMLBannerCustomEvent.h"
#include "MPHTMLInterstitialViewController.h"
#include "AdColonyController.h"
#include "FacebookRewardedVideoCustomEvent.h"
#include "MPNativeAdUtils.h"
#include "MPRewardedVideoAdManager.h"
#include "MPVASTCreative.h"
#include "MPMediationManager.h"
#include "VungleInterstitialCustomEvent.h"
#include "MOPUBNativeVideoAdRendererSettings.h"
#include "MPGoogleGlobalMediationSettings.h"
#include "MOPUBNativeVideoImpressionAgent.h"
#include "VungleBannerCustomEvent.h"
#include "FacebookAdapterConfiguration.h"
#include "TapjoyGlobalMediationSettings.h"
#include "MPAdPlacerInvocation.h"
#include "MPVASTInline.h"
#include "MRBundleManager.h"
#include "MPAdPositioning.h"
#include "MOPUBPlayerView.h"
#include "MOPUBPlayerManager.h"
#include "MOPUBAVPlayerView.h"
#include "MPAdServerCommunicator.h"
#include "FacebookBannerCustomEvent.h"
#include "MPStreamAdPlacer.h"
#include "MPRateLimitManager.h"
#include "MPMemoryCache.h"
#include "MRExpandModalViewController.h"
#include "MPURL.h"
#include "MPTelephoneConfirmationController.h"
#include "UnityAdsInstanceMediationSettings.h"
#include "MPInterstitialViewController.h"
#include "MOPUBActivityIndicatorView.h"
#include "MRCommand.h"
#include "MRCloseCommand.h"
#include "MRExpandCommand.h"
#include "MRResizeCommand.h"
#include "MRUseCustomCloseCommand.h"
#include "MRSetOrientationPropertiesCommand.h"
#include "MROpenCommand.h"
#include "MRPlayVideoCommand.h"
#include "MPInterstitialAdManager.h"
#include "MPNativeAdSource.h"
#include "IronSourceInterstitialCustomEvent.h"
#include "MPVASTIndustryIcon.h"
#include "MPVASTResource.h"
#include "MOPUBNativeVideoAdConfigValues.h"
#include "MPAPIEndpoints.h"
#include "AdColonyInstanceMediationSettings.h"
#include "MPAdImpressionTimer.h"
#include "MPNativeAdConfigValues.h"
#include "MPBannerCustomEvent.h"
#include "MPUserInteractionGestureRecognizer.h"
#include "MPMoPubRewardedVideoCustomEvent.h"
#include "VungleRewardedVideoCustomEvent.h"
#include "MPRealTimeTimer.h"
#include "UnityAdsInterstitialCustomEvent.h"
#include "MPGoogleAdMobNativeCustomEvent.h"
#include "FacebookNativeAdAdapter.h"
#include "MPMRAIDInterstitialCustomEvent.h"
#include "MPMRAIDBannerCustomEvent.h"
#include "MPHTTPNetworkTaskData.h"
#include "MOPUBNativeVideoCustomEvent.h"
#include "MPAdDestinationDisplayAgent.h"
#include "MPAdView.h"
#include "MPClosableView.h"
#include "MPVASTMediaFile.h"
#include "MPImageDownloadQueue.h"
#include "FacebookNativeAdRenderer.h"
#include "MPRewardedVideoConnection.h"
#include "MPExtendedHitBoxButton.h"
#include "MPGeolocationProvider.h"
#include "MPEngineInfo.h"
#include "MPNSStringToNSURLMapper.h"
#include "MPDurationStringToTimeIntervalMapper.h"
#include "MPStringToNumberMapper.h"
#include "MPClassMapper.h"
#include "MPNSArrayMapper.h"
#include "MPVASTModel.h"
#include "MPAdAlertGestureRecognizer.h"
#include "VASTTrackingURL.h"
#include "VASTEventTracker.h"
#include "MPVASTTracking.h"
#include "MPVASTCompanionAd.h"
#include "MPGoogleAdMobBannerCustomEvent.h"
#include "MPLogEvent.h"
#include "MPMoPubNativeAdAdapter.h"
#include "AdColonyAdapterConfiguration.h"
#include "MPRewardedVideoCustomEvent.h"
#include "AdColonyRewardedVideoCustomEvent.h"
#include "MPCountdownTimerView.h"
#include "TapjoyRewardedVideoCustomEvent.h"
#include "MPVASTAd.h"
#include "MPAdConfiguration.h"
#include "MOPUBReplayView.h"
#include "MPProgressOverlayView.h"
#include "MPDiskLRUCacheFile.h"
#include "MPDiskLRUCache.h"
#include "MPVASTManager.h"
#include "MPXMLParser.h"
#include "MPVASTMacroProcessor.h"
#include "MPHTMLInterstitialCustomEvent.h"
#include "MPHTTPNetworkSession.h"
#include "MOPUBAVPlayer.h"
#include "MPRewardedVideo.h"
#include "MPIdentityProvider.h"
#include "MPGoogleAdMobNativeAdAdapter.h"
#include "MPLogging.h"
#include "MPVASTResponse.h"
#include "MPInterstitialCustomEvent.h"
#include "MPNativeAdRequest.h"
#include "MPStreamAdPlacementData.h"
#include "MPNativeAdRendererConfiguration.h"
#include "MPWebView.h"
#include "MPNativeAdRequestTargeting.h"
#include "MPBannerCustomEventAdapter.h"
#include "MPMoPubRewardedPlayableCustomEvent.h"
#include "MRBridge.h"
#include "MPConsentDialogViewController.h"
#include "MPContentBlocker.h"
#include "MPCoreInstanceProvider.h"
#include "MPGoogleAdMobRewardedVideoCustomEvent.h"
#include "MPLogManager.h"
#include "IronSourceRewardedVideoCustomEvent.h"
#include "MPStaticNativeAdRenderer.h"
#include "MPActivityItemProviderWithSubject.h"
#include "MPActivityViewControllerHelper.h"
#include "MPURLRequest.h"
#include "MPInterstitialCustomEventAdapter.h"
#include "MPVASTLinearAd.h"
#include "FacebookNativeCustomEvent.h"
#include "MPURLResolver.h"
#include "MPNativeCustomEvent.h"
#include "MPNativePositionResponseDeserializer.h"
#include "MPSharedTweet.h"
#include "MPEnhancedDeeplinkRequest.h"
#include "MPVASTStringUtilities.h"
#include "MPNativeAd.h"
#include "MPConsentManager.h"
#include "MPVASTDurationOffset.h"
#include "MPNativeView.h"
#include "MPCollectionViewAdPlacer.h"
#include "TapjoyInterstitialCustomEvent.h"
#include "VungleInstanceMediationSettings.h"
#include "VungleAdapterConfiguration.h"
#include "MRProperty.h"
#include "MRHostSDKVersionProperty.h"
#include "MRPlacementTypeProperty.h"
#include "MRStateProperty.h"
#include "MRScreenSizeProperty.h"
#include "MRSupportsProperty.h"
#include "MRViewableProperty.h"
#include "MPNativeAdRenderingImageLoader.h"
#include "MPMoPubConfiguration.h"
#include "MPAdWebViewAgent.h"
#include "SwizzleUtils.h"
#include "IronSourceLogDelegate.h"
#include "TapjoyiOS.h"
#include "MCAdsMoPubRewardedVideosDelegate.h"
#include "FacebookiOS.h"
#include "UnityAdsiOS.h"
#include "GoogleAdMobiOS.h"
#include "WrapperUtilsIos.h"
#include "MCAdsIronSourceInterstitialsDelegate.h"
#include "MCAdsIronSourceRewardedVideosDelegate.h"
#include "IronSourceBannerListeneriOS.h"
#include "MoPubBannerListeneriOS.h"
#include "MCAdsTapResearchSurveysDelegate.h"
#include "MCAdsMPInterstitialAdControllerDelegate.h"
#include "VungleiOS.h"
#include "MCAdsAdMobRewardedVideosDelegate.h"
#include "MoPubiOS.h"
#include "AdMobBannerListeneriOS.h"
#include "AdColonyiOS.h"
#include "IronSourceDelegateLog.h"
#include "IronSourceDelegate.h"
#include "AdMobInterstitialListeneriOS.h"
#include "GADFBInterstitialAd.h"
#include "GADFBUnifiedNativeAd.h"
#include "GADFBNativeRenderer.h"
#include "GADFBRewardedRenderer.h"
#include "GADFBAdapterDelegate.h"
#include "GADFBBannerAd.h"
#include "GADFBBannerRenderer.h"
#include "GADMediationAdapterFacebook.h"
#include "GADFBNativeAd.h"
#include "GADMAdapterFacebook.h"
#include "GADFBNetworkExtras.h"
#include "GADFBInterstitialRenderer.h"
#include "MCGoliathObserverIOS.h"
#include "InputBlocker.h"
#include "MCMutableSequenceCommand.h"
#include "LeaveMenuStateCommand.h"
#include "EnterMenuStateCommand.h"
#include "RefreshMenuStateCommand.h"
#include "MCTableWithNavigation.h"
#include "CustomIOS7AlertView.h"
#include "CallbackDelegate.h"
#include "BufferedTasksScheduler.h"
#include "MCMenuInputCallback.h"
#include "Line.h"
#include "MCScrollBar.h"
#include "MCLocalizationEntry.h"
#include "MCLocalizationTextEntry.h"
#include "MCLocalizationResourceEntry.h"
#include "MCInputBar.h"
#include "ReplaceableSprite.h"
#include "MCBlockCommand.h"
#include "MCTextField.h"
#include "KeyboardInput.h"
#include "Callback.h"
#include "MCSequenceCommand.h"
#include "MCActionsManager.h"
#include "MCWaitCommand.h"
#include "TableScrollAction.h"
#include "MCClassValue.h"
#include "MCSelectorValue.h"
#include "MCCGSizeValue.h"
#include "MCCGPointValue.h"
#include "CCMutableCellTable.h"
#include "CCMutableCellTableMenu.h"
#include "CCMenuItemLabelExtendedInput.h"
#include "CCMenuItemSpriteExtendedInput.h"
#include "URLFileDownloader.h"
#include "TableEntry.h"
#include "CCTableMenu.h"
#include "CCTable.h"
#include "CCMenuItemDraggable.h"
#include "CCMenuItemDrag.h"
#include "CCMenuInputForwarder.h"
#include "MCColor3BValue.h"
#include "MCColor4BValue.h"
#include "MCColor4FValue.h"
#include "Mesh.h"
#include "MeshCache.h"
#include "MCLocalizationManager.h"
#include "FireAndForgetNode.h"
#include "CCTransitionFadeAlt.h"
#include "OpenUDID.h"
#include "ConfigurationDownloader.h"
#include "DatePickerInput.h"
#include "MenuState.h"
#include "MenuStateStackEntry.h"
#include "MCMenuStateManager.h"
#include "MCCycleTable.h"
#include "CCMenuExtendedInput.h"
#include "MCConfigurationData.h"
#include "SoundEffectInstance.h"
#include "SoundEffectEntry.h"
#include "AudioManager.h"
#include "MCObjectPool.h"
#include "MCSpawnCommand.h"
#include "StateSelectors.h"
#include "State.h"
#include "StateManager.h"
#include "MCStoreProductViewController.h"
#include "StoreView.h"
#include "SimplePing.h"
#include "HTTPRequestWrapper.h"
#include "MCCycleTableWithNavigation.h"
#include "MCCommandQueue.h"
#include "SimpleAlert.h"
#include "CCLineProgressTo.h"
#include "CCLineProgressFromTo.h"
#include "CustomAction.h"
#include "CCMoveToFollow.h"
#include "iShmoopi.h"
#include "ShmoopiKeychainUtils.h"
#include "Kartzela.h"
#include "JailBreakChecks.h"
#include "MCAdjustWrapper.h"
#include "MCUserAcquisitionIOSFacade.h"
#include "MCUserAcquisitionFacade.h"
#include "VungleNetworkOperation.h"
#include "VNGFileSizeTracker.h"
#include "VungleURLCoder.h"
#include "VunglePlacementsCoordinator.h"
#include "VungleSDK.h"
#include "VungleUtil.h"
#include "VNGSendReportAdsOperation.h"
#include "VungleFlexViewAnimator.h"
#include "VungleGzipUnzipper.h"
#include "VungleAdPart.h"
#include "VungleWebViewUserAgentProvider.h"
#include "VungleAdViewController.h"
#include "VungleNetworkResponse.h"
#include "VungleLogCoordinator.h"
#include "VNGUserLocalConsentMessage.h"
#include "VNGUserAgentOperation.h"
#include "VNGPersistenceManager.h"
#include "VungleMRAIDScreenUtils.h"
#include "VungleDownloadOperation.h"
#include "VungleMRAIDReportBuilder.h"
#include "VungleDiscSpaceProvider.h"
#include "VungleInternalMRAIDAd.h"
#include "VNGNetworkManager.h"
#include "VungleMRAIDViewProperties.h"
#include "VungleUnzipper.h"
#include "VungleRequestAdController.h"
#include "VungleBackoffIdentifierOperation.h"
#include "VNGPersistenceHelperEraseChannel.h"
#include "VungleLegacyAdReport.h"
#include "VungleReportAdController.h"
#include "VungleAdRequestBodyBuilder.h"
#include "VungleCustomMRAIDViewController.h"
#include "VungleJavascriptGeneratorFactory.h"
#include "VungleTPATURL.h"
#include "VNGAdRequestCoordinator.h"
#include "VungleMRAIDAd.h"
#include "VungleRequestStreamingAdController.h"
#include "VungleReachability.h"
#include "VungleConfigRequestBodyBuilder.h"
#include "VungleMRAIDViewController.h"
#include "VungleNativeCommandHandler.h"
#include "VungleAdPreparerFactory.h"
#include "VunglePlayabilityCoordinator.h"
#include "VungleCustomPresentationViewController.h"
#include "VungleDeviceInformationProvider.h"
#include "VungleNotifyPrepareStoreSuccessGenerator.h"
#include "VungleSDKVersionManager.h"
#include "VungleMRAIDAsset.h"
#include "VungleMRAIDViewPropertiesFactory.h"
#include "VungleHTTPResponseHelper.h"
#include "VungleThirdPartyMRAIDAd.h"
#include "VungleConfigController.h"
#include "VungleLineReader.h"
#include "VungleLegacyAdPreparer.h"
#include "VunglePlacement.h"
#include "VungleUploadOperation.h"
#include "VungleCoreTelephonyProvider.h"
#include "VungleURLConfiguration.h"
#include "VunglePostRollWebView.h"
#include "VunglePropertiesChangeGenerator.h"
#include "VungleNewRequestController.h"
#include "VungleGCDTimer.h"
#include "VunglePlayOptionsProvider.h"
#include "VungleInternalMRAIDViewController.h"
#include "VungleBackoffCalculator.h"
#include "VungleWillPlayAdRequestBodyBuilder.h"
#include "VungleMRAIDBridge.h"
#include "VungleJSCommandOperation.h"
#include "VungleMRAIDCloseCommand.h"
#include "VungleMRAIDExpandCommand.h"
#include "VungleMRAIDResizeCommand.h"
#include "VungleMRAIDUseCustomCloseCommand.h"
#include "VungleMRAIDSetOrientationPropertiesCommand.h"
#include "VungleMRAIDOpenCommand.h"
#include "VungleMRAIDCreateCalendarEventCommand.h"
#include "VungleMRAIDPlayVideoCommand.h"
#include "VungleMRAIDStorePictureCommand.h"
#include "VungleJSExpressionOperation.h"
#include "VungleMRAIDPlayHTML5VideoCommand.h"
#include "VungleMRAIDTPATCommand.h"
#include "VungleMRAIDConsentCommand.h"
#include "VungleUIActionCommand.h"
#include "VungleUIActionValueCommand.h"
#include "VungleMRAIDSuccessfulViewCommand.h"
#include "VungleMRAIDErrorCommand.h"
#include "VunglePrepareStoreViewCommand.h"
#include "VunglePresentStoreViewCommand.h"
#include "VungleUnknownCommand.h"
#include "VungleViewInfo.h"
#include "VungleFlexViewPresentationManager.h"
#include "VungleLogLineJSONValueTransformer.h"
#include "VNGStoreKitProductViewProvider.h"
#include "VungleRetrieveAssetOperation.h"
#include "VungleMRAIDJS.h"
#include "VungleAdContainerView.h"
#include "VungleUnzipAssetOperation.h"
#include "VungleHTTPLogSender.h"
#include "VungleAdPreparer.h"
#include "VungleSDKInitializer.h"
#include "VungleMRAIDAdPreparer.h"
#include "VungleConcurrentOperation.h"
#include "VungleTapPassingView.h"
#include "VungleButton.h"
#include "VungleProgressBar.h"
#include "VungleUIFactory.h"
#include "VungleZipArchiver.h"
#include "VNGNofityPresentStoreFinishedGenerator.h"
#include "VungleOperation.h"
#include "VungleVideoPlayer.h"
#include "VungleNewRequestOperation.h"
#include "VungleMRAIDAdReport.h"
#include "VungleOperationConditionEvaluator.h"
#include "VungleJSONConverter.h"
#include "VungleMRAIDCommandFactory.h"
#include "VungleNetworkRequestBodyBuilder.h"
#include "VungleWebViewFacade.h"
#include "VungleConfigOperation.h"
#include "VNGAppLifecycleCoordinator.h"
#include "VungleVDUIDProvider.h"
#include "VungleReportIncentivizedController.h"
#include "VungleAd.h"
#include "VungleGroupOperation.h"
#include "VungleReportRequestBodyBuilder.h"
#include "VungleLogger.h"
#include "VNGOperationQueue.h"
#include "VungleMRAIDController.h"
#include "VunglePrepareThirdPartyMRAIDAdOperation.h"
#include "VungleAdFactory.h"
#include "VungleNotifyReadyGenerator.h"
#include "VungleThirdPartyMRAIDAdPreparer.h"
#include "VNGUserConsentInfoModel.h"
#include "VungleLogEntry.h"
#include "VungleAdLegacy.h"
#include "VunglePublisherInformationProvider.h"
#include "VungleShapes.h"
#include "VungleReportIncentivizedRequestBodyBuilder.h"
#include "VungleAdReport.h"
#include "VNGMoatViewableState.h"
#include "VNGMoatBaseVideoTracker.h"
#include "VNGMoatJSONUtil.h"
#include "VNGMoatWKWebViewBridge.h"
#include "VNGMoatBaseTracker.h"
#include "VNGMoatReactiveVideoTracker.h"
#include "VNGMoatJSUpdateTimer.h"
#include "VNGMoatBridge.h"
#include "VNGMoatOptions.h"
#include "VNGMoatAnalytics.h"
#include "VNGMoatUIWebViewBridge.h"
#include "VNGMoatConfig.h"
#include "VNGMoatTouchGestureRecognizer.h"
#include "VNGMoatGMAInterstitialTracker.h"
#include "VNGMoatNativeDisplayTracker.h"
#include "VNGMoatVideoTracker.h"
#include "VNGMoatWeakTimerHandler.h"
#include "VNGMoatVideoUtil.h"
#include "VNGMoatRenderState.h"
#include "VNGMoatHitTestResult.h"
#include "VNGMoatUIUtil.h"
#include "VNGMoatWebTracker.h"
#include "VNGMoatWebViewAndBridge.h"
#include "VNGMoatDummyWebViewDelegate.h"
#include "VNGMoatCoreUtil.h"
#include "VNGMoatOnOff.h"
#include "VNGMoatAdEvent.h"
#include "VNGMoatAVVideoTracker.h"
#include "VNGMoatLogging.h"
#include "GADMediationAdapterVungle.h"
#include "VungleAdNetworkExtras.h"
#include "GADMAdapterVungleRewardedAd.h"
#include "VungleRouterConsent.h"
#include "GADMAdapterVungleInterstitial.h"
#include "GADMAdapterVungleRewardBasedVideoAd.h"
#include "VungleRouter.h"
#include "GADMAdapterVungleUtils.h"
#include "Adjust.h"
#include "ADJInternalState.h"
#include "ADJActivityHandler.h"
#include "ADJActivityKindUtil.h"
#include "ADJActivityPackage.h"
#include "ADJActivityState.h"
#include "ADJAdjustFactory.h"
#include "ADJLogger.h"
#include "ADJPackageHandler.h"
#include "ADJPackageBuilder.h"
#include "ADJRequestHandler.h"
#include "ADJUtil.h"
#include "ADJEvent.h"
#include "ADJDeviceInfo.h"
#include "ADJAttributionHandler.h"
#include "ADJAttribution.h"
#include "ADJConfig.h"
#include "ADJTimerOnce.h"
#include "ADJTimerCycle.h"
#include "ADJResponseData.h"
#include "ADJSessionResponseData.h"
#include "ADJSdkClickResponseData.h"
#include "ADJEventResponseData.h"
#include "ADJAttributionResponseData.h"
#include "ADJSessionSuccess.h"
#include "ADJSessionFailure.h"
#include "ADJConnectionValidator.h"
#include "ADJEventSuccess.h"
#include "ADJEventFailure.h"
#include "ADJSystemProfile.h"
#include "ADJBackoffStrategy.h"
#include "ADJSdkClickHandler.h"
#include "ADJKeychain.h"
#include "ADJSessionParameters.h"
#include "ISFormatterFabric.h"
#include "ISSegment.h"
#include "ISBannerManager.h"
#include "ISError.h"
#include "ISAdapterDispatcherProxy.h"
#include "ISPlacement.h"
#include "ISRewardedVideoProductSettings.h"
#include "ISInterstitialDemandOnlyHelper.h"
#include "ISHelpers.h"
#include "ISRewardedVideoManager.h"
#include "ISUtils.h"
#include "ISDelegateThrottler.h"
#include "ISConsoleLogger.h"
#include "ISBannerProductSettings.h"
#include "ISProductSettings.h"
#include "CacheInfo.h"
#include "IronSourceSdk.h"
#include "ISRISAdapter.h"
#include "IronSource.h"
#include "ISPlacementInfo.h"
#include "ISOutcomeEventsFormatter.h"
#include "ISEventsSettings.h"
#include "ISDailyCappingManager.h"
#include "BnDelegateWrapper.h"
#include "ISRewardedVideoDemandOnlyHelper.h"
#include "ISBnSmash.h"
#include "ISPlacementCappingManager.h"
#include "ISAdapterConfig.h"
#include "ISLoggersSettings.h"
#include "ISInterstitialProductSettings.h"
#include "ISIntegrationHelper.h"
#include "ISRewardedVideoEventsEngine.h"
#include "ISRewardedVideoSMASH.h"
#include "ISConfigurations.h"
#include "ISBaseManager.h"
#include "ISSupersonicAdsConfiguration.h"
#include "ISAdapterLoggerProxy.h"
#include "ISSessionDepthManager.h"
#include "ISInterstitialManager.h"
#include "ISInterstitialSMASH.h"
#include "ISServerResponseParser.h"
#include "ISBaseSMASH.h"
#include "ISDefaultEventStorageHelper.h"
#include "ISServerResponseValidator.h"
#include "ISBannerSize.h"
#include "ISRewardedVideoDelegateWrapper.h"
#include "ISKeyValueStorageProvider.h"
#include "ISLogger.h"
#include "ISIronBeastEventsFormatter.h"
#include "ISSupersonicAdsAdapter.h"
#include "ISEventsEngine.h"
#include "BannerDelegateThrottler.h"
#include "ISOfferwallManager.h"
#include "ISOfferwallProductSettings.h"
#include "ISInterstitialDelegateWrapper.h"
#include "ISLoggerManager.h"
#include "ISUserDefaultKeyValueStorage.h"
#include "ISEventSender.h"
#include "ISBannerView.h"
#include "ISPlacementsRepository.h"
#include "ISPublisherLogger.h"
#include "ISBaseAdapter.h"
#include "ISEventData.h"
#include "ServerLoggerEntry.h"
#include "SendingCalc.h"
#include "ISServerLogger.h"
#include "ISDemandOnlyModeHelper.h"
#include "ISInterstitialEventsEngine.h"
#include "ISEventsReporting.h"
#include "SSWVBrowsingConfiguration.h"
#include "SSWVMessageFunctionParameter.h"
#include "SSWVUIWebView.h"
#include "SSWVWebViewFactory.h"
#include "SSWVWKWebView.h"
#include "SSWVBridge.h"
#include "SSWVMessage.h"
#include "SSWVConnectivityConfiguration.h"
#include "SSWVMessageFunction.h"
#include "SSEDeviceContext.h"
#include "SSEScreenContext.h"
#include "SSEApplicationContext.h"
#include "ISNSoundSamplerRingerChecker.h"
#include "ISNLightCacheManager.h"
#include "ISOrientationData.h"
#include "SSEUrlHandler.h"
#include "SSEReachability.h"
#include "SSEDeviceStatus.h"
#include "SSEReachabilityManager.h"
#include "SSEOrientationContext.h"
#include "SupersonicAdsViewController.h"
#include "ISNViewControllerPresentationConfiguration.h"
#include "ISHybridObject.h"
#include "ISNPresentationStrategyStandAloneView.h"
#include "ISOrientationManager.h"
#include "ISOrientationPolicy.h"
#include "ISAbstractView.h"
#include "ISNAdViewJSInterfaceHandler.h"
#include "ISOrientationUtillis.h"
#include "ISConstrainsHelper.h"
#include "ISSplitViewController.h"
#include "SSAHelperMethods.h"
#include "ISNAppOrientationHolder.h"
#include "ISNAppOrientationCalculator.h"
#include "ISNRingerCheckerController.h"
#include "SupersonicAdsAdvertiser.h"
#include "ISNStandaloneViewPresentationConfiguration.h"
#include "ISHTTPRequestsDispatcher.h"
#include "SSADemandSource.h"
#include "ISProductContext.h"
#include "ISNAdView.h"
#include "ISMutableOrderedDictionary.h"
#include "SSAWebView.h"
#include "ISNProductViewController.h"
#include "ISNViewVisibilityParameters.h"
#include "SSAJSInterfaceHandler.h"
#include "SSACommManager.h"
#include "ISNProductPresenterJSHandler.h"
#include "SSADataManager.h"
#include "SSASettings.h"
#include "ISNMOATManager.h"
#include "SSAGeneralParameters.h"
#include "ISNProductPresenter.h"
#include "ISNOrientationJSHandler.h"
#include "ISNPresentationStrategyViewController.h"
#include "ISAbstractViewController.h"
#include "SupersonicLogManager.h"
#include "SSADownloadManager.h"
#include "ISAppStoreInsideSession.h"
#include "ISNNativeSessionConfiguration.h"
#include "ISAppStoreObject.h"
#include "SupersonicAdsView.h"
#include "ISNAdViewLogic.h"
#include "ISAppStoreViewController.h"
#include "ISNRingerButtonJSHandler.h"
#include "SupersonicAdsPublisher.h"
#include "ISNMOATJSInterface.h"
#include "SSAProductParameters.h"
#include "SSADemandSourcesCollection.h"
#include "IROMoatViewableState.h"
#include "IROMoatBaseVideoTracker.h"
#include "IROMoatJSONUtil.h"
#include "IROMoatWKWebViewBridge.h"
#include "IROMoatMPVideoTracker.h"
#include "IROMoatBaseTracker.h"
#include "IROMoatReactiveVideoTracker.h"
#include "IROMoatJSUpdateTimer.h"
#include "IROMoatBridge.h"
#include "IROMoatOptions.h"
#include "IROMoatAnalytics.h"
#include "IROMoatUIWebViewBridge.h"
#include "IROMoatConfig.h"
#include "IROMoatTouchGestureRecognizer.h"
#include "IROMoatGMAInterstitialTracker.h"
#include "IROMoatNativeDisplayTracker.h"
#include "IROMoatVideoTracker.h"
#include "IROMoatWeakTimerHandler.h"
#include "IROMoatVideoUtil.h"
#include "IROMoatRenderState.h"
#include "IROMoatHitTestResult.h"
#include "IROMoatUIUtil.h"
#include "IROMoatWebTracker.h"
#include "IROMoatWebViewAndBridge.h"
#include "IROMoatDummyWebViewDelegate.h"
#include "IROMoatCoreUtil.h"
#include "IROMoatOnOff.h"
#include "IROMoatAdEvent.h"
#include "IROMoatLocationFetch.h"
#include "IROMoatLocationManager.h"
#include "IROMoatAVVideoTracker.h"
#include "IROMoatLogging.h"
#include "GADMediationAdapterUnity.h"
#include "GADMAdapterUnityRewardedAd.h"
#include "GADMAdapterUnity.h"
#include "GADMAdapterUnitySingleton.h"
#include "FBSDKBasicUtility.h"
#include "FBSDKTypeUtility.h"
#include "MCPromoPopup.h"
#include "MCPromoDebugPopups.h"
#include "MCPromoLocalizationDelegate.h"
#include "MCPromoSystemClient.h"
#include "MCPromoSystemNotificationCenter.h"
#include "MCPromoCyclicTableArrowAnimationModel.h"
#include "MCPromoCyclicTable.h"
#include "MCPromoCyclicTableArrowViewNode.h"
#include "MCPromoSystemNotification.h"
#include "MCPromoConfigurationManager.h"
#include "MCPromoManager.h"
#include "MCPromoButton.h"
#include "MCPromoDebugScreen.h"
#include "MCPromoCyclicTableArrowNode.h"
#include "MCPromoDebugBadges.h"
#include "GADGestureRecognizer.h"
#include "GADGestureIdUtil.h"
#include "GADMRAIDActionMonitor.h"
#include "GADMediationRewardBasedVideoAdRenderer.h"
#include "GADNetworkUtilizationMonitor.h"
#include "GADNativeMuteThisAdLoaderOptions.h"
#include "GADSearchBannerView.h"
#include "GADViewControllerPresenter.h"
#include "GADInAppPurchaseProductCache.h"
#include "DFPBannerView.h"
#include "GADMediationInterstitialAdConfiguration.h"
#include "GADLogger.h"
#include "GADAd.h"
#include "GADNativeAdViewMonitor.h"
#include "DFPBannerViewOptions.h"
#include "GADWebAdView.h"
#include "GADNetworkAdLoader.h"
#include "DFPInternalBannerView.h"
#include "GADVideoPlayer.h"
#include "GADMediationInterstitialAdRenderer.h"
#include "GADRTBMediationRewardBasedVideoAdRenderer.h"
#include "GADContentSizeMonitor.h"
#include "GADRequestConfiguration.h"
#include "GADManualImpressionMonitor.h"
#include "GADJSCoreJSFunction.h"
#include "GADNetwork.h"
#include "GADCorrelatorAdLoaderOptions.h"
#include "GADNativeAdAttributionView.h"
#include "GADAppOpenAdView.h"
#include "GADComposeViewControllerDelegate.h"
#include "GADInternalNativeAd.h"
#include "GADVideoLoggingContextSource.h"
#include "GADVideoMetadataMonitor.h"
#include "GADEventLogger.h"
#include "GADAdapterInitializer.h"
#include "GADMediatedMediaContent.h"
#include "GADJSCoreNavigator.h"
#include "GADRequestStatisticsSignals.h"
#include "GADARWorldTrackingConfigurationStub.h"
#include "GADDefaultInAppPurchase.h"
#include "GADUnifiedNativeAdView.h"
#include "GADInternalSearchBannerView.h"
#include "GADActionURLHandler.h"
#include "GADMediaView.h"
#include "GADMediationNativeAdConfiguration.h"
#include "GADMultipleAdsAdLoaderOptions.h"
#include "GADTouchGestureRecognizer.h"
#include "GADOverlayView.h"
#include "GADInlineInterstitialAdRenderer.h"
#include "GADPushTransitionView.h"
#include "GADMRAIDResizeProperties.h"
#include "GADCustomEventRequest.h"
#include "GADExpandActionMonitor.h"
#include "GADPerformanceMetrics.h"
#include "GADObserverCollection.h"
#include "GADVideoOptions.h"
#include "GADOpenActionMonitor.h"
#include "GADDynamicHeightSearchBannerView.h"
#include "GADAdLifecycleEventPingMonitor.h"
#include "GADNativeClickConfirmingViewMonitor.h"
#include "DFPCustomRenderedAd.h"
#include "GADRTBAdapterSignalSource.h"
#include "GADOpenDeeplinkMonitor.h"
#include "GADRecursiveAdRenderer.h"
#include "GADServerResponse.h"
#include "GADURLSessionTransaction.h"
#include "GADMediationRewardedAdConfiguration.h"
#include "GADCanOpenURLsMonitor.h"
#include "GADVideoAnimationConfig.h"
#include "GADStoreKitProductAnimationConfig.h"
#include "GADAnimationConfig.h"
#include "GADCustomEventInterstitialAdRenderer.h"
#include "GADPresentationMonitor.h"
#include "GADRewardBasedVideoAdController.h"
#include "GADBlockTimerTarget.h"
#include "GADAdVisibilityMonitor.h"
#include "GADMediatedUnifiedNativeAdNotificationSource.h"
#include "GADMediationNativeAdRenderer.h"
#include "GADDeviceOrientationSignals.h"
#include "GADRTBMediationNativeAdRenderer.h"
#include "GADCustomEventBannerAdRenderer.h"
#include "GADDeviceOrientationSignalCache.h"
#include "GADOpenGLMonitor.h"
#include "GADAudioSession.h"
#include "GADRTBMediationSignalsConfiguration.h"
#include "GADRTBRequestParameters.h"
#include "GADDeviceAudioSignals.h"
#include "GADMediatedIntermission.h"
#include "GADNativeAdImage.h"
#include "GADInlineBannerAdRenderer.h"
#include "GADCloseButton.h"
#include "GADAdData.h"
#include "GADFullScreenPropertiesActionMonitor.h"
#include "GADNativeAdFeatures.h"
#include "GADJSCoreConsole.h"
#include "GADWebViewJSFunction.h"
#include "GADFluidCroppingAdView.h"
#include "GADRefreshMonitor.h"
#include "GADImpressionMonitor.h"
#include "GADFullScreenAdViewController.h"
#include "GADInstreamMediaContent.h"
#include "GADRewardedSignalConfiguration.h"
#include "GADBlockInvocation.h"
#include "GADInstreamNativeAd.h"
#include "GADAdMediaContent.h"
#include "GADSwappableView.h"
#include "GADDevice.h"
#include "GADNativeAdImageAdLoaderOptions.h"
#include "GADBrowserViewController.h"
#include "GADNativeAdSettings.h"
#include "GADTwoFingersLongPressGestureRecognizer.h"
#include "GADNativeSignalConfiguration.h"
#include "GADNativeAdViewAdOptions.h"
#include "GADBinaryHeap.h"
#include "GADExtras.h"
#include "GADMediatedNativeAdMonitor.h"
#include "GADURLOpener.h"
#include "GADNativeAdAttribution.h"
#include "GADBannerView.h"
#include "GADURLPingData.h"
#include "GADWebViewPinger.h"
#include "GADActiveViewReporter.h"
#include "GADIntermission.h"
#include "DFPInterstitial.h"
#include "GADInterstitialAd.h"
#include "GADVideoPingMonitor.h"
#include "GADURLSessionTransactionMonitor.h"
#include "GADCorrelator.h"
#include "GADSchedulerTask.h"
#include "GADScheduler.h"
#include "GADRTBMediationBannerAdRenderer.h"
#include "GADCustomEventNativeAdRenderer.h"
#include "GADVideoActionMonitor.h"
#include "GADInlineSingleNativeAdRenderer.h"
#include "GADCharacterSets.h"
#include "GADCrashReporter.h"
#include "GADAdPresenter.h"
#include "GADAdLoader.h"
#include "GADInAppStoreMonitor.h"
#include "GADGMSGMonitor.h"
#include "GADEventConsoleLogger.h"
#include "GADSignalGenerator.h"
#include "GADPrecacheMonitor.h"
#include "GADAppEventMonitor.h"
#include "GADNativeAssetViewTracker.h"
#include "GADCloseButtonMonitor.h"
#include "GADDebugOptionsViewController.h"
#include "GADCustomEventExtras.h"
#include "GADTestLabel.h"
#include "GADNetworkLogger.h"
#include "GADUnclickableView.h"
#include "GADMRAIDResizePresenter.h"
#include "GADStoreKitProductOpener.h"
#include "GADStoreKitProductInlineRenderer.h"
#include "GADCustomCloseActionMonitor.h"
#include "GADActiveViewMonitor.h"
#include "GADDeallocationMonitor.h"
#include "GADAdLoadMonitor.h"
#include "GADScrollMonitor.h"
#include "GADMediatedNativeAdNotificationSource.h"
#include "GADThreadStop.h"
#include "GADContainerAdView.h"
#include "GADJSCoreInterface.h"
#include "GADAdapterStatus.h"
#include "GADInitializationStatus.h"
#include "GADTargeting.h"
#include "GADMediaContent.h"
#include "GADBackgroundTaskPinger.h"
#include "GADPinger.h"
#include "GADAdMetadata.h"
#include "GADPersistentStateMonitor.h"
#include "GADView.h"
#include "GADViewVisibilityMonitor.h"
#include "GADVideoController.h"
#include "GADMRewardedAdNetworkConnector.h"
#include "GADDisplayAdMeasurement.h"
#include "GADNativeAd.h"
#include "GADRequestError.h"
#include "GADEventContext.h"
#include "GADCacheMonitor.h"
#include "GADApplication.h"
#include "GADAlert.h"
#include "GADVideoConfiguration.h"
#include "GADInterstitialSignalConfiguration.h"
#include "GADContentQueue.h"
#include "GADInAppPurchase.h"
#include "GADSafeBrowsingMonitor.h"
#include "GADAVPlayerItemLogger.h"
#include "GADFluidContainerAdView.h"
#include "GADWebViewJSContext.h"
#include "GADUnifiedNativeAd.h"
#include "GADMediationBannerAdConfiguration.h"
#include "GADUserPreferences.h"
#include "GADUnrenderedAd.h"
#include "GADNativeAppInstallAdView.h"
#include "GADAdReward.h"
#include "GADDelayedRenderer.h"
#include "GADJSCoreEnvironment.h"
#include "GADAdExposureMonitor.h"
#include "GADStoreKitProductViewController.h"
#include "GADAdVerificationMonitor.h"
#include "GADDynamicHeightSearchRequest.h"
#include "GADRefreshTimer.h"
#include "GADNativeAdClickAndImpressionMonitor.h"
#include "GADFramerateMonitor.h"
#include "GADRewardBasedVideoAd.h"
#include "GADRootViewControllerProvider.h"
#include "GADMediationStatistics.h"
#include "GADAugmentedRealityWebView.h"
#include "GADContent.h"
#include "GADAdChoicesView.h"
#include "GADNativeContentAd.h"
#include "GADApplicationVolumeMonitor.h"
#include "GADRequest.h"
#include "GADIntermissionStateMonitor.h"
#include "GADNativeAdViewTracker.h"
#include "GADPlaceholderJSContext.h"
#include "GADJSContext.h"
#include "GADJSFunction.h"
#include "GADInternalBannerView.h"
#include "GADSafeBrowsingReport.h"
#include "GADMediationSizeChangeMonitor.h"
#include "GADAdMetadataMonitor.h"
#include "GADSignalConfiguration.h"
#include "GADMemoryUtilizationMonitor.h"
#include "GADProductsRequest.h"
#include "GADClickProtection.h"
#include "GADNativeAdContext.h"
#include "GADSettings.h"
#include "GADAdVerificationNativeMonitor.h"
#include "GADRTBMediationInterstitialAdRenderer.h"
#include "GADNotificationCenter.h"
#include "GADSignalData.h"
#include "GADActiveViewContext.h"
#include "GADResourceBuffer.h"
#include "GADAdVerification.h"
#include "GADServerSideVerificationOptions.h"
#include "GADWiggleGestureRecognizer.h"
#include "GADAdVerificationMonitoredView.h"
#include "GADAdVerificationReporter.h"
#include "GADWebAdViewInterceptor.h"
#include "GADURLSession.h"
#include "GADVideoAssetLoader.h"
#include "GADAdVideoController.h"
#include "GADAudioVideoManager.h"
#include "GADJSCorePinger.h"
#include "GADJSCoreJSContext.h"
#include "GADExpandActionMonitorConfiguration.h"
#include "GADDelayedAdRenderingOptions.h"
#include "GADSDKCoreContext.h"
#include "GADServerTransaction.h"
#include "GADMediationAdConfiguration.h"
#include "GADShingleHashTuple.h"
#include "GADNativeTemplateView.h"
#include "GADDebugGestureMonitor.h"
#include "GADInlineMultipleNativeAdsRenderer.h"
#include "GADPlaceholderWebViewController.h"
#include "GADWebViewController.h"
#include "GADRewardedEventMonitor.h"
#include "GADDelayPageCloseMonitor.h"
#include "GADJSCoreTimers.h"
#include "GADNetworkUtilizationStatistics.h"
#include "GADBannerAd.h"
#include "GADSQLStorage.h"
#include "GADMuteThisAdReason.h"
#include "GADSignals.h"
#include "GADNativeExpressAdView.h"
#include "GADBlockSignalSource.h"
#include "GADNativeCustomTemplateAd.h"
#include "GADVideoPlayerView.h"
#include "GADAdLoaderOptions.h"
#include "GADInAppPurchaseTransactionReporter.h"
#include "GADMainWindowView.h"
#include "GADNativeContentAdView.h"
#include "GADAppOpenAd.h"
#include "GADNetworkVideoPlayerItem.h"
#include "GADContentHashingController.h"
#include "GADOperation.h"
#include "GADJSContextController.h"
#include "GADAssetLoadingVideoPlayerItem.h"
#include "GADNativeAdMediaAdLoaderOptions.h"
#include "GADStatelessActionHandler.h"
#include "GADMediationCredentials.h"
#include "GADMediationServerConfiguration.h"
#include "GADWKScriptMessageHandler.h"
#include "GADWebKitWebViewController.h"
#include "GADFIRAnalyticsStub.h"
#include "GADStubsForAPMAnalytics.h"
#include "GADAnalytics.h"
#include "GADViewHierarchyTraverser.h"
#include "GADOrientationMonitor.h"
#include "GADJSCoreLocalStorage.h"
#include "GADBannerSignalConfiguration.h"
#include "GADWebViewControllerMap.h"
#include "GADSearchRequest.h"
#include "GADNativeAppInstallAd.h"
#include "GADServerRequest.h"
#include "GADStatusBarMonitor.h"
#include "GADOnePixelImpressionMonitor.h"
#include "GADStaticSignal.h"
#include "GADMediationRewardedAdRenderer.h"
#include "GADScreenNameReporter.h"
#include "GADMediatedAdRenderer.h"
#include "GADRemoteConfigurationSource.h"
#include "DFPRequest.h"
#include "GADAdSource.h"
#include "GADAdCloseMonitor.h"
#include "GADRewardedAd.h"
#include "GADSKStoreProductViewControllerDelegate.h"
#include "GADRTBAdapterManager.h"
#include "GADUIWebViewDelegateProxy.h"
#include "GADMediationBannerAdRenderer.h"
#include "GADLocationService.h"
#include "GADGCache.h"
#include "GADMobileAds.h"
#include "GADMRewardBasedVideoAdNetworkConnector.h"
#include "GADWebViewConfiguration.h"
#include "GADLocation.h"
#include "GADAnimateViewActionMonitor.h"
#include "GADUIKitWebViewController.h"
#include "GADInterstitial.h"
#include "GADClosePresenterActionMonitor.h"
#include "GADCroppingAdView.h"
#include "GADOMIDAdEvents.h"
#include "GADOMIDAdSession.h"
#include "GADOMIDAdSessionConfiguration.h"
#include "GADOMIDAdSessionContext.h"
#include "GADOMIDAdSessionRegistry.h"
#include "GADOMIDAdSessionStatePublisher.h"
#include "GADOMIDAdViewCache.h"
#include "GADOMIDBridge.h"
#include "GADOMIDCommand.h"
#include "GADOMIDContext.h"
#include "GADOMIDDevice.h"
#include "GADOMIDDictionaryUtil.h"
#include "GADOMIDError.h"
#include "GADOMIDEventFilter.h"
#include "GADOMIDJSExecutorFactory.h"
#include "GADOMIDJSNetworkBridge.h"
#include "GADOMIDJSTimer.h"
#include "GADOMIDLightJSExecutor.h"
#include "GADOMIDLoadTask.h"
#include "GADOMIDManager.h"
#include "GADOMIDMethodInvoker.h"
#include "GADOMIDPartner.h"
#include "GADOMIDProcessorFactory.h"
#include "GADOMIDSDK.h"
#include "GADOMIDScreenProcessor.h"
#include "GADOMIDScriptInjector.h"
#include "GADOMIDStatePublisher.h"
#include "GADOMIDStateWatcher.h"
#include "GADOMIDTreeWalker.h"
#include "GADOMIDUIWebViewJSExecutor.h"
#include "GADOMIDVASTProperties.h"
#include "GADOMIDVerificationScriptResource.h"
#include "GADOMIDVideoEvents.h"
#include "GADOMIDViewKey.h"
#include "GADOMIDViewProcessor.h"
#include "GADOMIDWKWebViewJSExecutor.h"
#include "GADOMIDWindowProcessor.h"
#include "PodsDummy_nanopb.h"
#include "ISTapjoyAdapter.h"
#include "GADMAdapterAdColonyInitializer.h"
#include "GADMAdapterAdColonyHelper.h"
#include "GADMAdapterAdColonyExtras.h"
#include "GADMediationAdapterAdColony.h"
#include "GADMAdapterAdColonyRewardedAd.h"
#include "GADMAdapterAdColony.h"
#include "TJMessageContentTracker.h"
#include "TJCWebView.h"
#include "TJContentTracker.h"
#include "Tapjoy.h"
#include "TJAdUnitJSBridge.h"
#include "TJCUIDevice.h"
#include "TJCLog.h"
#include "TJCNetReachability.h"
#include "FRPlacementContent.h"
#include "TJCUtil.h"
#include "TJCViewController.h"
#include "TJRequestForOfferwallURL.h"
#include "TJBackoff.h"
#include "TJCLoadingView.h"
#include "TJCUIWebPageView.h"
#include "TJSplitWebView.h"
#include "TJCViewHandler.h"
#include "TJFLAnimatedImageView.h"
#include "TJPlacementDelegateCpp.h"
#include "TJCVideoView.h"
#include "FRRewardRequest.h"
#include "TJAnimatedImage.h"
#include "TJNativeContentTracker.h"
#include "FRCreativeMapping.h"
#include "TJFLAnimatedImage.h"
#include "TJFLWeakProxy.h"
#include "TJCCurrencyManager.h"
#include "TJUsageTracker.h"
#include "TJUsageTracking.h"
#include "TJSplitViewUtil.h"
#include "FRInterstitialContentView.h"
#include "FRInterstitialContent.h"
#include "FRPurchaseRequest.h"
#include "TJWebViewJavascriptBridgeBase.h"
#include "TJWKWebViewJavascriptBridge.h"
#include "TJCCurrencyModel.h"
#include "TJCVideoManager.h"
#include "FRSNTP.h"
#include "TJSystemPlacement.h"
#include "FRRemoteImage.h"
#include "FRContextualLayout.h"
#include "TapjoyDelegateCpp.h"
#include "TJUsageStat.h"
#include "TJUsageStatValue.h"
#include "FiveRocks.h"
#include "FRContextualButtonView.h"
#include "FRUtils.h"
#include "TJWebViewJavascriptBridge.h"
#include "TJPlacement.h"
#include "TJCBasicWebView.h"
#include "TJOMViewabilityAgent.h"
#include "TJPlacementContentTracker.h"
#include "TJActionRequest.h"
#include "TJXMLDictionaryParser.h"
#include "TJCustomStoreProductViewController.h"
#include "TJAdContentTracker.h"
#include "TJCApiKeyDecoder.h"
#include "TJCTopViewController.h"
#include "FRContextualContent.h"
#include "TJSdkConfiguration.h"
#include "FRContextualButton.h"
#include "TJCacheProtocol.h"
#include "TJRegulations.h"
#include "TJEventOptimizer.h"
#include "OMIDtapjoyMethodInvoker.h"
#include "OMIDtapjoyAdSession.h"
#include "OMIDtapjoyStateWatcher.h"
#include "OMIDtapjoyViewKey.h"
#include "OMIDtapjoyEventFilter.h"
#include "OMIDtapjoyJSTimer.h"
#include "OMIDtapjoyWKWebViewJSExecutor.h"
#include "OMIDtapjoyProcessorFactory.h"
#include "OMIDtapjoyUIWebViewJSExecutor.h"
#include "OMIDtapjoyDictionaryUtil.h"
#include "OMIDtapjoyBridge.h"
#include "OMIDtapjoyAdSessionStatePublisher.h"
#include "OMIDtapjoyVerificationScriptResource.h"
#include "OMIDtapjoyAdSessionConfiguration.h"
#include "OMIDtapjoyTreeWalker.h"
#include "OMIDtapjoyViewProcessor.h"
#include "OMIDtapjoyLightJSExecutor.h"
#include "OMIDtapjoyManager.h"
#include "OMIDtapjoyVideoEvents.h"
#include "OMIDtapjoyJSNetworkBridge.h"
#include "OMIDtapjoyJSExecutorFactory.h"
#include "OMIDtapjoyAdSessionRegistry.h"
#include "OMIDtapjoyWindowProcessor.h"
#include "OMIDtapjoyError.h"
#include "OMIDtapjoyCommand.h"
#include "OMIDtapjoyScreenProcessor.h"
#include "OMIDtapjoyContext.h"
#include "OMIDtapjoyVASTProperties.h"
#include "OMIDtapjoyAdSessionContext.h"
#include "OMIDtapjoyAdViewCache.h"
#include "OMIDtapjoyDevice.h"
#include "OMIDtapjoyAdEvents.h"
#include "OMIDtapjoySDK.h"
#include "OMIDtapjoyPartner.h"
#include "OMIDtapjoyLoadTask.h"
#include "OMIDtapjoyStatePublisher.h"
#include "TJYMoatBridge.h"
#include "TJYMoatDecorator.h"
#include "TJYMoatUIWebViewBridge.h"
#include "TJYMoatObject.h"
#include "TJYMoatVideoUtil.h"
#include "TJYMoatUIUtil.h"
#include "TJYMoatBootstrap.h"
#include "TJYMoatDummyWebViewDelegate.h"
#include "TJYMoatCoreUtil.h"
#include "TJYMoatWebView.h"
#include "TJYMoatOnOff.h"
#include "TJYMoatAdEvent.h"
#include "TJYMoatReactiveVideoTracker.h"
#include "EventDispatcherImpIOSHelper.h"
#include "ApplicationInfohelper.h"
#include "MCPURLParser.h"
#include "UserDefaultsStuff.h"
#include "MCURLSessionsManager.h"
#include "MCURLSessionDelegate.h"
#include "UIViewTouchStub.h"
#include "WebpageViewer.h"
#include "MCPReachability.h"
#include "CustomIOSAlertView.h"
#include "FileStuff.h"
#include "ISMediationManager.h"
#include "GADMAdapterIronSourceUtils.h"
#include "GADMAdapterIronSource.h"
#include "GADMediationAdapterIronSource.h"
#include "GADMAdapterIronSourceRewardedAd.h"
#include "GADMAdapterIronSourceRewarded.h"
#include "UserDefaultsUtilsStuff.h"
#include "MCPromoEventDispatcher.h"
#include "MCPromoIndirectManager.h"
#include "MCPromoAction.h"
#include "MCPromoDataAccessIndirect.h"
#include "MCPromoDataAccessLocalization.h"
#include "MCPromoDataAccessGeneric.h"
#include "MCPromoDataAccessIndirectTemplate.h"
#include "MCPromoDataAccessABtest.h"
#include "MCPromoDataAccessUserProperty.h"
#include "MCPromoDataAccessNumberProperty.h"
#include "MCPromoDataAccessPlatform.h"
#include "MCPromoDataAccess.h"
#include "MCPromoDataAccessManager.h"
#include "MCPromoOffer.h"
#include "MCPromoActionAutoFailure.h"
#include "MCPromoBadgeInfo.h"
#include "MCPromoPopUpInfo.h"
#include "MCPromoSystemBase.h"
#include "MCPromoSystem.h"
#include "MCPromoBannerSystem.h"
#include "MCPromoStoreChange.h"
#include "MCPromoTriggerEvent.h"
#include "MCPromoMultiTriggerEvent.h"
#include "MCPromoTrigger.h"
#include "MCPromoWaitForEventTrigger.h"
#include "MCPromoWaitForNestedTriggersBaseTrigger.h"
#include "MCPromoWaitForNestedTriggersTrigger.h"
#include "MCPromoWaitForSequencedNestedTriggersTrigger.h"
#include "MCPromoWaitForTimeBaseTrigger.h"
#include "MCPromoWaitForMultiDateTrigger.h"
#include "MCPromoWaitForTimeTrigger.h"
#include "MCPromoWaitForDeltaTimeTrigger.h"
#include "MCPromoTriggerUtils.h"
#include "GADMoPubNetworkExtras.h"
#include "GADMAdapterMoPubSingleton.h"
#include "GADMAdapterMoPub.h"
#include "GADMMoPubRewardedAd.h"
#include "MoPubAdapterMediatedNativeAd.h"
#include "GADMediationAdapterMoPub.h"
#include "FBANBannerAdAdapter.h"
#include "FBANInstreamAdAdapter.h"
#include "FBANInterstitialAdAdapter.h"
#include "FBANNativeAdAdapter.h"
#include "FBANRewardedVideoAdAdapter.h"
#include "FBAdAppInstallCoverView.h"
#include "FBAdArrowIconView.h"
#include "FBAdAudioMuteButton.h"
#include "FBAdBackButton.h"
#include "FBAdBackgroundStateManager.h"
#include "FBAdBackgroundStateManagerFactory.h"
#include "FBAdBannerTemplateHeaderView.h"
#include "FBAdBidPayload.h"
#include "FBAdBlurredImageView.h"
#include "FBAdBlurredOverlayView.h"
#include "FBAdBodyView.h"
#include "FBCombinedSecondaryView.h"
#include "FBAdBotDetector.h"
#include "FBAdBrowserSessionData.h"
#include "FBAdCTAButton.h"
#include "FBAdCachedObject.h"
#include "FBPlaceholderObject.h"
#include "FBAdCache.h"
#include "FBAdCandidate.h"
#include "FBAdCardToFullscreenTransition.h"
#include "FBAdCheckIcon.h"
#include "FBAdChoiceCollectionViewCell.h"
#include "FBAdChoicesButton.h"
#include "FBAdChoicesContentView.h"
#include "FBAdChoicesIcon.h"
#include "FBAdChoicesInternalView.h"
#include "FBAdChoicesView.h"
#include "FBAdChoicesViewController.h"
#include "FBAdChooseYourOwnAdCard.h"
#include "FBAdChooseYourOwnAdConfig.h"
#include "FBAdChooseYourOwnAdDataModel.h"
#include "FBAdChooseYourOwnAdViewController.h"
#include "FBAdCloseButton.h"
#include "FBAdCollectionViewFlowLayout.h"
#include "FBAdCommandProcessor.h"
#include "FBAdConcurrentArray.h"
#include "FBAdConcurrentQueue.h"
#include "FBAdConfigManager.h"
#include "FBAdConnectionInfo.h"
#include "FBAdConnectionUtility.h"
#include "FBAdConstants.h"
#include "FBAdCookieData.h"
#include "FBAdDSLBridgeViewController.h"
#include "FBAdDataModel.h"
#include "FBAdDatabaseManager.h"
#include "FBAdDebugLogging.h"
#include "FBAdCacheDebugData.h"
#include "FBAdDebugOverlay.h"
#include "FBAdDetailsAndCTAButtonContainerView.h"
#include "FBAdDetailsVerticalView.h"
#include "FBAdDetailsView.h"
#include "FBAdDevice.h"
#include "FBAdEndCardAppStoreView.h"
#include "FBAdEndCardNoMediaView.h"
#include "FBAdEndCardScreenshotView.h"
#include "FBAdEndCardViewController.h"
#include "FBAdEndToEnd.h"
#include "FBAdEnvironmentData.h"
#include "FBAdError.h"
#include "FBAdEvent.h"
#include "FBAdEventManager.h"
#include "FBAdEventToken.h"
#include "FBAdExitTransition.h"
#include "FBAdExtraHint.h"
#include "FBAdFingerprinter.h"
#include "FBAdFont.h"
#include "FBAdFormatMapper.h"
#include "FBAdFullscreenVideoController.h"
#include "FBAdFunnelLogger.h"
#include "FBAdFunnelLogging.h"
#include "FBAdGearIcon.h"
#include "FBAdHiddenContentView.h"
#include "FBAdHiddenViewController.h"
#include "FBAdHideIcon.h"
#include "FBAdIconButton.h"
#include "FBAdIconDrawer.h"
#include "FBAdIconView.h"
#include "FBAdImage.h"
#include "FBAdInMemoryCache.h"
#include "FBAdInfoButton.h"
#include "FBAdIntroCardTransition.h"
#include "FBAdIntroScreenView.h"
#include "FBAdJSBridgedInterface.h"
#include "_FBAdKVOInfo.h"
#include "_FBAdKVOSharedController.h"
#include "FBAdKVOController.h"
#include "FBAdLabel.h"
#include "FBAdLogger.h"
#include "FBAdLoggingContext.h"
#include "FBAdMediationOverlay.h"
#include "FBAdMultiProductCell.h"
#include "FBAdMultiProductView.h"
#include "FBAdNotificationCenter.h"
#include "FBAdOptionsView.h"
#include "FBAdPaddedLabel.h"
#include "FBAdPerformanceMetrics.h"
#include "FBAdPlacement.h"
#include "FBAdPlacementDefinition.h"
#include "FBAdPlayIcon.h"
#include "FBAdPlayableView.h"
#include "FBAdPlayableViewController.h"
#include "FBAdProvider.h"
#include "FBAdProviderResponse.h"
#include "FBAdProviderResponseAds.h"
#include "FBAdProviderResponseError.h"
#include "FBAdProviderResponseParser.h"
#include "FBAdProviderCannedResponse.h"
#include "FBAdProviderWithResponse.h"
#include "FBAdQualityManager.h"
#include "FBAdQualityMetric.h"
#include "FBAdQualityRule.h"
#include "FBAdQualityStatistics.h"
#include "FBAdQualityTest.h"
#include "FBAdQualityViewabilityMeasurement.h"
#include "FBAdReportIcon.h"
#include "FBAdReportingConfig.h"
#include "FBAdReportingCoordinator.h"
#include "FBAdReportingItem.h"
#include "FBAdReportingOptionCollectionViewCell.h"
#include "FBAdReportingOptionsContentView.h"
#include "FBAdReportingOptionsViewController.h"
#include "FBAdResourceLoader.h"
#include "FBAdSafariViewController.h"
#include "FBAdSafariDelegateTranslator.h"
#include "FBAdScreen.h"
#include "FBAdScrollView.h"
#include "FBAdSdkCapabilityUtility.h"
#include "FBAdSettings.h"
#include "FBAdShieldIcon.h"
#include "FBAdSimpleScrollView.h"
#include "FBAdSmallIcon.h"
#include "FBAdSplitBackgroundView.h"
#include "FBAdStarRatingView.h"
#include "FBAdStoriesPageIndicator.h"
#include "FBAdStoriesPageIndicatorItemView.h"
#include "FBAdStoriesPageView.h"
#include "FBAdStoriesView.h"
#include "FBAdTemplateFooterView.h"
#include "FBAdTemplateHeaderView.h"
#include "FBAdTimeObserver.h"
#include "FBAdTimer.h"
#include "FBAdTouchGestureRecognizer.h"
#include "FBAdTouchPassthroughView.h"
#include "FBAdTouchRecordingView.h"
#include "FBAdUIWebViewBrowserController.h"
#include "FBAdURLSession.h"
#include "FBAdURLSessionTaskContainer.h"
#include "FBAdUserReturnHandler.h"
#include "FBAdUtility.h"
#include "FBAdUtilityUserAgentProvider.h"
#include "FBAdVideoAdView.h"
#include "FBAdVideoAdViewController.h"
#include "FBAdVideoCallToActionButton.h"
#include "FBAdVideoDismissButton.h"
#include "FBAdVideoLogger.h"
#include "FBAdVideoLoggingEvent.h"
#include "FBAdVideoPlayButton.h"
#include "FBAdVideoPlayPauseButton.h"
#include "FBAdVideoPlayerAudioMeters.h"
#include "FBAdVideoPlayerView.h"
#include "FBAdVideoProgressBar.h"
#include "FBAdVideoRendererView.h"
#include "FBAdVideoScrubber.h"
#include "FBAdVideoURLWrapper.h"
#include "FBAdView.h"
#include "FBAdViewControllerProxy.h"
#include "FBAdViewInternal.h"
#include "FBAdViewabilityValidator.h"
#include "FBAdWKWebViewBrowserController.h"
#include "FBAdWatchAndActionCoverView.h"
#include "FBAdWatchAndActionTopPanelCoverView.h"
#include "FBAdWeakProxy.h"
#include "FBAdWebContentContainer.h"
#include "FBAdWebKitContentContainer.h"
#include "FBAdWebViewNavigationPanel.h"
#include "FBApplicationInterfaceOrientationProvider.h"
#include "FBAdInitSettings.h"
#include "FBAdInitResults.h"
#include "FBAudienceNetworkAds.h"
#include "FBCustomEndcardPresentation.h"
#include "FBDisplayAdAdapter.h"
#include "FBDisplayAdAdapterController.h"
#include "FBDisplayAdController.h"
#include "FBGradientView.h"
#include "FBGradientViewConfig.h"
#include "FBHTMLAdDataModel.h"
#include "FBInstreamAdButton.h"
#include "FBInstreamAdContentView.h"
#include "FBInstreamAdDataModel.h"
#include "FBInstreamAdVideoView.h"
#include "FBInstreamAdView.h"
#include "FBInstreamCallToActionView.h"
#include "FBInstreamSkipButtonView.h"
#include "FBInterstitialAd.h"
#include "FBInterstitialAdBodyView.h"
#include "FBInterstitialAdInternal.h"
#include "FBInterstitialAdMediaView.h"
#include "FBInterstitialAdMultiBodyView.h"
#include "FBInterstitialAdNativeView.h"
#include "FBInterstitialAdTextView.h"
#include "FBInterstitialAdToolbarView.h"
#include "FBInterstitialAdToolbarViewNewDesign.h"
#include "FBInterstitialAdToolbarViewOldDesign.h"
#include "FBInterstitialAdWatchAndActionView.h"
#include "FBInterstitialDisplayAdInternal.h"
#include "FBInterstitialNativeAdInternal.h"
#include "FBInterstitialPlayableAdViewController.h"
#include "FBMediaView.h"
#include "FBMediaViewDefaultVideoRenderer.h"
#include "FBMediaViewVideoRenderer.h"
#include "FBNativeAd.h"
#include "FBNativeAdBase.h"
#include "FBNativeAdBaseView.h"
#include "FBNativeAdCollectionViewAdProvider.h"
#include "FBNativeAdCollectionViewCell.h"
#include "FBNativeAdCollectionViewCellProvider.h"
#include "FBNativeAdDataModel.h"
#include "FBNativeAdMultiProductDataModel.h"
#include "FBNativeAdDetailsView.h"
#include "FBNativeAdHeaderView.h"
#include "FBNativeAdScrollView.h"
#include "FBNativeAdTableViewAdProvider.h"
#include "FBNativeAdTableViewCell.h"
#include "FBNativeAdTableViewCellProvider.h"
#include "FBNativeAdTemplateView.h"
#include "FBAdGenericHeight400View.h"
#include "FBAdGenericHeight300View.h"
#include "FBNativeAdView.h"
#include "FBNativeAdViewAttributes.h"
#include "FBNativeAdsManager.h"
#include "FBNativeBannerAd.h"
#include "FBNativeBannerAdTemplateView.h"
#include "FBAdGenericHeight100View.h"
#include "FBAdGenericHeight120View.h"
#include "FBAdGenericHeight50View.h"
#include "FBNativeBannerAdView.h"
#include "FBPlayableAdDataModel.h"
#include "FBPlayableIntroScreenView.h"
#include "FBRewardedVideoAd.h"
#include "FBRewardedVideoAdDataModel.h"
#include "FBRewardedVideoRewardData.h"
#include "FBSKStoreProductViewControllerWithOrientationMask.h"
#include "FBStoreProductViewController.h"
#include "FBVideoAdContentView.h"
#include "FBVideoAdController.h"
#include "FBWatchAndBrowseActionController.h"
#include "FBWatchAndBrowseWebView.h"
#include "FBWatchAndInstallActionController.h"
#include "FBToastStyle.h"
#include "FNFAudioQueue.h"
#include "FNFPlayerTimeObserver.h"
#include "FNFRealClock.h"
#include "FNFCoreAudioWrapper.h"
#include "FNFDefaultAudioDecoder.h"
#include "FNFIOSurfacePlayerLayer.h"
#include "FNFPlayer.h"
#include "FNFRenderingThread.h"
#include "FNFSynchronousPlayer.h"
#include "FNFColorConversion.h"
#include "FNFDefaultGLRenderer.h"
#include "FNFDefaultMetalRenderer.h"
#include "FNFGLProgram.h"
#include "FNFPlayerDisplay.h"
#include "FNFPlayerGLIOSurfaceLayer.h"
#include "FNFPlayerGLLayer.h"
#include "FNFPlayerIOSurfaceLayer.h"
#include "FNFPlayerLayer.h"
#include "FNFPlayerMetalLayer.h"
#include "FNFAssetResourceLoadingContentInformationRequest.h"
#include "FNFAssetResourceLoader.h"
#include "FNFAssetResourceLoadingDataRequest.h"
#include "FNFAssetResourceLoadingRequest.h"
#include "FNFResponseMetadata.h"
#include "FNFLocalMp4Asset.h"
#include "FNFMp4FileBasedReader.h"
#include "FNFBufferSizeDecider.h"
#include "FNFDataBlockDistributor.h"
#include "FNFMp4Asset.h"
#include "FBAssetLinearReader.h"
#include "FNFMp4AtomManager.h"
#include "FNFMp4DataLoader.h"
#include "FNFAudioFormatHelper.h"
#include "FNFIdleTimeoutManager.h"
#include "FNFDashTrackEntryContainer.h"
#include "FNFDashTrackMetadata.h"
#include "FNFMediaPresentationDescription.h"
#include "FNFMpdTimelineEntry.h"
#include "FNFDecompressionSessionWithVideoToolbox.h"
#include "FNFH264DecompressionSessionFactory.h"
#include "FNFPlayerFramesBuffer.h"
#include "FNFRealTimerManager.h"
#include "FNFRealTimer.h"
#include "FBBDBiometricSignalsManager.h"
#include "FBBDCollectedSignal.h"
#include "FBBDHelpers.h"
#include "FBBDSignal.h"
#include "FBBDSignalCollectionExecutorBuilder.h"
#include "FBBDSignalCollector.h"
#include "FBBDSignalContext.h"
#include "FBBDSignalError.h"
#include "FBBDSignalParser.h"
#include "FBBDSignalValue.h"
#include "FBBDSignalValueOrError.h"
#include "FBBDTapGestureRecognizer.h"
#include "FBBDTouchSignalManager.h"
#include "FBBDTouchSignalValue.h"
#include "FBBotDetectionCircularBuffer.h"
#include "FBBotDetectionLoggingUtils.h"
#include "FBBotDetectionSignalCollectionConstants.h"
#include "FBBotDetectionSignalCollectionManager.h"
#include "FBBotDetectionWhiteOpsHelpers.h"
#include "FBBotDetectionWhiteOpsSignalCollector.h"
#include "FBBotDetectionWhiteOpsSignals.h"
#include "PRF.h"
#include "WObfuscate.h"
#include "FBAdDSLAsset.h"
#include "FBAdDSLDataLoader.h"
#include "FBAdDSLFullScreenAdViewController.h"
#include "FBAdDSLJSScriptMessageHandler.h"
#include "FBAdDSLModel.h"
#include "FBAdDSLViewController.h"
#include "FBAdDSLViewModel.h"
#include "FBAdExponentialGeometricMovingAverage.h"
#include "FBAdNetworkQuality.h"
#include "NSData+GULGzip.h"
#include "NSString+UnityAdsError.h"
#include "NSString+Hash.h"
#include "NSDictionary+Merge.h"
#include "UIViewController+APMScreenClassName.h"
#include "UIWindow+APMScreenClassName.h"
#include "NSError+APMAdditions.h"
#include "NSData+MD5.h"
#include "NSDictionary+APMNSDictionaryQuery.h"
#include "NSString+APMD5Additions.h"
#include "NSString+URLArguments.h"
#include "NSString+APMUTF32.h"
#include "NSThread+sendBlockToBackground.h"
#include "UIImage+AFNetworkingSafeImageLoading.h"
#include "NSDictionary+Extensions.h"
#include "UIAlertView+Blocks.h"
#include "NSMutableData+TR_RNCryptor.h"
#include "NSData+RNCryptor_ConstantCompare.h"
#include "UITableView+MPTableViewAdPlacer.h"
#include "NSError+MPAdditions.h"
#include "NSError+Networking.h"
#include "NSError+MoPub.h"
#include "NSError+Initialization.h"
#include "NSError+AdLifeCycle.h"
#include "NSError+Consent.h"
#include "NSError+RateLimit.h"
#include "UIWebView+MPAdditions.h"
#include "NSString+MPAdditions.h"
#include "UIView+Helper.h"
#include "NSJSONSerialization+MPAdditions.h"
#include "NSMutableDictionary+RemovingNulls.h"
#include "NSMutableArray+RemovingNulls.h"
#include "UIDevice+MPAdditions.h"
#include "UIApplication+MPAdditions.h"
#include "NSMutableArray+MPAdditions.h"
#include "NSHTTPURLResponse+MPAdditions.h"
#include "NSURL+MPAdditions.h"
#include "NSString+MPConsentStatus.h"
#include "NSBundle+MPAdditions.h"
#include "NSDate+MPAdditions.h"
#include "NSDictionary+MPAdditions.h"
#include "UIView+MPGoogleAdMobAdditions.h"
#include "UIColor+MPAdditions.h"
#include "UICollectionView+MPCollectionViewAdPlacer.h"
#include "UIApplication+OpenUrl.h"
#include "SFSafariViewController+Navigation.h"
#include "UIResponder+Touches.h"
#include "UIGestureRecognizer+Touches.h"
#include "UITapGestureRecognizer+Touches.h"
#include "SKStoreProductViewController+ProductPage.h"
#include "NSObject+AllocExtension.h"
#include "NSMutableArray+StackExtension.h"
#include "NSMutableArray+QueueExtension.h"
#include "NSDictionary+MergeExtension.h"
#include "NSData+MD5Shmoopi.h"
#include "NSString+Vungle.h"
#include "UIView+Visibility.h"
#include "NSData+ADJAdditions.h"
#include "NSString+ADJAdditions.h"
#include "UIDevice+ADJAdditions.h"
#include "NSData+ISEncryption.h"
#include "NSString+Encryption.h"
#include "NSURLResponse+ISControllerAPI.h"
#include "NSURLRequest+ISControllerAPI.h"
#include "NSDate+TJHTTP.h"
#include "NSDictionary+TJXMLDictionary.h"
#include "NSString+TJXMLDictionary.h"
#include "NSMutableArray+LastIndexOfObjectExtension.h"
#include "NSMutableDictionary+FBAdDebugLogging.h"
#include "UIImageView+IconView.h"
#include "UIColor+FBAdQualityViewabilityMeasurement.h"
#include "UIWindow+FBAdQualityViewabilityMeasurement.h"
#include "UIView+FBAdQualityViewabilityMeasurement.h"
#include "NSURLResponse+HTTP.h"
#include "NSArray+FBAdUtility.h"
#include "NSDictionary+FBAdUtility.h"
#include "NSMutableDictionary+FBAdUtility.h"
#include "NSNumberFormatter+FBAdUtility.h"
#include "NSURLRequest+FBCURL.h"
#include "UIView+FBAdTapCheck.h"
#include "UIView+FBAdSafeAnchors.h"
#include "NSThread+FBAdUtility.h"
#include "NSString+FBAdUtility.h"
#include "NSFileManager+FBAdUtility.h"
#include "UIAlertController+FBAdUtility.h"
#include "UIView+FBNativeAdViewTag.h"
#include "NSData+FBAd.h"
#include "NSString+FBAd.h"
#include "UIView+FBToast.h"
#include "UIColor+FBAdUtils.h"
#include "NSObject-Protocol.h"
#include "TableCellProtocol-Protocol.h"
#include "MCMenuState-Protocol.h"
#include "MCInputBarDelegate-Protocol.h"
#include "ArenaLayer-Protocol.h"
#include "MCInputReceiver-Protocol.h"
#include "ApplicationInputDelegate-Protocol.h"
#include "JoystickInputViewDelegate-Protocol.h"
#include "MCLocalizationProtocol-Protocol.h"
#include "ConfigurationDownloaderDelegate-Protocol.h"
#include "UIApplicationDelegate-Protocol.h"
#include "CCDirectorDelegate-Protocol.h"
#include "ccResourcePackProtocol-Protocol.h"
#include "ccDeviceCategoryProtocol-Protocol.h"
#include "MenuSettingsViewDelegate-Protocol.h"
#include "MCUserAcquisitionDelegateProtocol-Protocol.h"
#include "CCRGBAProtocol-Protocol.h"
#include "CCScrollViewDelegate-Protocol.h"
#include "MCMenuStateManagerDelegate-Protocol.h"
#include "FABKit-Protocol.h"
#include "FABDownloadAndSaveSettingsOperationDelegate-Protocol.h"
#include "FABOnboardingOperationDelegate-Protocol.h"
#include "NSStreamDelegate-Protocol.h"
#include "NSURLSessionDelegate-Protocol.h"
#include "NSURLSessionTaskDelegate-Protocol.h"
#include "NSURLConnectionDelegate-Protocol.h"
#include "CLSURLSessionTaskDelegate-Protocol.h"
#include "CLSURLSessionDataDelegate-Protocol.h"
#include "CLSURLSessionDownloadDelegate-Protocol.h"
#include "NSCopying-Protocol.h"
#include "GULReachabilityDelegate-Protocol.h"
#include "GULNetworkLoggerDelegate-Protocol.h"
#include "NSURLSessionDownloadDelegate-Protocol.h"
#include "UnityServicesDelegate-Protocol.h"
#include "UIWebViewDelegate-Protocol.h"
#include "UADSPurchasingDelegate-Protocol.h"
#include "UnityAdsDelegate-Protocol.h"
#include "UnityAdsExtendedDelegate-Protocol.h"
#include "USRVConnectivityDelegate-Protocol.h"
#include "USRVVolumeChangeDelegate-Protocol.h"
#include "MTKViewDelegate-Protocol.h"
#include "UANAEngineDelegate-Protocol.h"
#include "SKStoreProductViewControllerDelegate-Protocol.h"
#include "SKPaymentTransactionObserver-Protocol.h"
#include "SKRequestDelegate-Protocol.h"
#include "SKProductsRequestDelegate-Protocol.h"
#include "GADAdNetworkExtras-Protocol.h"
#include "TJPlacementVideoDelegate-Protocol.h"
#include "TJPlacementDelegate-Protocol.h"
#include "GADMRewardBasedVideoAdNetworkAdapter-Protocol.h"
#include "GADMAdNetworkAdapter-Protocol.h"
#include "FIRLibrary-Protocol.h"
#include "FIRComponentLifecycleMaintainer-Protocol.h"
#include "CLSCrashReportingControllerDelegate-Protocol.h"
#include "CLSBetaControllerDelegate-Protocol.h"
#include "WKScriptMessageHandler-Protocol.h"
#include "CLSNetworkClientDelegate-Protocol.h"
#include "CLSReportsControllerDelegate-Protocol.h"
#include "CLSCrashReport-Protocol.h"
#include "ANSMetadataSerializable-Protocol.h"
#include "ANSUploaderDelegate-Protocol.h"
#include "GULNetworkReachabilityDelegate-Protocol.h"
#include "APMLogging-Protocol.h"
#include "NANOMessageBase-Protocol.h"
#include "WCSessionDelegate-Protocol.h"
#include "ADCContainerDelegate-Protocol.h"
#include "MFMessageComposeViewControllerDelegate-Protocol.h"
#include "MFMailComposeViewControllerDelegate-Protocol.h"
#include "WKNavigationDelegate-Protocol.h"
#include "ADCGCDWebServerDelegate-Protocol.h"
#include "ADCGCDWebServerBodyWriter-Protocol.h"
#include "ADCGCDWebServerBodyReader-Protocol.h"
#include "UIAlertViewDelegate-Protocol.h"
#include "ADCWebViewModuleDelegate-Protocol.h"
#include "ADCViewTouchDelegate-Protocol.h"
#include "UIScrollViewDelegate-Protocol.h"
#include "UITextViewDelegate-Protocol.h"
#include "ADCBrowserControlDelegate-Protocol.h"
#include "AdColony_AvidEventDispatcherDelegate-Protocol.h"
#include "AdColony_AvidBridgeDelegate-Protocol.h"
#include "AdColony_AvidWebViewHolder-Protocol.h"
#include "AdColony_AvidDeferredAdSessionListener-Protocol.h"
#include "AdColony_AvidVideoPlaybackListener-Protocol.h"
#include "AdColony_AvidNodeProcessor-Protocol.h"
#include "AdColony_AvidProviderDelegate-Protocol.h"
#include "AdColony_AvidStateWatcherDelegate-Protocol.h"
#include "AdColony_InternalAvidAdSessionDelegate-Protocol.h"
#include "GADInterstitialDelegate-Protocol.h"
#include "GADBannerViewDelegate-Protocol.h"
#include "GADRewardedAdDelegate-Protocol.h"
#include "MPRewardedVideoDelegate-Protocol.h"
#include "FBInterstitialAdDelegate-Protocol.h"
#include "FBRewardedVideoAdDelegate-Protocol.h"
#include "FBAdViewDelegate-Protocol.h"
#include "VungleSDKDelegate-Protocol.h"
#include "VungleSDKHeaderBidding-Protocol.h"
#include "MCURLFileDownloadDelegate-Protocol.h"
#include "MCRemoteBundleDelegate-Protocol.h"
#include "URLFileListDownloadDelegate-Protocol.h"
#include "MCPatcherDelegate-Protocol.h"
#include "MCAnimAnimation-Protocol.h"
#include "CCBlendProtocol-Protocol.h"
#include "MCAnimVSZProtocol-Protocol.h"
#include "CCTextureProtocol-Protocol.h"
#include "CCLabelProtocol-Protocol.h"
#include "NSXMLParserDelegate-Protocol.h"
#include "CCTransitionEaseScene-Protocol.h"
#include "NSFastEnumeration-Protocol.h"
#include "NSCoding-Protocol.h"
#include "CCTouchDelegate-Protocol.h"
#include "CCESRenderer-Protocol.h"
#include "AVAudioPlayerDelegate-Protocol.h"
#include "CDLongAudioSourceDelegate-Protocol.h"
#include "CDAudioInterruptProtocol-Protocol.h"
#include "CDAudioTransportProtocol-Protocol.h"
#include "CCTouchOneByOneDelegate-Protocol.h"
#include "CCAccelerometerDelegate-Protocol.h"
#include "CCTouchAllAtOnceDelegate-Protocol.h"
#include "MCNMessageViewDelegate-Protocol.h"
#include "DDLogFileManager-Protocol.h"
#include "DDLogFormatter-Protocol.h"
#include "DDLogger-Protocol.h"
#include "WKUIDelegate-Protocol.h"
#include "NSSecureCoding-Protocol.h"
#include "AFURLRequestSerialization-Protocol.h"
#include "AFMultipartFormData-Protocol.h"
#include "AFURLResponseSerialization-Protocol.h"
#include "NSURLSessionDataDelegate-Protocol.h"
#include "FlushEventsDelegate-Protocol.h"
#include "CCESRenderer_MCPlatform-Protocol.h"
#include "MPRewardedVideoCustomEventDelegate-Protocol.h"
#include "MPPrivateRewardedVideoCustomEventDelegate-Protocol.h"
#include "MPAdServerCommunicatorDelegate-Protocol.h"
#include "MPBannerAdapterDelegate-Protocol.h"
#include "MPNativeAdRenderer-Protocol.h"
#include "MOPUBPlayerViewControllerDelegate-Protocol.h"
#include "MOPUBFullscreenPlayerViewControllerDelegate-Protocol.h"
#include "MPNativeAdRendererImageHandlerDelegate-Protocol.h"
#include "MPNativeAdRendererSettings-Protocol.h"
#include "MPMediationSettingsProtocol-Protocol.h"
#include "MOPUBAVPlayerDelegate-Protocol.h"
#include "MOPUBPlayerViewDelegate-Protocol.h"
#include "UITableViewDataSource-Protocol.h"
#include "UITableViewDelegate-Protocol.h"
#include "MPMoPubAdPlacerDelegate-Protocol.h"
#include "MPStreamAdPlacerDelegate-Protocol.h"
#include "MPMoPubAdPlacer-Protocol.h"
#include "MRCommandDelegate-Protocol.h"
#include "MRVideoPlayerManagerDelegate-Protocol.h"
#include "UIGestureRecognizerDelegate-Protocol.h"
#include "MPAdAlertManagerProtocol-Protocol.h"
#include "MRBridgeDelegate-Protocol.h"
#include "VungleSDKNativeAds-Protocol.h"
#include "MRControllerDelegate-Protocol.h"
#include "MPForceableOrientationProtocol-Protocol.h"
#include "MPBLogger-Protocol.h"
#include "UnityAdsBannerDelegate-Protocol.h"
#include "MPAdapterConfiguration-Protocol.h"
#include "NSCacheDelegate-Protocol.h"
#include "MPAdDestinationDisplayAgentDelegate-Protocol.h"
#include "MPInterstitialAdManagerDelegate-Protocol.h"
#include "MPMoPubAd-Protocol.h"
#include "MPAdImpressionTimerDelegate-Protocol.h"
#include "MPAdWebViewAgentDelegate-Protocol.h"
#include "MPRewardedVideoAdapterDelegate-Protocol.h"
#include "MPVungleRouterDelegate-Protocol.h"
#include "MPNativeAdSourceDelegate-Protocol.h"
#include "MPMoPubAdDelegate-Protocol.h"
#include "MPNativeAdDelegate-Protocol.h"
#include "MPClosableViewDelegate-Protocol.h"
#include "MPInterstitialAdapterDelegate-Protocol.h"
#include "MPNativeAdSourceQueueDelegate-Protocol.h"
#include "ISDemandOnlyInterstitialDelegate-Protocol.h"
#include "UnityRouterDelegate-Protocol.h"
#include "GADAdLoaderDelegate-Protocol.h"
#include "GADUnifiedNativeAdLoaderDelegate-Protocol.h"
#include "FBNativeAdDelegate-Protocol.h"
#include "MPNativeAdAdapter-Protocol.h"
#include "SFSafariViewControllerDelegate-Protocol.h"
#include "MPProgressOverlayViewDelegate-Protocol.h"
#include "MPSKStoreProductViewControllerDelegate-Protocol.h"
#include "MPActivityViewControllerHelperDelegate-Protocol.h"
#include "MPBannerAdManagerDelegate-Protocol.h"
#include "CLLocationManagerDelegate-Protocol.h"
#include "MPObjectMapper-Protocol.h"
#include "TJCVideoAdDelegate-Protocol.h"
#include "MPRewardedVideoAdManagerDelegate-Protocol.h"
#include "MPRewardedVideoConnectionDelegate-Protocol.h"
#include "GADUnifiedNativeAdDelegate-Protocol.h"
#include "MPNativeCustomEventDelegate-Protocol.h"
#include "MPBannerCustomEventDelegate-Protocol.h"
#include "MPPrivateBannerCustomEventDelegate-Protocol.h"
#include "MPInterstitialViewControllerDelegate-Protocol.h"
#include "MPWebViewDelegate-Protocol.h"
#include "MRNativeCommandHandlerDelegate-Protocol.h"
#include "ISDemandOnlyRewardedVideoDelegate-Protocol.h"
#include "MPInterstitialCustomEventDelegate-Protocol.h"
#include "MPPrivateInterstitialCustomEventDelegate-Protocol.h"
#include "MPNativeAdAdapterDelegate-Protocol.h"
#include "MPNativeViewDelegate-Protocol.h"
#include "MPConsentDialogViewControllerDelegate-Protocol.h"
#include "UICollectionViewDataSource-Protocol.h"
#include "UICollectionViewDelegate-Protocol.h"
#include "UICollectionViewDelegateFlowLayout-Protocol.h"
#include "ISLogDelegate-Protocol.h"
#include "GADRewardBasedVideoAdDelegate-Protocol.h"
#include "ISInterstitialDelegate-Protocol.h"
#include "ISRewardedVideoDelegate-Protocol.h"
#include "ISBannerDelegate-Protocol.h"
#include "MPAdViewDelegate-Protocol.h"
#include "TapResearchSurveyDelegate-Protocol.h"
#include "TapResearchRewardDelegate-Protocol.h"
#include "MPInterstitialAdControllerDelegate-Protocol.h"
#include "VungleSDKLogger-Protocol.h"
#include "GADMediatedUnifiedNativeAd-Protocol.h"
#include "GADMediatedNativeAdDelegate-Protocol.h"
#include "GADMediatedNativeAd-Protocol.h"
#include "FBMediaViewDelegate-Protocol.h"
#include "GADMediationAd-Protocol.h"
#include "GADMediationNativeAd-Protocol.h"
#include "GADMediationRewardedAd-Protocol.h"
#include "GADMediationBannerAd-Protocol.h"
#include "GADMediationAdapter-Protocol.h"
#include "GADRTBAdapter-Protocol.h"
#include "GADMediatedNativeAppInstallAd-Protocol.h"
#include "GADMediationInterstitialAd-Protocol.h"
#include "MCCommand-Protocol.h"
#include "CustomIOS7AlertViewDelegate-Protocol.h"
#include "BufferedTasksSchedulerProtocol-Protocol.h"
#include "MCInputBarComparable-Protocol.h"
#include "MCTextFieldDelegate-Protocol.h"
#include "UITextFieldDelegate-Protocol.h"
#include "TestableCCItem-Protocol.h"
#include "CCMenuItemExtendedInputProtocol-Protocol.h"
#include "MCBundleServerPersistencyDelegate-Protocol.h"
#include "MCBundleManagerDelegate-Protocol.h"
#include "AdjustDelegate-Protocol.h"
#include "NSURLConnectionDataDelegate-Protocol.h"
#include "VungleValidatableAd-Protocol.h"
#include "VungleRequestAdManagerDelegate-Protocol.h"
#include "VungleConfigurable-Protocol.h"
#include "VungleRequestStreamingAdControllerDelegate-Protocol.h"
#include "VungleStreamingConfigurableDelegate-Protocol.h"
#include "VungleSDKInitializerDelegate-Protocol.h"
#include "VunglePlacementsCoordinatorDelegate-Protocol.h"
#include "VungleAdDelegate-Protocol.h"
#include "UIViewControllerAnimatedTransitioning-Protocol.h"
#include "VNGStoreKitProductViewProviderDelegate-Protocol.h"
#include "VungleMRAIDReportBuilderProtocol-Protocol.h"
#include "VungleNetworkOperationDelegate-Protocol.h"
#include "VungleJSCommandDelegate-Protocol.h"
#include "VungleMRAIDCommandDelegate-Protocol.h"
#include "VungleJavascriptGenerator-Protocol.h"
#include "VungleCacheable-Protocol.h"
#include "VNGPersistable-Protocol.h"
#include "JavascriptToNativeHandler-Protocol.h"
#include "VungleMRAIDControllerDelegate-Protocol.h"
#include "VungleNativeCommandHandlerDelegate-Protocol.h"
#include "UIViewControllerTransitioningDelegate-Protocol.h"
#include "VungleLoggerDelegate-Protocol.h"
#include "VungleReportable-Protocol.h"
#include "OperationQueueDelegate-Protocol.h"
#include "VungleMRAIDBridgeDelegate-Protocol.h"
#include "VungleLoggable-Protocol.h"
#include "VNGMoatBridgeProtocol-Protocol.h"
#include "VungleDelegate-Protocol.h"
#include "ADJActivityHandler-Protocol.h"
#include "ADJLogger-Protocol.h"
#include "ADJPackageHandler-Protocol.h"
#include "ADJRequestHandler-Protocol.h"
#include "ADJAttributionHandler-Protocol.h"
#include "ADJSdkClickHandler-Protocol.h"
#include "ISBnSmashDelegate-Protocol.h"
#include "ISAdapterDispatcherProtocol-Protocol.h"
#include "ISInterstitialSMASHDelegate-Protocol.h"
#include "SSENotifierProtocol-Protocol.h"
#include "ISNProductDelegate-Protocol.h"
#include "SSARewardedVideoDelegate-Protocol.h"
#include "ISRewardedVideoSMASHDelegate-Protocol.h"
#include "ISBannerAdapterDelegate-Protocol.h"
#include "ISRewardedVideoAdapterDelegate-Protocol.h"
#include "ISAdapterLoggerProtocol-Protocol.h"
#include "ISRewardedInterstitialSMASHDelegate-Protocol.h"
#include "ISDailyCappingManagerDelegate-Protocol.h"
#include "ISInterstitialAdapterDelegate-Protocol.h"
#include "ISEventsStorageHelperProtocol-Protocol.h"
#include "ISEventsFormatterProtocol-Protocol.h"
#include "SSAInterstitialDelegate-Protocol.h"
#include "SSAOfferWallDelegate-Protocol.h"
#include "SSABannerDelegate-Protocol.h"
#include "ISEventManagerProtocol-Protocol.h"
#include "ISOfferwallAdapterDelegate-Protocol.h"
#include "ISKeyValueStorageProtocol-Protocol.h"
#include "ISEventsSenderProtocol-Protocol.h"
#include "ISInterstitialAdapterProtocol-Protocol.h"
#include "ISRewardedVideoAdapterProtocol-Protocol.h"
#include "ISBannerAdapterProtocol-Protocol.h"
#include "ISOfferwallAdapterProtocol-Protocol.h"
#include "SSWVWebViewP-Protocol.h"
#include "SSWVBridgeP-Protocol.h"
#include "ISNPresentationStrategyP-Protocol.h"
#include "ISNAdViewDelegate-Protocol.h"
#include "ISNAdViewCommunicatorP-Protocol.h"
#include "IROMoatTrackerDelegate-Protocol.h"
#include "ISNJSInterfaceHandlerP-Protocol.h"
#include "SSWVWebViewDelegate-Protocol.h"
#include "ISAppStoreInsideSessionDelegate-Protocol.h"
#include "ISSplitViewDelegate-Protocol.h"
#include "ISNMOATManagerDelegate-Protocol.h"
#include "IROMoatBridgeProtocol-Protocol.h"
#include "GADMAdapterUnityDataProvider-Protocol.h"
#include "MCCycleTableItem-Protocol.h"
#include "MCPromoActionDelegate-Protocol.h"
#include "GADAdRendering-Protocol.h"
#include "GADPresenting-Protocol.h"
#include "GADAppEventDelegate-Protocol.h"
#include "GADWebViewControllerDelegate-Protocol.h"
#include "GADJavascriptEvaluating-Protocol.h"
#include "GADSignalSource-Protocol.h"
#include "GADSignal-Protocol.h"
#include "GADEventContextSource-Protocol.h"
#include "GADMediatedNativeContentAd-Protocol.h"
#include "GADMediaContentDisplaying-Protocol.h"
#include "JSExport-Protocol.h"
#include "GADJSCoreNavigatorProtocol-Protocol.h"
#include "GADNativeAdViewOverlayProtocol-Protocol.h"
#include "GADDynamicHeightSearchBannerViewDelegate-Protocol.h"
#include "GADFramerateObserver-Protocol.h"
#include "GADWebAdViewDelegate-Protocol.h"
#include "GADCustomEventInterstitial-Protocol.h"
#include "GADCustomEventInterstitialDelegate-Protocol.h"
#include "GADAdPresenting-Protocol.h"
#include "GADMediationNativeAdEventDelegate-Protocol.h"
#include "GADCustomEventBanner-Protocol.h"
#include "GADCustomEventBannerDelegate-Protocol.h"
#include "GADJSCoreConsoleProtocol-Protocol.h"
#include "GADAdSizeDelegate-Protocol.h"
#include "GADAdSizeDelegatePreview-Protocol.h"
#include "GADPresenterSource-Protocol.h"
#include "GADMediationAdEventDelegate-Protocol.h"
#include "GADMediationBannerAdEventDelegate-Protocol.h"
#include "GADCustomEventNativeAd-Protocol.h"
#include "GADCustomEventNativeAdDelegate-Protocol.h"
#include "DFPBannerAdLoaderDelegate-Protocol.h"
#include "GADNativeContentAdLoaderDelegate-Protocol.h"
#include "GADNativeAppInstallAdLoaderDelegate-Protocol.h"
#include "GADNativeCustomTemplateAdLoaderDelegate-Protocol.h"
#include "GADInstreamNativeAdLoaderDelegate-Protocol.h"
#include "GADMonitorOwner-Protocol.h"
#include "GADJSCoreInterfaceProtocol-Protocol.h"
#include "GADVideoControlling-Protocol.h"
#include "GADMediationRewardedAdEventDelegate-Protocol.h"
#include "GADRewardedConnector-Protocol.h"
#include "GADJSCoreEnvironmentProtocol-Protocol.h"
#include "GADWebView-Protocol.h"
#include "GADMediationInterstitialAdEventDelegate-Protocol.h"
#include "GADJSCorePingerProtocol-Protocol.h"
#include "GADJSCoreTimersProtocol-Protocol.h"
#include "GADVideoPlayerViewLoading-Protocol.h"
#include "GADAVPlayerItemProvider-Protocol.h"
#include "AVAssetResourceLoaderDelegate-Protocol.h"
#include "GADJSCoreLocalStorageProtocol-Protocol.h"
#include "GADMediationAdRequest-Protocol.h"
#include "GADMAdNetworkConnector-Protocol.h"
#include "GADMRewardBasedVideoAdNetworkConnector-Protocol.h"
#include "GADOMIDAdSessionDelegate-Protocol.h"
#include "GADOMIDCommandPublisher-Protocol.h"
#include "GADOMIDSessionEventsPublisher-Protocol.h"
#include "GADOMIDAdEventsPublisher-Protocol.h"
#include "GADOMIDVideoEventsPublisher-Protocol.h"
#include "GADOMIDJSExecutor-Protocol.h"
#include "GADOMIDJSInvoker-Protocol.h"
#include "GADOMIDAdSessionRegistryStateObserver-Protocol.h"
#include "GADOMIDStateWatcherDelegate-Protocol.h"
#include "GADOMIDNodeProcessor-Protocol.h"
#include "TJCVideoPlayerDelegate-Protocol.h"
#include "TJCWebViewDelegate-Protocol.h"
#include "FRRemoteImageDelegate-Protocol.h"
#include "TJWebViewJavascriptBridgeBaseDelegate-Protocol.h"
#include "TJCPlacementViewDelegate-Protocol.h"
#include "FiveRocksDelegate-Protocol.h"
#include "TJCTopViewControllerProtocol-Protocol.h"
#include "OMIDtapjoyCommandPublisher-Protocol.h"
#include "OMIDtapjoySessionEventsPublisher-Protocol.h"
#include "OMIDtapjoyAdEventsPublisher-Protocol.h"
#include "OMIDtapjoyVideoEventsPublisher-Protocol.h"
#include "OMIDtapjoyJSExecutor-Protocol.h"
#include "OMIDtapjoyJSInvoker-Protocol.h"
#include "OMIDtapjoyAdSessionRegistryStateObserver-Protocol.h"
#include "OMIDtapjoyStateWatcherDelegate-Protocol.h"
#include "OMIDtapjoyAdSessionDelegate-Protocol.h"
#include "OMIDtapjoyNodeProcessor-Protocol.h"
#include "GADMAdapterIronSourceDelegate-Protocol.h"
#include "MCPromoOfferDelegate-Protocol.h"
#include "__ARCLiteKeyedSubscripting__-Protocol.h"
#include "FBVideoAdControllerDelegate-Protocol.h"
#include "FBAdCardToFullscreenTransitionable-Protocol.h"
#include "FBAdVideoAdViewControllerDelegate-Protocol.h"
#include "FBAdEndCardViewControllerDelegate-Protocol.h"
#include "FBAdDSLBridgeDelegate-Protocol.h"
#include "UINavigationControllerDelegate-Protocol.h"
#include "FBInterstitialAdInternalDelegate-Protocol.h"
#include "FBAdCommandProcessorDelegate-Protocol.h"
#include "FBAdChooseYourOwnAdViewControllerDelegate-Protocol.h"
#include "FBAdPlayableViewControllerDelegate-Protocol.h"
#include "FBAdBackgroundStateManaging-Protocol.h"
#include "FBAdUpdatableView-Protocol.h"
#include "BotDetectionConfigProviderDelegate-Protocol.h"
#include "BotDetectionSignalLoggerDelegate-Protocol.h"
#include "BotDetectionSignalsProviderDelegate-Protocol.h"
#include "BotDetectionDynamicLoadedLibraryProviderDelegate-Protocol.h"
#include "FBAdSafariViewControllerDelegate-Protocol.h"
#include "FBNativeAdViewImmutable-Protocol.h"
#include "FBAdChooseYourOwnAdCardDelegate-Protocol.h"
#include "FBAdReportingCoordinatorDelegate-Protocol.h"
#include "FBAdTouchRecordingViewDelegate-Protocol.h"
#include "FBStoreProductViewControllerDelegate-Protocol.h"
#include "FBAdDSLViewControllerDelegate-Protocol.h"
#include "FBInterstitialAdToolbarViewDelegate-Protocol.h"
#include "FBAdEndCardScreenshotViewDelegate-Protocol.h"
#include "FBAdEndCardNoMediaViewDelegate-Protocol.h"
#include "FBAdEndCardAppStoreViewDelegate-Protocol.h"
#include "FBAdGoToEndcardTransitionable-Protocol.h"
#include "FNFAssetForPlayer-Protocol.h"
#include "FNFAVPlayerItem-Protocol.h"
#include "FBAdFunnelLoggingDelegate-Protocol.h"
#include "FBAdJSBridgedInterfaceProtocol-Protocol.h"
#include "FBAdViewabilityValidatorDelegate-Protocol.h"
#include "FBAdScrollViewCell-Protocol.h"
#include "FBAdMultiProductCellDelegate-Protocol.h"
#include "FBAdScrollViewDelegate-Protocol.h"
#include "FBAdViewNavigationPolicy-Protocol.h"
#include "FBAdContentContainerDelegate-Protocol.h"
#include "FBAdPlayableViewDelegate-Protocol.h"
#include "FNFAssetResourceLoaderDelegate-Protocol.h"
#include "FBAdBrowserSessionDataGeneration-Protocol.h"
#include "FBAdScrollView-Protocol.h"
#include "FBAdVideoRendererViewDelegate-Protocol.h"
#include "FBAdStoriesPageViewDelegate-Protocol.h"
#include "FBAdDisplayable-Protocol.h"
#include "FBAdTouchGestureRecognizerDelegate-Protocol.h"
#include "FBAdBrowserViewController-Protocol.h"
#include "FBAdVideoAdViewDelegate-Protocol.h"
#include "FBAdIntroCardTransitionable-Protocol.h"
#include "FNFPlayerDisplayEngine-Protocol.h"
#include "FBDisplayAdControllerDelegate-Protocol.h"
#include "FBAdJSBridgedInterfaceDelegate-Protocol.h"
#include "FBAdContentContainer-Protocol.h"
#include "FBAdProviderDelegate-Protocol.h"
#include "FBDisplayAdAdapterDelegate-Protocol.h"
#include "FBDisplayAdAdapterControllerDelegate-Protocol.h"
#include "FBUIConfig-Protocol.h"
#include "FBInstreamAdVideoViewDelegate-Protocol.h"
#include "FBAdChoicesViewDelegate-Protocol.h"
#include "FBInterstitialAdMediaViewDelegate-Protocol.h"
#include "FBAdDisplayableViewDelegate-Protocol.h"
#include "FBWatchAndActionActionableControllerDelegate-Protocol.h"
#include "FBAdViewInternalDelegate-Protocol.h"
#include "FBInterstitialAdNativeViewDelegate-Protocol.h"
#include "FBMediaViewDefaultVideoRendererDelegate-Protocol.h"
#include "FBAdFullscreenVideoControllerDelegate-Protocol.h"
#include "FBAdMultiProductViewDelegate-Protocol.h"
#include "FNFAVAsset-Protocol.h"
#include "FBNativeAdBaseDelegate-Protocol.h"
#include "FBNativeAdBaseView-Protocol.h"
#include "FBNativeAdsManagerDelegate-Protocol.h"
#include "FBAdReportingData-Protocol.h"
#include "FBAdCreativeURLContaining-Protocol.h"
#include "FBNativeBannerAdDelegate-Protocol.h"
#include "FBVideoAdContentViewDelegate-Protocol.h"
#include "FBWatchAndBrowseWebViewDelegate-Protocol.h"
#include "FBWatchAndActionActionableController-Protocol.h"
#include "FBAdWebViewNavigationPanelDelegate-Protocol.h"
#include "FNFPlayerAudioEngine-Protocol.h"
#include "FNFCoreAudioDelegate-Protocol.h"
#include "FNFClock-Protocol.h"
#include "FNFPlayerAudioDecoder-Protocol.h"
#include "FNFDecompressionSessionDelegate-Protocol.h"
#include "FNFAVPlayerLayer-Protocol.h"
#include "FNFSynchronousPlayerDelegate-Protocol.h"
#include "FNFAVPlayer-Protocol.h"
#include "FNFPlayerDisplayEngineDelegate-Protocol.h"
#include "FNFAssetEventListener-Protocol.h"
#include "FNFPlayerRenderer-Protocol.h"
#include "FNFPlayerGLRenderer-Protocol.h"
#include "FNFPlayerMetalRenderer-Protocol.h"
#include "FNFPlayerDisplayLayerDelegate-Protocol.h"
#include "FNFPlayerDisplayLayer-Protocol.h"
#include "AVAsynchronousKeyValueLoading-Protocol.h"
#include "FNFInfoForLoopableAsset-Protocol.h"
#include "FNFMp4StreamingReader-Protocol.h"
#include "FNFDataLoaderDelegate-Protocol.h"
#include "FNFAtomManagerDelegate-Protocol.h"
#include "FNFTimeLoadedDelegate-Protocol.h"
#include "FNFAtomManager-Protocol.h"
#include "FNFDataLoader-Protocol.h"
#include "FNFDashTrackEntryContaining-Protocol.h"
#include "FNFDecompressionSession-Protocol.h"
#include "FNFDecompressionSessionFactory-Protocol.h"
#include "FNFFrameSource-Protocol.h"
#include "FNFTimerManager-Protocol.h"
#include "FNFTimer-Protocol.h"
#include "FBBDTapGestureRecognizerDelegate-Protocol.h"
#include "FBAdDSLJSScriptMessageHandlerDelegate-Protocol.h"
#include "FBAdDSLDataLoaderDelegate-Protocol.h"
#include "FBAdDSLFullScreenAdViewControllerDelegate-Protocol.h"
#include "FBAdMovingAverage-Protocol.h"
```

# structs
```
typedef struct CGPoint {
    CGFloat x;
    CGFloat y;
} CGPoint;

typedef struct CGSize {
    CGFloat width;
    CGFloat height;
} CGSize;

typedef struct CGRect {
    CGPoint origin;
    CGSize size;
} CGRect;

typedef struct _NSZone {
} // Error Processing Struct Fields

typedef struct _ccColorThreeB {
    unsigned char r;
    unsigned char g;
    unsigned char b;
    unsigned char dontUserMe;
} _ccColorThreeB;

typedef struct GADAdSize {
    CGSize size;
    NSUInteger flags;
} GADAdSize;

typedef struct ? {
    float Red;
    float Green;
    float Blue;
    float Alpha;
} ?;

typedef struct _NSRange {
    NSUInteger location;
    NSUInteger length;
} _NSRange;

typedef struct _ccBlendFunc {
    unsigned int src;
    unsigned int dst;
} _ccBlendFunc;

typedef struct UIEdgeInsets {
    CGFloat top;
    CGFloat left;
    CGFloat bottom;
    CGFloat right;
} UIEdgeInsets;

typedef struct NSDictionary {
    Class field0;
} NSDictionary;

typedef struct opaqueCMFormatDescription {
} // Error Processing Struct Fields

typedef struct AudioStreamBasicDescription {
    CGFloat mSampleRate;
    unsigned int mFormatID;
    unsigned int mFormatFlags;
    unsigned int mBytesPerPacket;
    unsigned int mFramesPerPacket;
    unsigned int mBytesPerFrame;
    unsigned int mChannelsPerFrame;
    unsigned int mBitsPerChannel;
    unsigned int mReserved;
} AudioStreamBasicDescription;

typedef struct FNFFrameMetadata {
    unsigned int field0;
    ? field1;
    ? field2;
    NSInteger field3;
    ? field4;
    unsigned int field5;
} FNFFrameMetadata;

typedef struct CGAffineTransform {
    CGFloat a;
    CGFloat b;
    CGFloat c;
    CGFloat d;
    CGFloat tx;
    CGFloat ty;
} CGAffineTransform;

typedef struct opaqueCMSampleBuffer {
} // Error Processing Struct Fields

typedef struct __CVBuffer {
} // Error Processing Struct Fields

typedef struct OpaqueCMTimebase {
} // Error Processing Struct Fields

typedef struct FBAdSize {
    CGSize size;
} FBAdSize;

typedef struct AudioStreamPacketDescription {
    NSInteger field0;
    unsigned int field1;
    unsigned int field2;
} AudioStreamPacketDescription;

typedef struct AudioQueueBuffer {
    unsigned int field0;
    void field1;
    unsigned int field2;
    void field3;
    unsigned int field4;
    AudioStreamPacketDescription field5;
    unsigned int field6;
} AudioQueueBuffer;

typedef struct FNFPlayerStallState {
    BOOL isStalled;
    BOOL isStartStall;
    NSUInteger stallTimeInMilliseconds;
} FNFPlayerStallState;

typedef struct FNFPlayerInternalState {
    BOOL playingRequested;
    BOOL isPlaying;
    BOOL endTimeReached;
    BOOL firstAudioFrameEnqueued;
    BOOL stoppedEnqueuingVideo;
    BOOL stoppedEnqueuingAudio;
    BOOL isFirstVideoFrame;
    BOOL recreatedLayerOnError;
    BOOL audioEngineInitialized;
    BOOL isReadyForDisplay;
    BOOL previousSeekCompletionBlockExecuted;
    BOOL muted;
    ? lastStartingTime;
    ? lastRequestedStartTime;
    ? latestEnqueuedVideoPts;
    ? latestEnqueuedAudioPts;
    ? latestEnqueuedAudioDts;
    float lastPlayRate;
    float playRate;
    id playbackTimeObserverForAsset;
    id durationTimerForAsset;
    id stallTimerObserver;
    id seekFrameUpdateObserver;
    id sampleBufferFlushTimerObserver;
    id levelMeterTimerObserver;
    ? backgroundPauseTime;
    unsigned int sampleAudioFrameSize;
    id representationId;
    NSUInteger NSString;
    NSInteger lastFrameSeekAttempt;
    FNFPlayerStallState status;
    CGRect stallState;
    id bounds;
    unk frameSeekCompletionBlock;
    id loggingContext;
    id <FNFVideoPlaybackLoggingContext>;
    id playerItemWarning;
    id NSError;
    ? playerItemError;
} FNFPlayerInternalState;

typedef struct FNFSeekStatus {
    BOOL field0;
    ? field1;
    BOOL field2;
    BOOL field3;
    BOOL field4;
    NSUInteger field5;
    NSUInteger field6;
} FNFSeekStatus;

typedef struct Color<float> {
    unk ;
    ? ;
    float Components;
} Color<float>;

typedef struct BlendModeSettings {
    BOOL Enabled;
    int Source;
    int Destination;
} BlendModeSettings;

typedef struct StencilBufferSettings {
    BOOL Enabled;
    unsigned int Mask;
    int Function;
    unsigned int FunctionReference;
    unsigned int FunctionMask;
    int OnFail;
    int OnFailZ;
    int OnPassZ;
} StencilBufferSettings;

typedef struct RenderState {
    BOOL CullingEnabled;
    BOOL DepthTestingEnabled;
    Color<float> ClearColor;
    BlendModeSettings BlendMode;
    StencilBufferSettings StencilBuffer;
} RenderState;

typedef struct VBO {
    unsigned int OpenGLID;
    unsigned int GLComponentType;
    unsigned int GLBufferType;
    int BufferType;
    unsigned int ComponentsPerElement;
    int ElementComponentType;
    unsigned int ElementSize;
    unsigned int ElementCount;
    unsigned int ElementStride;
    char * Data;
    BOOL NormalizeData;
} VBO;

typedef struct Texture {
} // Error Processing Struct Fields

typedef struct __shared_weak_count {
} // Error Processing Struct Fields

typedef struct shared_ptr<mc::Renderer::Texture> {
    Texture __ptr_;
    __shared_weak_count __cntrl_;
} shared_ptr<mc::Renderer::Texture>;

typedef struct Mesh {
    VBO IndexVBO;
    VBO VertexVBO;
    VBO TexCoordVBO;
    VBO ColorVBO;
    int Primitive;
    shared_ptr<mc::Renderer::Texture> TextureToUse;
    unsigned int VertexCount;
} Mesh;

typedef struct Shader {
} // Error Processing Struct Fields

typedef struct __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> {
} // Error Processing Struct Fields

typedef struct __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > {
    NSUInteger __value_;
} __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> >;

typedef struct __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > {
    __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > __data_;
} __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> __value_;
    __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > __value_;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > >;

typedef struct unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > > {
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > > __ptr_;
} unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> __value_;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> > >;

typedef struct __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::hash<mc::Renderer::ShaderUniform *>, true> > {
    NSUInteger __value_;
} __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::hash<mc::Renderer::ShaderUniform *>, true> >;

typedef struct __compressed_pair<float, std::__1::__unordered_map_equal<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, true> > {
    float __value_;
} __compressed_pair<float, std::__1::__unordered_map_equal<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, true> >;

typedef struct __hash_table<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::__unordered_map_hasher<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::hash<mc::Renderer::ShaderUniform *>, true>, std::__1::__unordered_map_equal<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, true>, std::__1::allocator<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *> > > {
    unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *> *> > > __bucket_list_;
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, void *> > > __p1_;
    __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::hash<mc::Renderer::ShaderUniform *>, true> > __p2_;
    __compressed_pair<float, std::__1::__unordered_map_equal<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, true> > __p3_;
} __hash_table<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::__unordered_map_hasher<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::hash<mc::Renderer::ShaderUniform *>, true>, std::__1::__unordered_map_equal<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, true>, std::__1::allocator<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *> > >;

typedef struct unordered_map<mc::Renderer::ShaderUniform *, void *, std::__1::hash<mc::Renderer::ShaderUniform *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, std::__1::allocator<std::__1::pair<mc::Renderer::ShaderUniform *const, void *> > > {
    __hash_table<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::__unordered_map_hasher<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::hash<mc::Renderer::ShaderUniform *>, true>, std::__1::__unordered_map_equal<mc::Renderer::ShaderUniform *, std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, true>, std::__1::allocator<std::__1::__hash_value_type<mc::Renderer::ShaderUniform *, void *> > > __table_;
} unordered_map<mc::Renderer::ShaderUniform *, void *, std::__1::hash<mc::Renderer::ShaderUniform *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, std::__1::allocator<std::__1::pair<mc::Renderer::ShaderUniform *const, void *> > >;

typedef struct RenderJob {
    RenderState state;
    Mesh mesh;
    Shader shader;
    unsigned int startIndex;
    unsigned int indexCount;
    unordered_map<mc::Renderer::ShaderUniform *, void *, std::__1::hash<mc::Renderer::ShaderUniform *>, std::__1::equal_to<mc::Renderer::ShaderUniform *>, std::__1::allocator<std::__1::pair<mc::Renderer::ShaderUniform *const, void *> > > extraUniforms;
} RenderJob;

typedef struct _ccColor4B {
    unsigned char r;
    unsigned char g;
    unsigned char b;
    unsigned char a;
} _ccColor4B;

typedef struct pair<CGPoint, CGPoint> {
    CGPoint first;
    CGPoint second;
} pair<CGPoint, CGPoint>;

typedef struct __tree_end_node<std::__1::__tree_node_base<void *> *> {
    __tree_node_base<void *> __left_;
} __tree_end_node<std::__1::__tree_node_base<void *> *>;

typedef struct __tree_node_base<void *> {
} // Error Processing Struct Fields

typedef struct __compressed_pair<std::__1::__tree_end_node<std::__1::__tree_node_base<void *> *>, std::__1::allocator<std::__1::__tree_node<std::__1::__value_type<CCNode *, _ccColor4B>, void *> > > {
    __tree_end_node<std::__1::__tree_node_base<void *> *> __value_;
} __compressed_pair<std::__1::__tree_end_node<std::__1::__tree_node_base<void *> *>, std::__1::allocator<std::__1::__tree_node<std::__1::__value_type<CCNode *, _ccColor4B>, void *> > >;

typedef struct __compressed_pair<unsigned long, std::__1::__map_value_compare<CCNode *, std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::less<CCNode *>, true> > {
    NSUInteger __value_;
} __compressed_pair<unsigned long, std::__1::__map_value_compare<CCNode *, std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::less<CCNode *>, true> >;

typedef struct __tree<std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::__map_value_compare<CCNode *, std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::less<CCNode *>, true>, std::__1::allocator<std::__1::__value_type<CCNode *, _ccColor4B> > > {
    __tree_end_node<std::__1::__tree_node_base<void *> *> __begin_node_;
    __compressed_pair<std::__1::__tree_end_node<std::__1::__tree_node_base<void *> *>, std::__1::allocator<std::__1::__tree_node<std::__1::__value_type<CCNode *, _ccColor4B>, void *> > > __pair1_;
    __compressed_pair<unsigned long, std::__1::__map_value_compare<CCNode *, std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::less<CCNode *>, true> > __pair3_;
} __tree<std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::__map_value_compare<CCNode *, std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::less<CCNode *>, true>, std::__1::allocator<std::__1::__value_type<CCNode *, _ccColor4B> > >;

typedef struct map<CCNode *, _ccColor4B, std::__1::less<CCNode *>, std::__1::allocator<std::__1::pair<CCNode *const, _ccColor4B> > > {
    __tree<std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::__map_value_compare<CCNode *, std::__1::__value_type<CCNode *, _ccColor4B>, std::__1::less<CCNode *>, true>, std::__1::allocator<std::__1::__value_type<CCNode *, _ccColor4B> > > __tree_;
} map<CCNode *, _ccColor4B, std::__1::less<CCNode *>, std::__1::allocator<std::__1::pair<CCNode *const, _ccColor4B> > >;

typedef struct __compressed_pair<CCMenu **, std::__1::allocator<CCMenu *> > {
    id __value_;
} __compressed_pair<CCMenu **, std::__1::allocator<CCMenu *> >;

typedef struct vector<CCMenu *, std::__1::allocator<CCMenu *> > {
    id __begin_;
    id __end_;
    __compressed_pair<CCMenu **, std::__1::allocator<CCMenu *> > __end_cap_;
} vector<CCMenu *, std::__1::allocator<CCMenu *> >;

typedef struct __compressed_pair<int *, std::__1::allocator<int> > {
    int __value_;
} __compressed_pair<int *, std::__1::allocator<int> >;

typedef struct vector<int, std::__1::allocator<int> > {
    int __begin_;
    int __end_;
    __compressed_pair<int *, std::__1::allocator<int> > __end_cap_;
} vector<int, std::__1::allocator<int> >;

typedef struct type {
    unsigned char __lx;
} type;

typedef struct __base<void ()> {
} // Error Processing Struct Fields

typedef struct __value_func<void ()> {
} // Error Processing Struct Fields

typedef struct function<void ()> {
    __value_func<void ()> __f_;
} function<void ()>;

typedef struct ConsentData {
    int type;
    int state;
    BOOL shouldAskConsent;
    BOOL consentIsGiven;
    BOOL readOnly;
} ConsentData;

typedef struct __long {
    char * __data_;
    NSUInteger __size_;
    NSUInteger __cap_;
} __long;

typedef struct __short {
    char __data_;
    ? ;
} __short;

typedef struct __raw {
    NSUInteger __words;
} __raw;

typedef struct __rep {
    unk ;
    __long __l;
    __short __s;
    __raw __r;
} __rep;

typedef struct __compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> > {
    __rep __value_;
} __compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> >;

typedef struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > {
    __compressed_pair<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep, std::__1::allocator<char> > __r_;
} basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >;

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> >, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> >, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> > > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> > > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> >, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> >, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> > > > field0;
} map<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> > > >;

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> >, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> >, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> > > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> > > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> >, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> >, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> > > > field0;
} map<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> > > >;

typedef struct ConfigurationModel {
    map<std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::shared_ptr<ProductEntity> > > > field0;
    map<std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::shared_ptr<BundleEntity> > > > field1;
} ConfigurationModel;

typedef struct ConfiguratorListener {
} // Error Processing Struct Fields

typedef struct shared_ptr<mc::ads::ConfiguratorListener> {
} // Error Processing Struct Fields

typedef struct InterstitialsListener {
} // Error Processing Struct Fields

typedef struct shared_ptr<mc::ads::InterstitialsListener> {
} // Error Processing Struct Fields

typedef struct Placement {
} // Error Processing Struct Fields

typedef struct AdsManager {
    BOOL field0;
    BOOL field1;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field2;
    int field3;
    BOOL field4;
    shared_ptr<mc::ads::ConfiguratorListener> field5;
    shared_ptr<mc::ads::InterstitialsListener> field6;
    Placement field7;
} AdsManager;

typedef struct MCLibraHandler {
    int field0;
    function<void ()> field1;
} MCLibraHandler;

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char>, AlarmManager::Callback>, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, AlarmManager::Callback>, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, AlarmManager::Callback> > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char>, AlarmManager::Callback, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, AlarmManager::Callback> > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char>, AlarmManager::Callback>, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, AlarmManager::Callback>, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, AlarmManager::Callback> > > field0;
} map<std::__1::basic_string<char>, AlarmManager::Callback, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, AlarmManager::Callback> > >;

typedef struct AlarmManager {
    map<std::__1::basic_string<char>, AlarmManager::Callback, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, AlarmManager::Callback> > > field0;
    id field1;
} AlarmManager;

typedef struct EnvironmentManager {
} // Error Processing Struct Fields

typedef struct EnvironmentSelector {
    EnvironmentManager field0;
} EnvironmentSelector;

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char>, std::__1::function<void ()> >, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, std::__1::function<void ()> >, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, std::__1::function<void ()> > > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char>, std::__1::function<void ()>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::function<void ()> > > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char>, std::__1::function<void ()> >, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, std::__1::function<void ()> >, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, std::__1::function<void ()> > > > field0;
} map<std::__1::basic_string<char>, std::__1::function<void ()>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::function<void ()> > > >;

typedef struct ServerConnection {
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field0;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field1;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field2;
    BOOL field3;
    BOOL field4;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field5;
    unsigned int field6;
    BOOL field7;
    BOOL field8;
    CGFloat field9;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field10;
    map<std::__1::basic_string<char>, std::__1::function<void ()>, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::function<void ()> > > > field11;
    NSInteger field12;
    NSInteger field13;
    BOOL field14;
    BOOL field15;
    int field16;
    BOOL field17;
    BOOL field18;
    unsigned int field19;
} ServerConnection;

typedef struct __base<mc::Data (const std::__1::type_index &)> {
} // Error Processing Struct Fields

typedef struct __value_func<mc::Data (const std::__1::type_index &)> {
    type field0;
    __base<mc::Data (const std::__1::type_index &)> field1;
} __value_func<mc::Data (const std::__1::type_index &)>;

typedef struct function<mc::Data (const std::__1::type_index &)> {
    __value_func<mc::Data (const std::__1::type_index &)> field0;
} function<mc::Data (const std::__1::type_index &)>;

typedef struct __base<mc::Data (const std::__1::type_index &, const mc::Any &)> {
} // Error Processing Struct Fields

typedef struct __value_func<mc::Data (const std::__1::type_index &, const mc::Any &)> {
    type field0;
    __base<mc::Data (const std::__1::type_index &, const mc::Any &)> field1;
} __value_func<mc::Data (const std::__1::type_index &, const mc::Any &)>;

typedef struct function<mc::Data (const std::__1::type_index &, const mc::Any &)> {
    __value_func<mc::Data (const std::__1::type_index &, const mc::Any &)> field0;
} function<mc::Data (const std::__1::type_index &, const mc::Any &)>;

typedef struct __base<mc::Data (const mc::Any &)> {
} // Error Processing Struct Fields

typedef struct __value_func<mc::Data (const mc::Any &)> {
    type field0;
    __base<mc::Data (const mc::Any &)> field1;
} __value_func<mc::Data (const mc::Any &)>;

typedef struct function<mc::Data (const mc::Any &)> {
    __value_func<mc::Data (const mc::Any &)> field0;
} function<mc::Data (const mc::Any &)>;

typedef struct __base<std::__1::pair<std::__1::type_index, mc::Any> (const mc::Data &)> {
} // Error Processing Struct Fields

typedef struct __value_func<std::__1::pair<std::__1::type_index, mc::Any> (const mc::Data &)> {
    type field0;
    __base<std::__1::pair<std::__1::type_index, mc::Any> (const mc::Data &)> field1;
} __value_func<std::__1::pair<std::__1::type_index, mc::Any> (const mc::Data &)>;

typedef struct function<std::__1::pair<std::__1::type_index, mc::Any> (const mc::Data &)> {
    __value_func<std::__1::pair<std::__1::type_index, mc::Any> (const mc::Data &)> field0;
} function<std::__1::pair<std::__1::type_index, mc::Any> (const mc::Data &)>;

typedef struct __base<bool (const mc::Data &)> {
} // Error Processing Struct Fields

typedef struct __value_func<bool (const mc::Data &)> {
    type field0;
    __base<bool (const mc::Data &)> field1;
} __value_func<bool (const mc::Data &)>;

typedef struct function<bool (const mc::Data &)> {
    __value_func<bool (const mc::Data &)> field0;
} function<bool (const mc::Data &)>;

typedef struct __base<std::__1::type_index ()> {
} // Error Processing Struct Fields

typedef struct __value_func<std::__1::type_index ()> {
    type field0;
    __base<std::__1::type_index ()> field1;
} __value_func<std::__1::type_index ()>;

typedef struct function<std::__1::type_index ()> {
    __value_func<std::__1::type_index ()> field0;
} function<std::__1::type_index ()>;

typedef struct __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> {
} // Error Processing Struct Fields

typedef struct __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > {
    NSUInteger field0;
} __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> >;

typedef struct __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > {
    __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > field0;
} __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> field0;
    __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > field1;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > >;

typedef struct unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > > {
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > > field0;
} unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> field0;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> > >;

typedef struct __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::hash<std::__1::type_index>, true> > {
    NSUInteger field0;
} __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::hash<std::__1::type_index>, true> >;

typedef struct __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::equal_to<std::__1::type_index>, true> > {
    float field0;
} __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::equal_to<std::__1::type_index>, true> >;

typedef struct __hash_table<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::hash<std::__1::type_index>, true>, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::equal_to<std::__1::type_index>, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData> > > {
    unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *> *> > > field0;
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, void *> > > field1;
    __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::hash<std::__1::type_index>, true> > field2;
    __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::equal_to<std::__1::type_index>, true> > field3;
} __hash_table<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::hash<std::__1::type_index>, true>, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::equal_to<std::__1::type_index>, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData> > >;

typedef struct unordered_map<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData, std::__1::hash<std::__1::type_index>, std::__1::equal_to<std::__1::type_index>, std::__1::allocator<std::__1::pair<const std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData> > > {
    __hash_table<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::hash<std::__1::type_index>, true>, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData>, std::__1::equal_to<std::__1::type_index>, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData> > > field0;
} unordered_map<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData, std::__1::hash<std::__1::type_index>, std::__1::equal_to<std::__1::type_index>, std::__1::allocator<std::__1::pair<const std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData> > >;

typedef struct _opaque_pthread_mutex_t {
    NSInteger __sig;
    char __opaque;
} _opaque_pthread_mutex_t;

typedef struct mutex {
    _opaque_pthread_mutex_t __m_;
} mutex;

typedef struct thread {
} // Error Processing Struct Fields

typedef struct vector<std::__1::thread, std::__1::allocator<std::__1::thread> > {
} // Error Processing Struct Fields

typedef struct TaskScheduler {
} // Error Processing Struct Fields

typedef struct TaskQueue {
} // Error Processing Struct Fields

typedef struct shared_ptr<mc::TaskQueue> {
} // Error Processing Struct Fields

typedef struct shared_ptr<mc::Task> {
} // Error Processing Struct Fields

typedef struct __split_buffer<std::__1::shared_ptr<mc::Task> *, std::__1::allocator<std::__1::shared_ptr<mc::Task> *> > {
} // Error Processing Struct Fields

typedef struct __compressed_pair<unsigned long, std::__1::allocator<std::__1::shared_ptr<mc::Task> > > {
    NSUInteger field0;
} __compressed_pair<unsigned long, std::__1::allocator<std::__1::shared_ptr<mc::Task> > >;

typedef struct deque<std::__1::shared_ptr<mc::Task>, std::__1::allocator<std::__1::shared_ptr<mc::Task> > > {
    __split_buffer<std::__1::shared_ptr<mc::Task> *, std::__1::allocator<std::__1::shared_ptr<mc::Task> *> > field0;
    NSUInteger field1;
    __compressed_pair<unsigned long, std::__1::allocator<std::__1::shared_ptr<mc::Task> > > field2;
} deque<std::__1::shared_ptr<mc::Task>, std::__1::allocator<std::__1::shared_ptr<mc::Task> > >;

typedef struct Socket {
} // Error Processing Struct Fields

typedef struct __compressed_pair<mc::Socket *, std::__1::default_delete<mc::Socket> > {
    Socket field0;
} __compressed_pair<mc::Socket *, std::__1::default_delete<mc::Socket> >;

typedef struct unique_ptr<mc::Socket, std::__1::default_delete<mc::Socket> > {
    __compressed_pair<mc::Socket *, std::__1::default_delete<mc::Socket> > field0;
} unique_ptr<mc::Socket, std::__1::default_delete<mc::Socket> >;

typedef struct __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> {
} // Error Processing Struct Fields

typedef struct __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > {
    NSUInteger field0;
} __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> >;

typedef struct __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > {
    __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > field0;
} __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> field0;
    __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > field1;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > >;

typedef struct unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > > {
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > > field0;
} unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> field0;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> > >;

typedef struct __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::hash<std::__1::type_index>, true> > {
    NSUInteger field0;
} __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::hash<std::__1::type_index>, true> >;

typedef struct __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::equal_to<std::__1::type_index>, true> > {
    float field0;
} __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::equal_to<std::__1::type_index>, true> >;

typedef struct __hash_table<std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::hash<std::__1::type_index>, true>, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::equal_to<std::__1::type_index>, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::type_index, bool> > > {
    unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *> *> > > field0;
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::type_index, bool>, void *> > > field1;
    __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::hash<std::__1::type_index>, true> > field2;
    __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::equal_to<std::__1::type_index>, true> > field3;
} __hash_table<std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::hash<std::__1::type_index>, true>, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::equal_to<std::__1::type_index>, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::type_index, bool> > >;

typedef struct unordered_map<std::__1::type_index, bool, std::__1::hash<std::__1::type_index>, std::__1::equal_to<std::__1::type_index>, std::__1::allocator<std::__1::pair<const std::__1::type_index, bool> > > {
    __hash_table<std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::__unordered_map_hasher<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::hash<std::__1::type_index>, true>, std::__1::__unordered_map_equal<std::__1::type_index, std::__1::__hash_value_type<std::__1::type_index, bool>, std::__1::equal_to<std::__1::type_index>, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::type_index, bool> > > field0;
} unordered_map<std::__1::type_index, bool, std::__1::hash<std::__1::type_index>, std::__1::equal_to<std::__1::type_index>, std::__1::allocator<std::__1::pair<const std::__1::type_index, bool> > >;

typedef struct __tree<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> >, std::__1::__map_value_compare<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> >, mc::Courier<std::__1::type_index>::PriorityKeyCompare, true>, std::__1::allocator<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> > > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> > > > {
    __tree<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> >, std::__1::__map_value_compare<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> >, mc::Courier<std::__1::type_index>::PriorityKeyCompare, true>, std::__1::allocator<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> > > > field0;
} map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> > > >;

typedef struct __tree<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> >, std::__1::__map_value_compare<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> >, mc::Courier<std::__1::type_index>::PriorityKeyCompare, true>, std::__1::allocator<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> > > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> > > > {
    __tree<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> >, std::__1::__map_value_compare<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> >, mc::Courier<std::__1::type_index>::PriorityKeyCompare, true>, std::__1::allocator<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> > > > field0;
} map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> > > >;

typedef struct __tree<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> >, std::__1::__map_value_compare<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> >, mc::Courier<std::__1::type_index>::PriorityKeyCompare, true>, std::__1::allocator<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> > > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> > > > {
    __tree<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> >, std::__1::__map_value_compare<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> >, mc::Courier<std::__1::type_index>::PriorityKeyCompare, true>, std::__1::allocator<std::__1::__value_type<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> > > > field0;
} map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> > > >;

typedef struct NetworkCourier<std::__1::type_index> {
    unk field0;
    int field1;
    int field2;
    function<mc::Data (const std::__1::type_index &)> field3;
    function<mc::Data (const std::__1::type_index &, const mc::Any &)> field4;
    function<mc::Data (const mc::Any &)> field5;
    function<std::__1::pair<std::__1::type_index, mc::Any> (const mc::Data &)> field6;
    function<bool (const mc::Data &)> field7;
    function<std::__1::type_index ()> field8;
    unordered_map<std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData, std::__1::hash<std::__1::type_index>, std::__1::equal_to<std::__1::type_index>, std::__1::allocator<std::__1::pair<const std::__1::type_index, mc::Courier<std::__1::type_index>::MessageTypeData> > > field9;
    mutex field10;
    vector<std::__1::thread, std::__1::allocator<std::__1::thread> > field11;
    TaskScheduler field12;
    shared_ptr<mc::TaskQueue> field13;
    deque<std::__1::shared_ptr<mc::Task>, std::__1::allocator<std::__1::shared_ptr<mc::Task> > > field14;
    mutex field15;
    unique_ptr<mc::Socket, std::__1::default_delete<mc::Socket> > field16;
    mutex field17;
    int field18;
    int field19;
    BOOL field20;
    BOOL field21;
    unordered_map<std::__1::type_index, bool, std::__1::hash<std::__1::type_index>, std::__1::equal_to<std::__1::type_index>, std::__1::allocator<std::__1::pair<const std::__1::type_index, bool> > > field22;
    mutex field23;
    map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void ()> > > > field24;
    mutex field25;
    map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (long long, const std::__1::basic_string<char> &)> > > > field26;
    mutex field27;
    map<std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)>, mc::Courier<std::__1::type_index>::PriorityKeyCompare, std::__1::allocator<std::__1::pair<const std::__1::pair<std::__1::basic_string<char>, mc::Courier<std::__1::type_index>::CallbackPriority>, std::__1::function<void (const mc::Data &)> > > > field28;
    mutex field29;
} NetworkCourier<std::__1::type_index>;

typedef struct __compressed_pair<ServerConnection *, std::__1::default_delete<ServerConnection> > {
} // Error Processing Struct Fields

typedef struct unique_ptr<ServerConnection, std::__1::default_delete<ServerConnection> > {
    __compressed_pair<ServerConnection *, std::__1::default_delete<ServerConnection> > __ptr_;
} unique_ptr<ServerConnection, std::__1::default_delete<ServerConnection> >;

typedef struct __compressed_pair<AdsManager *, std::__1::default_delete<AdsManager> > {
} // Error Processing Struct Fields

typedef struct unique_ptr<AdsManager, std::__1::default_delete<AdsManager> > {
    __compressed_pair<AdsManager *, std::__1::default_delete<AdsManager> > __ptr_;
} unique_ptr<AdsManager, std::__1::default_delete<AdsManager> >;

typedef struct __compressed_pair<MCLibraHandler *, std::__1::default_delete<MCLibraHandler> > {
} // Error Processing Struct Fields

typedef struct unique_ptr<MCLibraHandler, std::__1::default_delete<MCLibraHandler> > {
    __compressed_pair<MCLibraHandler *, std::__1::default_delete<MCLibraHandler> > __ptr_;
} unique_ptr<MCLibraHandler, std::__1::default_delete<MCLibraHandler> >;

typedef struct __compressed_pair<AlarmManager *, std::__1::default_delete<AlarmManager> > {
} // Error Processing Struct Fields

typedef struct unique_ptr<AlarmManager, std::__1::default_delete<AlarmManager> > {
    __compressed_pair<AlarmManager *, std::__1::default_delete<AlarmManager> > __ptr_;
} unique_ptr<AlarmManager, std::__1::default_delete<AlarmManager> >;

typedef struct __compressed_pair<EnvironmentSelector *, std::__1::default_delete<EnvironmentSelector> > {
} // Error Processing Struct Fields

typedef struct unique_ptr<EnvironmentSelector, std::__1::default_delete<EnvironmentSelector> > {
    __compressed_pair<EnvironmentSelector *, std::__1::default_delete<EnvironmentSelector> > __ptr_;
} unique_ptr<EnvironmentSelector, std::__1::default_delete<EnvironmentSelector> >;

typedef struct __compressed_pair<mc::NetworkCourier<std::__1::type_index> *, std::__1::default_delete<mc::NetworkCourier<std::__1::type_index> > > {
} // Error Processing Struct Fields

typedef struct unique_ptr<mc::NetworkCourier<std::__1::type_index>, std::__1::default_delete<mc::NetworkCourier<std::__1::type_index> > > {
    __compressed_pair<mc::NetworkCourier<std::__1::type_index> *, std::__1::default_delete<mc::NetworkCourier<std::__1::type_index> > > __ptr_;
} unique_ptr<mc::NetworkCourier<std::__1::type_index>, std::__1::default_delete<mc::NetworkCourier<std::__1::type_index> > >;

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback>, std::__1::__map_value_compare<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, std::__1::__value_type<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback>, std::__1::less<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback> > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback, std::__1::less<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback> > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback>, std::__1::__map_value_compare<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, std::__1::__value_type<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback>, std::__1::less<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback> > > field0;
} map<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback, std::__1::less<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, AlarmManager::Callback> > >;

typedef struct vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > {
} // Error Processing Struct Fields

typedef struct pair<std::__1::basic_string<char>, int> {
} // Error Processing Struct Fields

typedef struct vector<std::__1::pair<std::__1::basic_string<char>, int>, std::__1::allocator<std::__1::pair<std::__1::basic_string<char>, int> > > {
} // Error Processing Struct Fields

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char>, int>, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, int>, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, int> > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char>, int, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, int> > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char>, int>, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, int>, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, int> > > __tree_;
} map<std::__1::basic_string<char>, int, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, int> > >;

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > >, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > >, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > > > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > >, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > > > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > >, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > >, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > > > > __tree_;
} map<std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > >, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, std::__1::vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > > > >;

typedef struct __compressed_pair<float *, std::__1::allocator<float> > {
    float __value_;
} __compressed_pair<float *, std::__1::allocator<float> >;

typedef struct vector<float, std::__1::allocator<float> > {
    float __begin_;
    float __end_;
    __compressed_pair<float *, std::__1::allocator<float> > __end_cap_;
} vector<float, std::__1::allocator<float> >;

typedef struct MCGoliath {
} // Error Processing Struct Fields

typedef struct shared_ptr<mc::MCGoliath> {
} // Error Processing Struct Fields

typedef struct MCGoliathWrapper {
    unk field0;
    shared_ptr<mc::MCGoliath> field1;
} MCGoliathWrapper;

typedef struct LoginInfo {
} // Error Processing Struct Fields

typedef struct AnyKeeperBase {
} // Error Processing Struct Fields

typedef struct __compressed_pair<mc::Any::AnyKeeperBase *, std::__1::default_delete<mc::Any::AnyKeeperBase> > {
    AnyKeeperBase __value_;
} __compressed_pair<mc::Any::AnyKeeperBase *, std::__1::default_delete<mc::Any::AnyKeeperBase> >;

typedef struct unique_ptr<mc::Any::AnyKeeperBase, std::__1::default_delete<mc::Any::AnyKeeperBase> > {
    __compressed_pair<mc::Any::AnyKeeperBase *, std::__1::default_delete<mc::Any::AnyKeeperBase> > __ptr_;
} unique_ptr<mc::Any::AnyKeeperBase, std::__1::default_delete<mc::Any::AnyKeeperBase> >;

typedef struct Any {
    unique_ptr<mc::Any::AnyKeeperBase, std::__1::default_delete<mc::Any::AnyKeeperBase> > _keeper;
} Any;

typedef struct __compressed_pair<ApplicationState **, std::__1::allocator<ApplicationState *> > {
    unsigned int __value_;
} __compressed_pair<ApplicationState **, std::__1::allocator<ApplicationState *> >;

typedef struct __split_buffer<ApplicationState *, std::__1::allocator<ApplicationState *> > {
    unsigned int __first_;
    unsigned int __begin_;
    unsigned int __end_;
    __compressed_pair<ApplicationState **, std::__1::allocator<ApplicationState *> > __end_cap_;
} __split_buffer<ApplicationState *, std::__1::allocator<ApplicationState *> >;

typedef struct __compressed_pair<unsigned long, std::__1::allocator<ApplicationState> > {
    NSUInteger __value_;
} __compressed_pair<unsigned long, std::__1::allocator<ApplicationState> >;

typedef struct deque<ApplicationState, std::__1::allocator<ApplicationState> > {
    __split_buffer<ApplicationState *, std::__1::allocator<ApplicationState *> > __map_;
    NSUInteger __start_;
    __compressed_pair<unsigned long, std::__1::allocator<ApplicationState> > __size_;
} deque<ApplicationState, std::__1::allocator<ApplicationState> >;

typedef struct __SecTrust {
} // Error Processing Struct Fields

typedef struct __SecCertificate {
} // Error Processing Struct Fields

typedef struct CLSMachOFile {
    int fd;
    NSUInteger mappedSize;
    void mappedFile;
} CLSMachOFile;

typedef struct CLSMachOSlice {
    void startAddress;
    int cputype;
    int cpusubtype;
} CLSMachOSlice;

typedef struct GULReachabilityApi {
    unk field0;
    unk field1;
    unk field2;
    unk field3;
    unk field4;
} GULReachabilityApi;

typedef struct __SCNetworkReachability {
} // Error Processing Struct Fields

typedef struct __CFString {
} // Error Processing Struct Fields

typedef struct CGColorSpace {
} // Error Processing Struct Fields

typedef struct gzFile_s {
    unsigned int field0;
    char * field1;
    NSInteger field2;
} gzFile_s;

typedef struct sqlite3 {
} // Error Processing Struct Fields

typedef struct sqlite3_stmt {
} // Error Processing Struct Fields

typedef struct __CFRunLoopTimer {
} // Error Processing Struct Fields

typedef struct __CFNetService {
} // Error Processing Struct Fields

typedef struct _DNSServiceRef_t {
} // Error Processing Struct Fields

typedef struct __CFSocket {
} // Error Processing Struct Fields

typedef struct __CFRunLoopSource {
} // Error Processing Struct Fields

typedef struct __CFHTTPMessage {
} // Error Processing Struct Fields

typedef struct internal_state {
} // Error Processing Struct Fields

typedef struct z_stream_s {
    char * next_in;
    unsigned int avail_in;
    NSUInteger total_in;
    char * next_out;
    unsigned int avail_out;
    NSUInteger total_out;
    char * msg;
    internal_state state;
    unk zalloc;
    unk zfree;
    void opaque;
    int data_type;
    NSUInteger adler;
    NSUInteger reserved;
} z_stream_s;

typedef struct __sbuf {
    char * field0;
    int field1;
} __sbuf;

typedef struct __sFILEX {
} // Error Processing Struct Fields

typedef struct __sFILE {
    char * field0;
    int field1;
    int field2;
    short field3;
    short field4;
    __sbuf field5;
    int field6;
    void field7;
    unk field8;
    unk field9;
    unk field10;
    unk field11;
    __sbuf field12;
    __sFILEX field13;
    int field14;
    unsigned char field15;
    unsigned char field16;
    __sbuf field17;
    int field18;
    NSInteger field19;
} __sFILE;

typedef struct Patcher {
} // Error Processing Struct Fields

typedef struct shared_ptr<mc::Patcher> {
} // Error Processing Struct Fields

typedef struct MCPatcherDelegate {
} // Error Processing Struct Fields

typedef struct shared_ptr<MCPatcherDelegate> {
} // Error Processing Struct Fields

typedef struct kmMat4 {
    float mat;
} kmMat4;

typedef struct _ccVertex3F {
    float x;
    float y;
    float z;
} _ccVertex3F;

typedef struct _ccTex2F {
    float u;
    float v;
} _ccTex2F;

typedef struct _ccV3F_C4B_T2F {
    _ccVertex3F vertices;
    _ccColor4B colors;
    _ccTex2F texCoords;
} _ccV3F_C4B_T2F;

typedef struct _ccV3F_C4B_T2F_Quad {
    _ccV3F_C4B_T2F tl;
    _ccV3F_C4B_T2F bl;
    _ccV3F_C4B_T2F tr;
    _ccV3F_C4B_T2F br;
} _ccV3F_C4B_T2F_Quad;

typedef struct anim_layout {
} // Error Processing Struct Fields

typedef struct vsz_layout {
    unsigned int field0;
    anim_layout field1;
    unsigned int field2;
    unsigned int field3;
    float field4;
    unsigned int field5;
    unsigned short field6;
    unsigned int field7;
    float field8;
    float field9;
    float field10;
    char * field11;
} vsz_layout;

typedef struct Value {
    NSInteger field0;
    int field1;
    BOOL field2;
} Value;

typedef struct ShaderUniform {
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field0;
    int field1;
    unsigned int field2;
} ShaderUniform;

typedef struct spAnimationState {
} // Error Processing Struct Fields

typedef struct spTrackEntry {
} // Error Processing Struct Fields

typedef struct _ccColor4F {
    float r;
    float g;
    float b;
    float a;
} _ccColor4F;

typedef struct _ccVertex2F {
    float x;
    float y;
} _ccVertex2F;

typedef struct _ccV2F_C4B_T2F {
    _ccVertex2F field0;
    _ccColor4B field1;
    _ccTex2F field2;
} _ccV2F_C4B_T2F;

typedef struct _ccFontShadow {
    BOOL m_shadowEnabled;
    CGSize m_shadowOffset;
    float m_shadowBlur;
    float m_shadowOpacity;
    _ccColorThreeB m_shadowColor;
} _ccFontShadow;

typedef struct _ccFontStroke {
    BOOL m_strokeEnabled;
    _ccColorThreeB m_strokeColor;
    float m_strokeSize;
} _ccFontStroke;

typedef struct _BMFontDef {
    unsigned short field0;
    CGRect field1;
    short field2;
    short field3;
    short field4;
} _BMFontDef;

typedef struct UT_hash_table {
} // Error Processing Struct Fields

typedef struct UT_hash_handle {
} // Error Processing Struct Fields

typedef struct _FontDefHashElement {
    NSUInteger field0;
    _BMFontDef field1;
    UT_hash_handle field2;
} _FontDefHashElement;

typedef struct _BMFontPadding {
    int left;
    int top;
    int right;
    int bottom;
} _BMFontPadding;

typedef struct _KerningHashElement {
} // Error Processing Struct Fields

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderUniform *>, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderUniform *>, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderUniform *> > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char>, mc::Renderer::ShaderUniform *, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, mc::Renderer::ShaderUniform *> > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderUniform *>, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderUniform *>, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderUniform *> > > field0;
} map<std::__1::basic_string<char>, mc::Renderer::ShaderUniform *, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, mc::Renderer::ShaderUniform *> > >;

typedef struct __tree<std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *>, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *>, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *> > > {
} // Error Processing Struct Fields

typedef struct map<std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *> > > {
    __tree<std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *>, std::__1::__map_value_compare<std::__1::basic_string<char>, std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *>, std::__1::less<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__value_type<std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *> > > field0;
} map<std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *, std::__1::less<std::__1::basic_string<char> >, std::__1::allocator<std::__1::pair<const std::__1::basic_string<char>, mc::Renderer::ShaderAttribute *> > >;

typedef struct __tree<std::__1::__value_type<int, mc::Renderer::ShaderUniform *>, std::__1::__map_value_compare<int, std::__1::__value_type<int, mc::Renderer::ShaderUniform *>, std::__1::less<int>, true>, std::__1::allocator<std::__1::__value_type<int, mc::Renderer::ShaderUniform *> > > {
} // Error Processing Struct Fields

typedef struct map<int, mc::Renderer::ShaderUniform *, std::__1::less<int>, std::__1::allocator<std::__1::pair<const int, mc::Renderer::ShaderUniform *> > > {
    __tree<std::__1::__value_type<int, mc::Renderer::ShaderUniform *>, std::__1::__map_value_compare<int, std::__1::__value_type<int, mc::Renderer::ShaderUniform *>, std::__1::less<int>, true>, std::__1::allocator<std::__1::__value_type<int, mc::Renderer::ShaderUniform *> > > field0;
} map<int, mc::Renderer::ShaderUniform *, std::__1::less<int>, std::__1::allocator<std::__1::pair<const int, mc::Renderer::ShaderUniform *> > >;

typedef struct __tree<std::__1::__value_type<int, mc::Renderer::ShaderAttribute *>, std::__1::__map_value_compare<int, std::__1::__value_type<int, mc::Renderer::ShaderAttribute *>, std::__1::less<int>, true>, std::__1::allocator<std::__1::__value_type<int, mc::Renderer::ShaderAttribute *> > > {
} // Error Processing Struct Fields

typedef struct map<int, mc::Renderer::ShaderAttribute *, std::__1::less<int>, std::__1::allocator<std::__1::pair<const int, mc::Renderer::ShaderAttribute *> > > {
    __tree<std::__1::__value_type<int, mc::Renderer::ShaderAttribute *>, std::__1::__map_value_compare<int, std::__1::__value_type<int, mc::Renderer::ShaderAttribute *>, std::__1::less<int>, true>, std::__1::allocator<std::__1::__value_type<int, mc::Renderer::ShaderAttribute *> > > field0;
} map<int, mc::Renderer::ShaderAttribute *, std::__1::less<int>, std::__1::allocator<std::__1::pair<const int, mc::Renderer::ShaderAttribute *> > >;

typedef struct __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> {
} // Error Processing Struct Fields

typedef struct __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > {
    NSUInteger field0;
} __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> >;

typedef struct __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > {
    __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > field0;
} __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> field0;
    __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > field1;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > >;

typedef struct unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > > {
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > > field0;
} unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> field0;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> > >;

typedef struct __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::hash<std::__1::basic_string<char> >, true> > {
    NSUInteger field0;
} __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::hash<std::__1::basic_string<char> >, true> >;

typedef struct __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::equal_to<std::__1::basic_string<char> >, true> > {
    float field0;
} __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::equal_to<std::__1::basic_string<char> >, true> >;

typedef struct __hash_table<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::__unordered_map_hasher<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::hash<std::__1::basic_string<char> >, true>, std::__1::__unordered_map_equal<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::equal_to<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value> > > {
    unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *> *> > > field0;
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, void *> > > field1;
    __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::hash<std::__1::basic_string<char> >, true> > field2;
    __compressed_pair<float, std::__1::__unordered_map_equal<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::equal_to<std::__1::basic_string<char> >, true> > field3;
} __hash_table<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::__unordered_map_hasher<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::hash<std::__1::basic_string<char> >, true>, std::__1::__unordered_map_equal<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::equal_to<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value> > >;

typedef struct StringMap {
    __hash_table<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::__unordered_map_hasher<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::hash<std::__1::basic_string<char> >, true>, std::__1::__unordered_map_equal<std::__1::basic_string<char>, std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value>, std::__1::equal_to<std::__1::basic_string<char> >, true>, std::__1::allocator<std::__1::__hash_value_type<std::__1::basic_string<char>, mc::Value> > > field0;
} StringMap;

typedef struct sCCParticle {
    CGPoint field0;
    CGPoint field1;
    _ccColor4F field2;
    _ccColor4F field3;
    float field4;
    float field5;
    float field6;
    float field7;
    CGFloat field8;
    NSUInteger field9;
    unk field10;
    ? field11;
    ? field12;
} sCCParticle;

typedef struct ccArray {
    NSUInteger field0;
    NSUInteger field1;
    id field2;
} ccArray;

typedef struct sImageTGA {
    int field0;
    unsigned char field1;
    unsigned char field2;
    short field3;
    short field4;
    char * field5;
    int field6;
} sImageTGA;

typedef struct STexturedQuad {
} // Error Processing Struct Fields

typedef struct vector<mc::CTextRenderer_Harfbuzz::STexturedQuad, std::__1::allocator<mc::CTextRenderer_Harfbuzz::STexturedQuad> > {
} // Error Processing Struct Fields

typedef struct vector<mc::CTextRenderer_Harfbuzz::WordQuads, std::__1::allocator<mc::CTextRenderer_Harfbuzz::WordQuads> > {
} // Error Processing Struct Fields

typedef struct vector<std::__1::vector<mc::CTextRenderer_Harfbuzz::WordQuads, std::__1::allocator<mc::CTextRenderer_Harfbuzz::WordQuads> >, std::__1::allocator<std::__1::vector<mc::CTextRenderer_Harfbuzz::WordQuads, std::__1::allocator<mc::CTextRenderer_Harfbuzz::WordQuads> > > > {
} // Error Processing Struct Fields

typedef struct TextRenderJobData {
} // Error Processing Struct Fields

typedef struct vector<mc::Renderer::Mesh, std::__1::allocator<mc::Renderer::Mesh> > {
} // Error Processing Struct Fields

typedef struct CGImage {
} // Error Processing Struct Fields

typedef struct _hashElement {
} // Error Processing Struct Fields

typedef struct _ccBezierConfig {
    CGPoint endPosition;
    CGPoint controlPoint_1;
    CGPoint controlPoint_2;
} _ccBezierConfig;

typedef struct linear_congruential_engine<unsigned int, 48271, 0, 2147483647> {
    unsigned int __x_;
} linear_congruential_engine<unsigned int, 48271, 0, 2147483647>;

typedef struct RandomGenerator<std::__1::linear_congruential_engine<unsigned int, 48271, 0, 2147483647> > {
    linear_congruential_engine<unsigned int, 48271, 0, 2147483647> _generator;
} RandomGenerator<std::__1::linear_congruential_engine<unsigned int, 48271, 0, 2147483647> >;

typedef struct _ccQuad3 {
    _ccVertex3F field0;
    _ccVertex3F field1;
    _ccVertex3F field2;
    _ccVertex3F field3;
} _ccQuad3;

typedef struct MCTextRendererProperties {
    int field0;
    int field1;
    int field2;
    int field3;
    ? field4;
    ? field5;
    ? field6;
    ? field7;
    float field8;
    BOOL field9;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field10;
    ? field11;
    float field12;
    float field13;
    void field14;
} MCTextRendererProperties;

typedef struct __base<void (void **, int *, int *)> {
} // Error Processing Struct Fields

typedef struct __value_func<void (void **, int *, int *)> {
    type field0;
    __base<void (void **, int *, int *)> field1;
} __value_func<void (void **, int *, int *)>;

typedef struct function<void (void **, int *, int *)> {
    __value_func<void (void **, int *, int *)> field0;
} function<void (void **, int *, int *)>;

typedef struct _ccTexParams {
    int field0;
    int field1;
    int field2;
    int field3;
} _ccTexParams;

typedef struct timeval {
    NSInteger tv_sec;
    int tv_usec;
} timeval;

typedef struct _hashUniformEntry {
} // Error Processing Struct Fields

typedef struct ccTouchHandlerHelperData {
    SEL touchesSel;
    SEL touchSel;
    int type;
} ccTouchHandlerHelperData;

typedef struct _hashSelectorEntry {
} // Error Processing Struct Fields

typedef struct _listEntry {
} // Error Processing Struct Fields

typedef struct _hashUpdateEntry {
} // Error Processing Struct Fields

typedef struct ALCcontext_struct {
} // Error Processing Struct Fields

typedef struct _bufferInfo {
    unsigned int field0;
    int field1;
    void field2;
    int field3;
    int field4;
    int field5;
} _bufferInfo;

typedef struct _sourceInfo {
    BOOL field0;
    unsigned int field1;
    unsigned int field2;
} _sourceInfo;

typedef struct _sourceGroup {
    int field0;
    int field1;
    int field2;
    BOOL field3;
    BOOL field4;
    int field5;
} _sourceGroup;

typedef struct spSkeletonData {
} // Error Processing Struct Fields

typedef struct spBone {
} // Error Processing Struct Fields

typedef struct spSkeleton {
} // Error Processing Struct Fields

typedef struct spBoneData {
} // Error Processing Struct Fields

typedef struct spAtlasPage {
} // Error Processing Struct Fields

typedef struct spAtlasRegion {
} // Error Processing Struct Fields

typedef struct spAtlas {
    spAtlasPage field0;
    spAtlasRegion field1;
    void field2;
} spAtlas;

typedef struct spAttachment {
    char * field0;
    int field1;
    void field2;
} spAttachment;

typedef struct spRegionAttachment {
    spAttachment field0;
    char * field1;
    float field2;
    float field3;
    float field4;
    float field5;
    float field6;
    float field7;
    float field8;
    float field9;
    float field10;
    float field11;
    float field12;
    void field13;
    int field14;
    int field15;
    int field16;
    int field17;
    int field18;
    int field19;
    float field20;
    float field21;
} spRegionAttachment;

typedef struct spMeshAttachment {
    spAttachment field0;
    char * field1;
    int field2;
    float field3;
    int field4;
    float field5;
    float field6;
    int field7;
    int field8;
    float field9;
    float field10;
    float field11;
    float field12;
    void field13;
    int field14;
    int field15;
    int field16;
    int field17;
    int field18;
    int field19;
    float field20;
    float field21;
    float field22;
    float field23;
    int field24;
    int field25;
    int field26;
    float field27;
    float field28;
} spMeshAttachment;

typedef struct spWeightedMeshAttachment {
    spAttachment field0;
    char * field1;
    int field2;
    int field3;
    int field4;
    float field5;
    int field6;
    int field7;
    int field8;
    float field9;
    float field10;
    int field11;
    float field12;
    float field13;
    float field14;
    float field15;
    void field16;
    int field17;
    int field18;
    int field19;
    int field20;
    int field21;
    int field22;
    float field23;
    float field24;
    float field25;
    float field26;
    int field27;
    int field28;
    int field29;
    float field30;
    float field31;
} spWeightedMeshAttachment;

typedef struct spSlotData {
} // Error Processing Struct Fields

typedef struct spSlot {
} // Error Processing Struct Fields

typedef struct spAnimationStateData {
} // Error Processing Struct Fields

typedef struct spEventData {
} // Error Processing Struct Fields

typedef struct spEvent {
    spEventData field0;
    float field1;
    int field2;
    float field3;
    char * field4;
} spEvent;

typedef struct Data {
    unk field0;
    char * field1;
    NSUInteger field2;
    BOOL field3;
} Data;

typedef struct Postman {
} // Error Processing Struct Fields

typedef struct NewsfeedMessage {
    Postman field0;
    BOOL field1;
    int field2;
    int field3;
    int field4;
    BOOL field5;
    BOOL field6;
    int field7;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field8;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field9;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field10;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field11;
} NewsfeedMessage;

typedef struct vector<mc::NewsfeedMessage, std::__1::allocator<mc::NewsfeedMessage> > {
} // Error Processing Struct Fields

typedef struct NewsfeedMessageViewInfo {
    id field0;
    id field1;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > field2;
    int field3;
    BOOL field4;
} NewsfeedMessageViewInfo;

typedef struct vector<mc::NewsfeedMessageViewInfo, std::__1::allocator<mc::NewsfeedMessageViewInfo> > {
} // Error Processing Struct Fields

typedef struct __asl_object_s {
} // Error Processing Struct Fields

typedef struct UIColor {
    Class field0;
} UIColor;

typedef struct __CFRunLoop {
} // Error Processing Struct Fields

typedef struct _RNCryptorKeyDerivationSettings {
    NSUInteger keySize;
    NSUInteger saltSize;
    unsigned int PBKDFAlgorithm;
    unsigned int PRF;
    unsigned int rounds;
    BOOL hasV2Password;
} _RNCryptorKeyDerivationSettings;

typedef struct _RNCryptorSettings {
    unsigned int algorithm;
    NSUInteger blockSize;
    NSUInteger IVSize;
    unsigned int options;
    unsigned int HMACAlgorithm;
    NSUInteger HMACLength;
    _RNCryptorKeyDerivationSettings keySettings;
    _RNCryptorKeyDerivationSettings HMACKeySettings;
} _RNCryptorSettings;

typedef struct _CCCryptor {
} // Error Processing Struct Fields

typedef struct sockaddr {
    unsigned char field0;
    unsigned char field1;
    char field2;
} sockaddr;

typedef struct Listener {
} // Error Processing Struct Fields

typedef struct weak_ptr<mc::ads::MoPubInterstitialWrapper::Listener> {
} // Error Processing Struct Fields

typedef struct MoPubInterstitialWrapperImplIos {
    unk field0;
    weak_ptr<mc::ads::MoPubInterstitialWrapper::Listener> field1;
    id field2;
    id field3;
} MoPubInterstitialWrapperImplIos;

typedef struct weak_ptr<mc::MCGoliath> {
} // Error Processing Struct Fields

typedef struct Matrix {
    float field0;
} Matrix;

typedef struct ICMPHeader {
    unsigned char field0;
    unsigned char field1;
    unsigned short field2;
    unsigned short field3;
    unsigned short field4;
} ICMPHeader;

typedef struct __CFHost {
} // Error Processing Struct Fields

typedef struct atomic_flag {
    uint8_t _Value;
    BOOL field1;
} atomic_flag;

typedef struct CGVector {
    CGFloat dx;
    CGFloat dy;
} CGVector;

typedef struct CC_MD5state_st {
    unsigned int A;
    unsigned int B;
    unsigned int C;
    unsigned int D;
    unsigned int Nl;
    unsigned int Nh;
    unsigned int data;
    int num;
} CC_MD5state_st;

typedef struct __CFBinaryHeap {
} // Error Processing Struct Fields

typedef struct TJPlacementListener {
    unk field0;
} TJPlacementListener;

typedef struct CGImageSource {
} // Error Processing Struct Fields

typedef struct ntpTimestamp {
    unsigned int fullSeconds;
    unsigned int partSeconds;
} ntpTimestamp;

typedef struct TJConnectListener {
    unk field0;
} TJConnectListener;

typedef struct TJEarnedCurrencyListener {
    unk field0;
} TJEarnedCurrencyListener;

typedef struct TJVideoListener {
    unk field0;
} TJVideoListener;

typedef struct _FloatAndUnit {
    CGFloat value;
    NSInteger unit;
} _FloatAndUnit;

typedef struct HttpConnectionApple {
} // Error Processing Struct Fields

typedef struct shared_ptr<mc::HttpConnectionApple> {
} // Error Processing Struct Fields

typedef struct __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> {
} // Error Processing Struct Fields

typedef struct __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > {
    NSUInteger __value_;
} __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> >;

typedef struct __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > {
    __compressed_pair<unsigned long, std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > __data_;
} __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> __value_;
    __bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > __value_;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > >;

typedef struct unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > > {
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> **, std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > > __ptr_;
} unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > >;

typedef struct __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> > > {
    __hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> __value_;
} __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> > >;

typedef struct __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::hash<unsigned long>, true> > {
    NSUInteger __value_;
} __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::hash<unsigned long>, true> >;

typedef struct __compressed_pair<float, std::__1::__unordered_map_equal<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::equal_to<unsigned long>, true> > {
    float __value_;
} __compressed_pair<float, std::__1::__unordered_map_equal<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::equal_to<unsigned long>, true> >;

typedef struct __hash_table<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::__unordered_map_hasher<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::hash<unsigned long>, true>, std::__1::__unordered_map_equal<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::equal_to<unsigned long>, true>, std::__1::allocator<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> > > > {
    unique_ptr<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *[], std::__1::__bucket_list_deallocator<std::__1::allocator<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *> *> > > __bucket_list_;
    __compressed_pair<std::__1::__hash_node_base<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> *>, std::__1::allocator<std::__1::__hash_node<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, void *> > > __p1_;
    __compressed_pair<unsigned long, std::__1::__unordered_map_hasher<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::hash<unsigned long>, true> > __p2_;
    __compressed_pair<float, std::__1::__unordered_map_equal<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::equal_to<unsigned long>, true> > __p3_;
} __hash_table<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::__unordered_map_hasher<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::hash<unsigned long>, true>, std::__1::__unordered_map_equal<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::equal_to<unsigned long>, true>, std::__1::allocator<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> > > >;

typedef struct unordered_map<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple>, std::__1::hash<unsigned long>, std::__1::equal_to<unsigned long>, std::__1::allocator<std::__1::pair<const unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> > > > {
    __hash_table<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::__unordered_map_hasher<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::hash<unsigned long>, true>, std::__1::__unordered_map_equal<unsigned long, std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> >, std::__1::equal_to<unsigned long>, true>, std::__1::allocator<std::__1::__hash_value_type<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> > > > __table_;
} unordered_map<unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple>, std::__1::hash<unsigned long>, std::__1::equal_to<unsigned long>, std::__1::allocator<std::__1::pair<const unsigned long, std::__1::shared_ptr<mc::HttpConnectionApple> > > >;

typedef struct AlertViewDelegate {
    function<void ()> willAppearCallback;
    function<void ()> didAppearCallback;
    function<void ()> willDisappearCallback;
    function<void ()> didDisappearCallback;
} AlertViewDelegate;

typedef struct ButtonConfig {
} // Error Processing Struct Fields

typedef struct vector<mc::AlertPopup::ButtonConfig, std::__1::allocator<mc::AlertPopup::ButtonConfig> > {
} // Error Processing Struct Fields

typedef struct StyleConfig {
    CGFloat alertViewWidth;
    CGFloat titleFontSize;
    CGFloat messageFontSize;
    CGFloat buttonFontSize;
    CGFloat buttonHeight;
} StyleConfig;

typedef struct CATransform3D {
    CGFloat field0;
    CGFloat field1;
    CGFloat field2;
    CGFloat field3;
    CGFloat field4;
    CGFloat field5;
    CGFloat field6;
    CGFloat field7;
    CGFloat field8;
    CGFloat field9;
    CGFloat field10;
    CGFloat field11;
    CGFloat field12;
    CGFloat field13;
    CGFloat field14;
    CGFloat field15;
} CATransform3D;

typedef struct recursive_mutex {
    _opaque_pthread_mutex_t __m_;
} recursive_mutex;

typedef struct FBAdDeviceBatteryInfo {
    NSInteger field0;
    CGFloat field1;
} FBAdDeviceBatteryInfo;

typedef struct NSMutableDictionary {
    Class field0;
} NSMutableDictionary;

typedef struct CGColor {
} // Error Processing Struct Fields

typedef struct AQBufferParameters {
    unsigned int bufferSize;
    unsigned int packetCount;
} AQBufferParameters;

typedef struct AQBufferState {
} // Error Processing Struct Fields

typedef struct OpaqueCMClock {
} // Error Processing Struct Fields

typedef struct OpaqueAudioQueue {
} // Error Processing Struct Fields

typedef struct SMPTETime {
    short field0;
    short field1;
    unsigned int field2;
    unsigned int field3;
    unsigned int field4;
    short field5;
    short field6;
    short field7;
    short field8;
} SMPTETime;

typedef struct AudioTimeStamp {
    CGFloat field0;
    NSUInteger field1;
    CGFloat field2;
    NSUInteger field3;
    SMPTETime field4;
    unsigned int field5;
    unsigned int field6;
} AudioTimeStamp;

typedef struct AudioQueueLevelMeterState {
    float field0;
    float field1;
} AudioQueueLevelMeterState;

typedef struct OpaqueAudioQueueTimeline {
} // Error Processing Struct Fields

typedef struct __CVPixelBufferPool {
} // Error Processing Struct Fields

typedef struct __CVOpenGLESTextureCache {
} // Error Processing Struct Fields

typedef struct __CVMetalTextureCache {
} // Error Processing Struct Fields

typedef struct OpaqueCMBlockBuffer {
} // Error Processing Struct Fields

typedef struct AudioBuffer {
    unsigned int mNumberChannels;
    unsigned int mDataByteSize;
    void mData;
} AudioBuffer;

typedef struct __tree<std::__1::__value_type<FBDataSegment, NSData *>, std::__1::__map_value_compare<FBDataSegment, std::__1::__value_type<FBDataSegment, NSData *>, cmpOfDataSegment, true>, std::__1::allocator<std::__1::__value_type<FBDataSegment, NSData *> > > {
} // Error Processing Struct Fields

typedef struct map<FBDataSegment, NSData *, cmpOfDataSegment, std::__1::allocator<std::__1::pair<const FBDataSegment, NSData *> > > {
    __tree<std::__1::__value_type<FBDataSegment, NSData *>, std::__1::__map_value_compare<FBDataSegment, std::__1::__value_type<FBDataSegment, NSData *>, cmpOfDataSegment, true>, std::__1::allocator<std::__1::__value_type<FBDataSegment, NSData *> > > __tree_;
} map<FBDataSegment, NSData *, cmpOfDataSegment, std::__1::allocator<std::__1::pair<const FBDataSegment, NSData *> > >;

typedef struct FNFMP4TrakAtomForSeek {
} // Error Processing Struct Fields

typedef struct vector<FNFMP4TrakAtomForSeek, std::__1::allocator<FNFMP4TrakAtomForSeek> > {
} // Error Processing Struct Fields

typedef struct FNFMP4MvhdAtom {
    unsigned int timescale;
    unsigned int duration;
    float rotationAngle;
} FNFMP4MvhdAtom;

typedef struct FNFMP4MoovAtomCompressed {
    vector<FNFMP4TrakAtomForSeek, std::__1::allocator<FNFMP4TrakAtomForSeek> > trakAtoms;
    FNFMP4MvhdAtom mvhdAtom;
} FNFMP4MoovAtomCompressed;

typedef struct FNFMp4FrameMetadataCompressor {
} // Error Processing Struct Fields

typedef struct __compressed_pair<unsigned int *, std::__1::allocator<unsigned int> > {
    unsigned int __value_;
} __compressed_pair<unsigned int *, std::__1::allocator<unsigned int> >;

typedef struct vector<unsigned int, std::__1::allocator<unsigned int> > {
    unsigned int __begin_;
    unsigned int __end_;
    __compressed_pair<unsigned int *, std::__1::allocator<unsigned int> > __end_cap_;
} vector<unsigned int, std::__1::allocator<unsigned int> >;

typedef struct pair<double, double> {
} // Error Processing Struct Fields

typedef struct vector<std::__1::pair<double, double>, std::__1::allocator<std::__1::pair<double, double> > > {
} // Error Processing Struct Fields

typedef struct _xmlNode {
} // Error Processing Struct Fields

typedef struct __base<void (_xmlNode *)> {
} // Error Processing Struct Fields

typedef struct function<void (_xmlNode *)> {
    type field0;
    __base<void (_xmlNode *)> field1;
} function<void (_xmlNode *)>;

typedef struct node {
    _xmlNode field0;
    function<void (_xmlNode *)> field1;
} node;

typedef struct OpaqueVTDecompressionSession {
} // Error Processing Struct Fields
```
