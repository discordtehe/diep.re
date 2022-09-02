// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCANIMSINGLEANIMATION_H
#define MCANIMSINGLEANIMATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class CCNode;
@class CCFiniteTimeAction;
@class CCCallFuncND;
@protocol MCAnimAnimation;

@interface MCAnimSingleAnimation : NSObject <MCAnimAnimation>

 {
    CCNode *_target;
    CCFiniteTimeAction *_action;
    NSTimer *_timeoutAnimation;
    CCCallFuncND *_timeoutCallFunc;
    BOOL _hasPlayedAnim;
}


@property (readonly, nonatomic) NSString *description; // ivar: _description
@property (readonly, nonatomic) float timeDelayOffsetOnPlay; // ivar: _delay
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *debugDescription;


-(id)init:(id)arg0 andAction:(id)arg1 andDescription:(id)arg2 andDelay:(float)arg3 ;
-(void)dealloc;
-(BOOL)animationFinishedPlaying;
-(void)setTimeDelayOnPlay:(float)arg0 ;
-(id)getAction;
-(id)getTarget;
-(void)insertActionBefore:(id)arg0 ;
-(void)insertActionAfter:(id)arg0 ;
-(void)insertActionBefore:(id)arg0 andAfter:(id)arg1 ;
-(void)replaceActionWith:(id)arg0 ;
-(id)addConcurrentAnimation:(id)arg0 ;
-(id)addConcurrentAnimation:(id)arg0 withTimeOffset:(float)arg1 ;
-(id)getSingleAnimations;
-(id)getSingleAnimationsWithTarget:(id)arg0 ;
-(void)playWithSelectorOnStart:(SEL)arg0 andSelectorOnEnd:(SEL)arg1 withData:(*void)arg2 onTarget:(id)arg3 ;
-(void)play;
-(void)delayedPlay;
-(void)timeoutClean;
-(void)stopAnimation;
-(id)toString;
+(id)animationWithTarget:(id)arg0 action:(id)arg1 andDescription:(id)arg2 ;
+(id)animationWithTarget:(id)arg0 action:(id)arg1 description:(id)arg2 andPlayDelayOffset:(float)arg3 ;


@end


#endif