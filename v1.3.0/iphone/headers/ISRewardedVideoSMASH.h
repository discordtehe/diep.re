// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISREWARDEDVIDEOSMASH_H
#define ISREWARDEDVIDEOSMASH_H


#import <Foundation/Foundation.h>

@class ISBaseSMASH;
@protocol ISRewardedVideoAdapterDelegate;
@protocol ISRewardedVideoSMASHDelegate;

@interface ISRewardedVideoSMASH : ISBaseSMASH <ISRewardedVideoAdapterDelegate>



@property (weak, nonatomic) NSObject<ISRewardedVideoSMASHDelegate> *rvDelegate; // ivar: _rvDelegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAdapterConfig:(id)arg0 ;
-(void)completeIteration;
-(void)initRVWithUserId:(id)arg0 ;
-(void)showRewardedVideoWithViewController:(id)arg0 placement:(id)arg1 ;
-(BOOL)hasAvailableAds;
-(void)fetchVideo;
-(void)adapterRewardedVideoHasChangedAvailability:(BOOL)arg0 ;
-(void)adapterRewardedVideoDidReceiveReward;
-(void)adapterRewardedVideoDidFailToShowWithError:(id)arg0 ;
-(void)adapterRewardedVideoDidOpen;
-(void)adapterRewardedVideoDidClose;
-(void)adapterRewardedVideoDidStart;
-(void)adapterRewardedVideoDidEnd;
-(void)adapterRewardedVideoDidClick;
-(void)adapterRewardedVideoDidBecomeVisible;
-(void)startRewardedVideoTimerWithTimeout:(NSUInteger)arg0 ;
-(void)onRewardedVideoTick:(id)arg0 ;
-(id)adUnitString;


@end


#endif