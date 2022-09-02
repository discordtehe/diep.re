// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBDISPLAYADADAPTERCONTROLLER_H
#define FBDISPLAYADADAPTERCONTROLLER_H


#import <Foundation/Foundation.h>

@class FBAdProvider;
@class FBAdCandidate;
@class FBAdEnvironmentData;
@class FBAdTimer;
@class FBDisplayAdAdapter;
@class FBAdPlacementDefinition;
@class FBRewardedVideoRewardData;
@protocol FBAdProviderDelegate;
@protocol FBDisplayAdAdapterDelegate;
@protocol FBDisplayAdAdapterControllerDelegate;

@interface FBDisplayAdAdapterController : NSObject <FBAdProviderDelegate, FBDisplayAdAdapterDelegate>



@property (retain, nonatomic) FBAdProvider *adProvider; // ivar: _adProvider
@property (retain, nonatomic) FBAdCandidate *adCandidate; // ivar: _adCandidate
@property (retain, nonatomic) FBAdEnvironmentData *environment; // ivar: _environment
@property (retain, nonatomic) FBAdTimer *adapterTimeoutTimer; // ivar: _adapterTimeoutTimer
@property (retain, nonatomic) FBDisplayAdAdapter *adapter; // ivar: _adapter
@property (nonatomic, getter=isFlexibleAdSize) BOOL flexibleAdSize; // ivar: _flexibleAdSize
@property (retain, nonatomic) FBAdPlacementDefinition *placementDefinition; // ivar: _placementDefinition
@property (retain, nonatomic) FBRewardedVideoRewardData *rewardData; // ivar: _rewardData
@property (nonatomic) CGSize actualAdSize; // ivar: _actualAdSize
@property (nonatomic) FBAdSize adSizeType; // ivar: _adSizeType
@property (nonatomic) CGFloat adapterLoadTime; // ivar: _adapterLoadTime
@property (nonatomic) NSInteger retryCount; // ivar: _retryCount
@property (weak, nonatomic) NSObject<FBDisplayAdAdapterControllerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)loadAdWithProvider:(id)arg0 withEnvironment:(id)arg1 withRewardData:(id)arg2 ;
-(void)dealloc;
-(void)refresh;
-(BOOL)updateRewardData:(id)arg0 ;
-(BOOL)startAdFromRootViewController:(id)arg0 animated:(BOOL)arg1 ;
-(void)loadAdapter;
-(void)invalidateTimeoutTimer;
-(void)scheduleTimeout:(NSInteger)arg0 ;
-(void)invalidateInProgressAd;
-(void)loadAd;
-(void)retry;
-(void)setInitialAdViewSize:(struct FBAdSize )arg0 ;
-(BOOL)loadWithAdCandidate:(id)arg0 ;
-(void)invalidateCurrentAd;
-(id)adapterForPlacementType:(NSInteger)arg0 ;
-(void)onAdRequestError:(id)arg0 ;
-(void)onAdRequestSuccess:(id)arg0 ;
-(void)logAdapterFailureWithAdapter:(id)arg0 error:(id)arg1 ;
-(void)adapter:(id)arg0 didFailWithError:(id)arg1 ;
-(void)adapterDidLoad:(id)arg0 ;
-(void)adapterDidClick:(id)arg0 url:(id)arg1 playerHandles:(BOOL)arg2 ;
-(void)adapterWillLogImpression:(id)arg0 ;
-(void)adapterDidFinishHandlingClick:(id)arg0 ;
-(void)adapterWillUnload:(id)arg0 ;
-(void)adapterDidUnload:(id)arg0 ;
-(void)adapterVideoDidComplete:(id)arg0 ;
-(void)adapterServerRewardSuccess:(id)arg0 ;
-(void)adapterServerRewardFailed:(id)arg0 ;
+(id)adFormatWithPlacementType:(NSInteger)arg0 ;
+(id)placementTypeToAdFormatMap;


@end


#endif