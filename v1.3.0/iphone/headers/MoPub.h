// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MOPUB_H
#define MOPUB_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MoPub : NSObject

@property (readonly, nonatomic) BOOL canCollectPersonalInfo;
@property (readonly, nonatomic) NSInteger currentConsentStatus;
@property (readonly, nonatomic) NSInteger isGDPRApplicable;
@property (nonatomic) BOOL allowLegitimateInterest;
@property (readonly, nonatomic) BOOL isConsentDialogReady;
@property (readonly, nonatomic) BOOL shouldShowConsentDialog;
@property (readonly, copy, nonatomic) NSString *currentConsentIabVendorListFormat;
@property (readonly, copy, nonatomic) NSString *currentConsentPrivacyPolicyVersion;
@property (readonly, copy, nonatomic) NSString *currentConsentVendorListVersion;
@property (readonly, copy, nonatomic) NSString *previouslyConsentedIabVendorListFormat;
@property (readonly, copy, nonatomic) NSString *previouslyConsentedPrivacyPolicyVersion;
@property (readonly, copy, nonatomic) NSString *previouslyConsentedVendorListVersion;
@property (retain, nonatomic) NSArray *globalMediationSettings; // ivar: _globalMediationSettings
@property (nonatomic) BOOL isSdkInitialized; // ivar: _isSdkInitialized
@property (nonatomic) BOOL locationUpdatesEnabled;
@property (nonatomic) BOOL frequencyCappingIdUsageEnabled;
@property (nonatomic) BOOL forceWKWebView;
@property (nonatomic) NSUInteger logLevel;


-(void)forceGDPRApplicable;
-(void)loadConsentDialogWithCompletion:(id)arg0 ;
// -(void)showConsentDialogFromViewController:(id)arg0 didShow:(id)arg1 didDismiss:(unk)arg2  ;
-(void)showConsentDialogFromViewController:(id)arg0 completion:(id)arg1 ;
-(void)revokeConsent;
-(void)grantConsent;
-(id)currentConsentPrivacyPolicyUrl;
-(id)currentConsentPrivacyPolicyUrlWithISOLanguageCode:(id)arg0 ;
-(id)currentConsentVendorListUrl;
-(id)currentConsentVendorListUrlWithISOLanguageCode:(id)arg0 ;
-(id)adapterConfigurationNamed:(id)arg0 ;
-(id)availableAdapterClassNames;
-(void)clearCachedNetworks;
-(id)init;
-(void)setClickthroughDisplayAgentType:(NSInteger)arg0 ;
-(id)version;
-(id)bundleIdentifier;
-(void)initializeSdkWithConfiguration:(id)arg0 completion:(id)arg1 ;
-(void)setSdkWithConfiguration:(id)arg0 completion:(id)arg1 ;
-(void)handlePersonalData;
-(id)globalMediationSettingsForClass:(Class)arg0 ;
-(void)disableViewability:(NSInteger)arg0 ;
-(void)setEngineInformation:(id)arg0 ;
+(void)openURL:(id)arg0 ;
+(void)openURL:(id)arg0 options:(id)arg1 completion:(id)arg2 ;
+(void)sendImpressionNotificationFromAd:(id)arg0 adUnitID:(id)arg1 impressionData:(id)arg2 ;
+(void)sendImpressionDelegateAndNotificationFromAd:(id)arg0 adUnitID:(id)arg1 impressionData:(id)arg2 ;
+(id)sharedInstance;


@end


#endif