// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATAVVIDEOTRACKER_H
#define IROMOATAVVIDEOTRACKER_H


#import <AVFoundation/AVFoundation.h>

@class IROMoatBaseVideoTracker;

@interface IROMoatAVVideoTracker : IROMoatBaseVideoTracker

@property (weak, nonatomic) AVPlayer *player; // ivar: _player


-(CGFloat)adDurationMS;
-(CGFloat)trackedPlayheadMS;
-(BOOL)isPlaying;
-(BOOL)isMuted;
-(BOOL)playbackError;
-(BOOL)trackVideoAd:(id)arg0 player:(id)arg1 layer:(id)arg2 ;
-(void)changeTargetLayer:(id)arg0 ;
-(void)registerForEvents;
+(id)classTag;


@end


#endif