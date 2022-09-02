// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TAPJOYIOS_H
#define TAPJOYIOS_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class TJPlacement;
@protocol TJPlacementDelegate;
@protocol UIApplicationDelegate;

@interface TapjoyiOS : NSObject <TJPlacementDelegate, UIApplicationDelegate>



@property (retain, nonatomic) TJPlacement *interstitialAd; // ivar: _interstitialAd
@property (retain, nonatomic) TJPlacement *rewardedVideoAd; // ivar: _rewardedVideoAd
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (retain, nonatomic) UIWindow *window;


-(void)setupConnectcallbacks;
-(void)tjcConnectSuccess:(id)arg0 ;
-(void)tjcConnectFail:(id)arg0 ;
-(BOOL)loadInterstitial:(id)arg0 ;
-(BOOL)showInterstitial;
-(BOOL)loadRewardedVideo:(id)arg0 ;
-(BOOL)showRewardedVideo;
-(void)requestDidSucceed:(id)arg0 ;
-(void)requestDidFail:(id)arg0 error:(id)arg1 ;
-(void)contentIsReady:(id)arg0 ;
-(void)contentDidAppear:(id)arg0 ;
-(void)contentDidDisappear:(id)arg0 ;
-(void)placement:(id)arg0 didRequestReward:(id)arg1 itemId:(id)arg2 quantity:(int)arg3 ;
-(void)applicationWillEnterForeground:(id)arg0 ;
-(void)applicationDidEnterBackground:(id)arg0 ;


@end


#endif