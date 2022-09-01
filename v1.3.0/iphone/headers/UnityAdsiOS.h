// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UNITYADSIOS_H
#define UNITYADSIOS_H


#import <Foundation/Foundation.h>

@protocol UnityAdsDelegate;

@interface UnityAdsiOS : NSObject <UnityAdsDelegate>



@property BOOL debugLog; // ivar: _debugLog
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(BOOL)loadInterstitial:(id)arg0 ;
-(BOOL)showInterstitial:(id)arg0 ;
-(BOOL)loadRewardedVideo:(id)arg0 ;
-(BOOL)showRewardedVideo:(id)arg0 withUserId:(id)arg1 withCustomData:(id)arg2 ;
-(void)unityAdsReady:(id)arg0 ;
-(void)unityAdsDidError:(NSInteger)arg0 withMessage:(id)arg1 ;
-(void)unityAdsDidStart:(id)arg0 ;
-(void)unityAdsDidFinish:(id)arg0 withFinishState:(NSInteger)arg1 ;
-(void)onAdDismissed:(id)arg0 ;


@end


#endif