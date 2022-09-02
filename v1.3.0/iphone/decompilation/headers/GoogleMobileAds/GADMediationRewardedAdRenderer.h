// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATIONREWARDEDADRENDERER_H
#define GADMEDIATIONREWARDEDADRENDERER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADInterstitialAd;
@class GADMediationRewardedAdConfiguration;
@class GADTargeting;
@class GADEventContext;
@class GADMediatedIntermission;
@protocol GADAdPresenting;
@protocol GADAdRendering;
@protocol GADMediationRewardedAdEventDelegate;
@protocol GADMediationRewardedAd;
@protocol GADMediationAdapter;

@interface GADMediationRewardedAdRenderer : NSObject <GADAdPresenting, GADAdRendering, GADMediationRewardedAdEventDelegate>

 {
    GADInterstitialAd *_rewardedAd;
    id<GADMediationRewardedAd> *_mediationRewardedAd;
    id *_renderCompletionHandler;
    NSDictionary *_rewardGrantedUserInfo;
    GADMediationRewardedAdConfiguration *_mediatedConfiguration;
    GADTargeting *_targeting;
    GADEventContext *_context;
    *NSDictionary _adConfiguration;
    Class _adapterClass;
    GADMediatedIntermission *_intermission;
    id<GADMediationAdapter> *_adapter;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)viewControllerForPresentingModalView;
-(void)renderWithServerTransaction:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 completionHandler:(id)arg2 ;
-(BOOL)canPresent;
-(void)presentFromViewController:(id)arg0 ;
-(void)rewardedAdDidLoad:(id)arg0 adapter:(id)arg1 ;
-(void)rewardedAdDidFailToLoadWithError:(id)arg0 ;
-(void)didFailToPresentWithError:(id)arg0 ;
-(void)willPresentFullScreenView;
-(void)didDismissFullScreenView;
-(void)didRewardUserWithReward:(id)arg0 ;
-(void)reportClick;
-(void)didStartVideo;
-(void)didEndVideo;
-(void)reportImpression;
-(void)willDismissFullScreenView;
-(id)publisherId;
-(id)credentials;
-(BOOL)testMode;
-(id)networkExtras;
-(id)childDirectedTreatment;
-(NSInteger)userGender;
-(id)userBirthday;
-(BOOL)userHasLocation;
-(CGFloat)userLatitude;
-(CGFloat)userLongitude;
-(CGFloat)userLocationAccuracyInMeters;
-(id)userLocationDescription;
-(id)userKeywords;
-(float)adVolume;
-(BOOL)adMuted;
-(id)maxAdContentRating;
-(id)underAgeOfConsent;


@end


#endif