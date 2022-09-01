// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOWAITFORTIMEBASETRIGGER_H
#define MCPROMOWAITFORTIMEBASETRIGGER_H



@class MCPromoTrigger;

@interface MCPromoWaitForTimeBaseTrigger : MCPromoTrigger

@property (nonatomic) CGFloat currentTimestamp; // ivar: mCurrentTimestamp
@property (readonly, nonatomic) CGFloat lastActivationTimestamp; // ivar: mLastActivationTimestamp


-(void)setup:(id)arg0 ;
-(void)setup:(id)arg0 withError:(*id)arg1 ;
-(void)reset;
-(void)softReset;
-(CGFloat)timeToNextActivation;
-(id)getState;
-(void)setState:(id)arg0 withError:(*id)arg1 ;


@end


#endif