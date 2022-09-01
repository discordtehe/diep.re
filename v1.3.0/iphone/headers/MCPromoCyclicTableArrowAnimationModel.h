// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOCYCLICTABLEARROWANIMATIONMODEL_H
#define MCPROMOCYCLICTABLEARROWANIMATIONMODEL_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCPromoCyclicTableArrowAnimationModel : NSObject {
    NSArray *_animationSequence;
    float _pulsePeriod;
    CGFloat _lastPulseCycleTimestamp;
    NSString *_pulseAnimation;
    NSString *_clickAnimation;
}




-(id)initWithAnimationSequence:(id)arg0 clickAnimation:(id)arg1 pulseAnimation:(id)arg2 pulsePeriod:(float)arg3 ;
-(void)resetLastPulseTime;
-(void)startAnimation:(id)arg0 onTrack:(int)arg1 onNode:(id)arg2 ;
-(void)startFirstAnimationFromSequenceOnNode:(id)arg0 ;
-(void)startAnimationClickOnNode:(id)arg0 ;
-(void)startAnimationPulseOnNode:(id)arg0 ;
-(void)animationFinishedForNode:(id)arg0 withNotification:(id)arg1 ;
-(void)animationNodeUpdate:(id)arg0 delta:(CGFloat)arg1 ;
-(void)setTransitionAnimationListeners:(id)arg0 ;
-(void)dealloc;
+(id)animationWithAnimationSequence:(id)arg0 clickAnimation:(id)arg1 pulseAnimation:(id)arg2 pulsePeriod:(float)arg3 ;
+(id)animationWithAnimationSequence:(id)arg0 pulseAnimation:(id)arg1 pulsePeriod:(float)arg2 ;
+(id)animationWithAnimationSequence:(id)arg0 clickAnimation:(id)arg1 ;


@end


#endif