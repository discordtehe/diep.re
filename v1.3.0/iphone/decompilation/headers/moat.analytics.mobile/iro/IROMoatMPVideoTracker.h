// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATMPVIDEOTRACKER_H
#define IROMOATMPVIDEOTRACKER_H

@class MPMoviePlayerController;


@class IROMoatBaseVideoTracker;

@interface IROMoatMPVideoTracker : IROMoatBaseVideoTracker

@property (weak, nonatomic) MPMoviePlayerController *player; // ivar: _player


-(CGFloat)adDurationMS;
-(CGFloat)trackedPlayheadMS;
-(BOOL)isPlaying;
-(BOOL)trackVideoAd:(id)arg0 player:(id)arg1 ;
-(void)registerForEvents;
-(void)screenModeNotification:(id)arg0 ;
-(void)stateChangeNotification;
+(id)classTag;


@end


#endif