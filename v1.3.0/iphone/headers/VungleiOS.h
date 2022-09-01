// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEIOS_H
#define VUNGLEIOS_H


#import <Foundation/Foundation.h>

@protocol VungleSDKDelegate;
@protocol VungleSDKLogger;

@interface VungleiOS : NSObject <VungleSDKDelegate, VungleSDKLogger>



@property BOOL debugLog; // ivar: _debugLog
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(BOOL)loadInterstitial:(id)arg0 ;
-(BOOL)showInterstitial:(id)arg0 ;
-(BOOL)loadRewardedVideo:(id)arg0 ;
-(BOOL)showRewardedVideo:(id)arg0 withUserId:(id)arg1 withCustomData:(id)arg2 ;
-(void)vungleAdPlayabilityUpdate:(BOOL)arg0 placementID:(id)arg1 error:(id)arg2 ;
-(void)vungleWillShowAdForPlacementID:(id)arg0 ;
-(void)vungleWillCloseAdWithViewInfo:(id)arg0 placementID:(id)arg1 ;
-(void)vungleDidCloseAdWithViewInfo:(id)arg0 placementID:(id)arg1 ;
-(void)vungleSDKDidInitialize;
-(void)vungleSDKFailedToInitializeWithError:(id)arg0 ;
-(void)vungleSDKLog:(id)arg0 ;


@end


#endif