// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCANIMCONCURRENTANIMATIONS_H
#define MCANIMCONCURRENTANIMATIONS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MCAnimAnimation;

@interface MCAnimConcurrentAnimations : NSObject <MCAnimAnimation>

 {
    NSMutableArray *_animations;
}


@property (readonly, nonatomic) float timeDelayOffsetOnPlay; // ivar: _playDelay
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init:(float)arg0 animations:(id)arg1 ;
-(void)dealloc;
-(void)addAnimation:(id)arg0 ;
-(void)addAnimation:(id)arg0 withStartOffset:(float)arg1 ;
-(void)setTimeDelayOnPlay:(float)arg0 ;
-(id)addConcurrentAnimation:(id)arg0 ;
-(id)addConcurrentAnimation:(id)arg0 withTimeOffset:(float)arg1 ;
-(id)getSingleAnimations;
-(id)getSingleAnimationsWithTarget:(id)arg0 ;
-(void)playWithSelectorOnStart:(SEL)arg0 andSelectorOnEnd:(SEL)arg1 withData:(*void)arg2 onTarget:(id)arg3 ;
-(void)play;
-(BOOL)animationFinishedPlaying;
-(id)toString;
+(id)withAnimation:(id)arg0 ;
+(id)withAnimations:(id)arg0 ;
+(id)withPlayDelayOffset:(float)arg0 andAnimations:(id)arg1 ;


@end


#endif