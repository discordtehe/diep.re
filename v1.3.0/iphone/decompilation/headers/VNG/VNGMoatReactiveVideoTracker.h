// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGMOATREACTIVEVIDEOTRACKER_H
#define VNGMOATREACTIVEVIDEOTRACKER_H



@class VNGMoatBaseVideoTracker;

@interface VNGMoatReactiveVideoTracker : VNGMoatBaseVideoTracker

@property (nonatomic) NSUInteger state; // ivar: _state
@property (nonatomic) CGFloat duration; // ivar: _duration
@property (nonatomic) float volume; // ivar: _volume
@property (nonatomic) float aggregateVolume; // ivar: _aggregateVolume
@property (nonatomic) BOOL muted; // ivar: _muted
@property (nonatomic) BOOL startedPlaying; // ivar: _startedPlaying


-(CGFloat)adDurationMS;
-(CGFloat)trackedPlayheadMS;
-(BOOL)isPlaying;
-(float)playerVolume;
-(BOOL)isMuted;
-(BOOL)timerRequired;
-(id)initWithPartnerCode:(id)arg0 ;
-(void)destroy;
-(BOOL)trackVideoAd:(id)arg0 withLayer:(id)arg1 withDurationMillis:(CGFloat)arg2 ;
-(void)dispatchEvent:(id)arg0 ;
-(void)changeTargetLayer:(id)arg0 ;
-(void)updateAggregateVolume;
-(BOOL)trackVideoAd:(id)arg0 withLayer:(id)arg1 withContainingView:(id)arg2 withDurationMillis:(CGFloat)arg3 ;
-(void)changeTargetLayer:(id)arg0 withContainingView:(id)arg1 ;
+(id)classTag;


@end


#endif