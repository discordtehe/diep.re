// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBDISPLAYADCONTROLLER_H
#define FBDISPLAYADCONTROLLER_H


#import <Foundation/Foundation.h>

@class FBAdViewabilityValidator;
@class FBApplicationInterfaceOrientationProvider;
@class FBDisplayAdAdapterController;
@class FBAdExtraHint;
@protocol FBAdViewabilityValidatorDelegate;
@protocol FBDisplayAdAdapterControllerDelegate;
@protocol FBDisplayAdControllerDelegate;

@interface FBDisplayAdController : NSObject <FBAdViewabilityValidatorDelegate, FBDisplayAdAdapterControllerDelegate>



@property (retain, nonatomic) FBAdViewabilityValidator *viewabilityValidator; // ivar: _viewabilityValidator
@property (nonatomic, getter=isFlexibleAdSize) BOOL flexibleAdSize; // ivar: _flexibleAdSize
@property (nonatomic) BOOL initialized; // ivar: _initialized
@property (nonatomic) BOOL loaded; // ivar: _loaded
@property (nonatomic) BOOL started; // ivar: _started
@property (nonatomic) BOOL adapterHadImpression; // ivar: _adapterHadImpression
@property (nonatomic) BOOL controllerHadImpression; // ivar: _controllerHadImpression
@property (retain, nonatomic) FBApplicationInterfaceOrientationProvider *interfaceOrientationProvider; // ivar: _interfaceOrientationProvider
@property (retain, nonatomic) FBDisplayAdAdapterController *adapterController; // ivar: _adapterController
@property (nonatomic) CGFloat requestTime; // ivar: _requestTime
@property (weak, nonatomic) NSObject<FBDisplayAdControllerDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) FBAdExtraHint *extraHint; // ivar: _extraHint
@property (readonly, nonatomic) BOOL startAd;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)loadAdWithPlacementId:(id)arg0 withPlacementType:(NSInteger)arg1 withTemplateID:(NSInteger)arg2 ;
-(void)loadAdWithPlacementId:(id)arg0 withPlacementType:(NSInteger)arg1 withTemplateID:(NSInteger)arg2 withAdSize:(struct FBAdSize )arg3 ;
-(void)loadAdWithPlacementId:(id)arg0 withPlacementType:(NSInteger)arg1 withTemplateID:(NSInteger)arg2 withAdSize:(struct FBAdSize )arg3 withAdProvider:(id)arg4 ;
-(void)loadAdWithPlacementId:(id)arg0 withPlacementType:(NSInteger)arg1 withTemplateID:(NSInteger)arg2 withAdSize:(struct FBAdSize )arg3 withAdProvider:(id)arg4 withRewardData:(id)arg5 ;
-(void)loadAdWithPlacementId:(id)arg0 withPlacementType:(NSInteger)arg1 withTemplateID:(NSInteger)arg2 withAdSize:(struct FBAdSize )arg3 withAdProvider:(id)arg4 withRewardData:(id)arg5 withBidPayload:(id)arg6 ;
-(void)dealloc;
-(void)checkInitialization;
-(void)startAdapterController:(id)arg0 withEnvironment:(id)arg1 withRewardData:(id)arg2 ;
-(BOOL)startAdFromRootViewController:(id)arg0 ;
-(BOOL)startAdFromRootViewController:(id)arg0 animated:(BOOL)arg1 ;
-(void)refresh;
-(BOOL)passRewardData:(id)arg0 ;
-(void)logImpressionFromSource:(NSInteger)arg0 ;
-(void)registerViewForInteraction:(id)arg0 withViewController:(id)arg1 ;
-(void)unregisterView;
-(id)getPlacementDefinition;
-(struct ? )adapterDuration;
-(BOOL)adExpired;
-(void)notifyAdLoaded;
-(void)notifyAdViewPresented;
-(void)notifyAdImpression;
-(void)notifyAdStopped;
-(void)notifyAdError:(id)arg0 ;
-(void)notifyAdClickThruWithURL:(id)arg0 playerHandles:(BOOL)arg1 ;
-(void)notifyAdUserClose;
-(void)notifyAdVideoComplete;
-(void)adapterServerRewardSuccess:(id)arg0 ;
-(void)adapterServerRewardFailed:(id)arg0 ;
-(void)ensureViewabilityValidator;
-(void)disableViewabilityValidator;
-(void)adapterDidLoad:(id)arg0 ;
-(void)adapter:(id)arg0 didFailWithError:(id)arg1 ;
-(void)startObservingNotifications;
-(void)onApplicationBackgrounded;
-(void)onApplicationForegrounded;
-(void)stopObservingNotifications;
-(void)startListeningToInterfaceOrientationChanges;
-(BOOL)viewabilityValidator:(id)arg0 checkedWithStatus:(NSInteger)arg1 ;
-(void)adWithAdapter:(id)arg0 performAction:(NSUInteger)arg1 ;
-(void)loadDidFailWithAdapter:(id)arg0 withError:(id)arg1 ;
-(void)loadedAdDidClickWithAdapter:(id)arg0 withURL:(id)arg1 playerHandles:(BOOL)arg2 ;
+(void)initialize;


@end


#endif