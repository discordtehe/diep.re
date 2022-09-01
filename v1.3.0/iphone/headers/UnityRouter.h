// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UNITYROUTER_H
#define UNITYROUTER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol UnityAdsExtendedDelegate;
@protocol UnityAdsBannerDelegate;
@protocol UnityRouterDelegate;
@protocol UnityAdsBannerDelegate;

@interface UnityRouter : NSObject <UnityAdsExtendedDelegate, UnityAdsBannerDelegate>



@property (nonatomic) BOOL isAdPlaying; // ivar: _isAdPlaying
@property (weak, nonatomic) NSObject<UnityRouterDelegate> *delegate; // ivar: _delegate
@property (retain) NSMutableDictionary *delegateMap; // ivar: _delegateMap
@property (retain) NSObject<UnityAdsBannerDelegate> *bannerDelegate; // ivar: _bannerDelegate
@property BOOL bannerLoadRequested; // ivar: _bannerLoadRequested
@property (retain) NSString *bannerPlacementId; // ivar: _bannerPlacementId
@property (retain) NSString *currentPlacementId; // ivar: _currentPlacementId
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)initializeWithGameId:(id)arg0 ;
-(void)setIfUnityAdsCollectsPersonalInfo;
-(void)requestVideoAdWithGameId:(id)arg0 placementId:(id)arg1 delegate:(id)arg2 ;
-(void)requestBannerAdWithGameId:(id)arg0 placementId:(id)arg1 delegate:(id)arg2 ;
-(BOOL)isAdAvailableForPlacementId:(id)arg0 ;
-(void)presentVideoAdFromViewController:(id)arg0 customerId:(id)arg1 placementId:(id)arg2 settings:(id)arg3 delegate:(id)arg4 ;
-(id)getDelegate:(id)arg0 ;
-(void)clearDelegate:(id)arg0 ;
-(void)clearBannerDelegate;
-(void)unityAdsReady:(id)arg0 ;
-(void)unityAdsDidError:(NSInteger)arg0 withMessage:(id)arg1 ;
-(void)unityAdsDidStart:(id)arg0 ;
-(void)unityAdsDidFinish:(id)arg0 withFinishState:(NSInteger)arg1 ;
-(void)unityAdsDidClick:(id)arg0 ;
-(void)unityAdsPlacementStateChanged:(id)arg0 oldState:(NSInteger)arg1 newState:(NSInteger)arg2 ;
-(void)unityAdsBannerDidLoad:(id)arg0 view:(id)arg1 ;
-(void)unityAdsBannerDidUnload:(id)arg0 ;
-(void)unityAdsBannerDidShow:(id)arg0 ;
-(void)unityAdsBannerDidHide:(id)arg0 ;
-(void)unityAdsBannerDidClick:(id)arg0 ;
-(void)unityAdsBannerDidError:(id)arg0 ;
+(id)sharedRouter;


@end


#endif