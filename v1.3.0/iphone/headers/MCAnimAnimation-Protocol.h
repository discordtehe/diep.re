// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MCAnimAnimation

@property (readonly, nonatomic) float timeDelayOffsetOnPlay;

-(void)play;
-(void)playWithSelectorOnStart:(SEL)arg0 andSelectorOnEnd:(SEL)arg1 withData:(*void)arg2 onTarget:(id)arg3 ;
-(void)setTimeDelayOnPlay:(float)arg0 ;
-(id)addConcurrentAnimation:(id)arg0 ;
-(id)addConcurrentAnimation:(id)arg0 withTimeOffset:(float)arg1 ;
-(id)getSingleAnimations;
-(id)getSingleAnimationsWithTarget:(id)arg0 ;
-(id)toString;
-(BOOL)animationFinishedPlaying;
-(float)timeDelayOffsetOnPlay;

@end

