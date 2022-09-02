// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPCONSENTMANAGER_H
#define MPCONSENTMANAGER_H


#import <Foundation/Foundation.h>

@class MPConsentDialogViewController;
@class MPTimer;
@protocol MPConsentDialogViewControllerDelegate;

@interface MPConsentManager : NSObject <MPConsentDialogViewControllerDelegate>



@property (readonly, copy, nonatomic) NSString *consentedIabVendorList;
@property (readonly, copy, nonatomic) NSString *consentedPrivacyPolicyVersion;
@property (readonly, copy, nonatomic) NSString *consentedVendorListVersion;
@property (readonly, nonatomic) NSInteger currentStatus;
@property (readonly, copy, nonatomic) NSString *extras;
@property (readonly, copy, nonatomic) NSString *iabVendorList;
@property (readonly, copy, nonatomic) NSString *iabVendorListHash;
@property (readonly, copy, nonatomic) NSString *ifaForConsent;
@property (readonly, nonatomic) NSInteger isGDPRApplicable;
@property (nonatomic) BOOL forceIsGDPRApplicable;
@property (readonly, nonatomic) BOOL isWhitelisted;
@property (readonly, copy, nonatomic) NSString *lastChangedReason;
@property (readonly, nonatomic) CGFloat lastChangedTimestampInMilliseconds;
@property (readonly, copy, nonatomic) NSString *lastSynchronizedStatus;
@property (readonly, copy, nonatomic) NSString *privacyPolicyVersion;
@property (readonly, nonatomic) CGFloat syncFrequency;
@property (readonly, copy, nonatomic) NSString *vendorListVersion;
@property (retain, nonatomic) MPConsentDialogViewController *consentDialogViewController; // ivar: _consentDialogViewController
@property (readonly, nonatomic) BOOL isDoNotTrack;
@property (nonatomic) BOOL isForcedGDPRAppliesTransition; // ivar: _isForcedGDPRAppliesTransition
@property (retain, nonatomic) MPTimer *nextUpdateTimer; // ivar: _nextUpdateTimer
@property (readonly, nonatomic) NSInteger rawConsentStatus;
@property (readonly, nonatomic) NSInteger rawIsGDPRApplicable;
@property (nonatomic) BOOL shouldReacquireConsent;
@property (nonatomic) CGFloat syncFrequency; // ivar: _syncFrequency
@property (copy, nonatomic) id *consentDialogDidDismissCompletionBlock; // ivar: _consentDialogDidDismissCompletionBlock
@property (retain, nonatomic) NSString *adUnitIdUsedForConsent; // ivar: _adUnitIdUsedForConsent
@property (nonatomic) BOOL allowLegitimateInterest; // ivar: _allowLegitimateInterest
@property (readonly, nonatomic) BOOL canCollectPersonalInfo;
@property (readonly, nonatomic) BOOL isConsentNeeded;
@property (readonly, copy, nonatomic) NSString *currentLanguageCode;
@property (readonly, nonatomic) BOOL isConsentDialogLoaded;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)handlePersonalDataOnStateChangeTo:(NSInteger)arg0 fromOldStatus:(NSInteger)arg1 ;
-(void)storeIfa;
-(void)checkForIfaChange;
-(void)removeIfa;
-(void)updateAppConversionTracking;
-(id)urlWithFormat:(id)arg0 isoLanguageCode:(id)arg1 ;
-(id)privacyPolicyUrl;
-(id)privacyPolicyUrlWithISOLanguageCode:(id)arg0 ;
-(id)vendorListUrl;
-(id)vendorListUrlWithISOLanguageCode:(id)arg0 ;
-(id)init;
-(void)dealloc;
-(id)removeRegionFromLanguageCode:(id)arg0 ;
-(void)grantConsent;
-(void)revokeConsent;
-(void)loadConsentDialogWithCompletion:(id)arg0 ;
// -(void)showConsentDialogFromViewController:(id)arg0 didShow:(id)arg1 didDismiss:(unk)arg2  ;
-(void)consentDialogViewControllerDidReceiveConsentResponse:(BOOL)arg0 consentDialogViewController:(id)arg1 ;
-(void)consentDialogViewControllerWillDisappear:(id)arg0 ;
-(void)consentDialogViewControllerDidDismiss:(id)arg0 ;
-(void)onApplicationWillEnterForeground:(id)arg0 ;
-(void)notifyConsentChangedTo:(NSInteger)arg0 fromOldStatus:(NSInteger)arg1 reason:(id)arg2 canCollectPii:(BOOL)arg3 ;
-(void)notifyConsentNeeded;
-(void)synchronizeConsentWithCompletion:(id)arg0 ;
-(void)didFinishSynchronizationWithData:(id)arg0 synchronizedStatus:(id)arg1 completion:(id)arg2 ;
-(void)didFailSynchronizationWithError:(id)arg0 completion:(id)arg1 ;
-(id)newNextUpdateTimer;
-(void)onNextUpdateFiredWithTimer;
-(BOOL)checkForDoNotTrackAndTransition;
-(BOOL)checkForWhitelistAllowedAndTransition;
-(BOOL)updateConsentStateWithParameters:(id)arg0 ;
-(void)forceStatusShouldForceExplicitNo:(BOOL)arg0 shouldInvalidateConsent:(BOOL)arg1 shouldReacquireConsent:(BOOL)arg2 shouldForceGDPRApplicability:(BOOL)arg3 consentChangeReason:(id)arg4 shouldBroadcast:(BOOL)arg5 ;
-(void)cacheAdUnitIdUsedForConsent;
-(void)clearAdUnitIdUsedForConsent;
+(id)sharedManager;


@end


#endif