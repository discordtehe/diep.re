// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOWAITFORNESTEDTRIGGERSTRIGGER_H
#define MCPROMOWAITFORNESTEDTRIGGERSTRIGGER_H



@class MCPromoWaitForNestedTriggersBaseTrigger;

@interface MCPromoWaitForNestedTriggersTrigger : MCPromoWaitForNestedTriggersBaseTrigger

@property (nonatomic) BOOL activateOnFirstTrigger; // ivar: mActivateOnFirstTrigger


-(void)setup:(id)arg0 ;
-(void)setup:(id)arg0 withError:(*id)arg1 ;
-(id)getState;
-(void)setState:(id)arg0 withError:(*id)arg1 ;
-(void)activatedTrigger:(id)arg0 ;
-(void)updateState;
-(BOOL)canActivate;
-(void)setCurrentTimestamp:(CGFloat)arg0 ;


@end


#endif