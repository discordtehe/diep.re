// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOWAITFORDELTATIMETRIGGER_H
#define MCPROMOWAITFORDELTATIMETRIGGER_H



@class MCPromoWaitForTimeBaseTrigger;

@interface MCPromoWaitForDeltaTimeTrigger : MCPromoWaitForTimeBaseTrigger {
    CGFloat mStartTimestamp;
}


@property (nonatomic) CGFloat deltaTime; // ivar: mDeltaTime
@property (nonatomic) BOOL allowTriggerMoreThanOnceOnUpdate; // ivar: mAllowTriggerMoreThanOnceOnUpdate


-(void)setup:(id)arg0 ;
-(void)setup:(id)arg0 withError:(*id)arg1 ;
-(void)reset;
-(void)softReset;
-(void)setCurrentTimestamp:(CGFloat)arg0 ;
-(CGFloat)timeToNextActivation;
-(CGFloat)timeToNextActivationFromTimestamp:(CGFloat)arg0 ;
-(id)getState;
-(void)setState:(id)arg0 withError:(*id)arg1 ;


@end


#endif