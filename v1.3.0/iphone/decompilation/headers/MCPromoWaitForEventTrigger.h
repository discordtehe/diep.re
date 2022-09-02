// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOWAITFOREVENTTRIGGER_H
#define MCPROMOWAITFOREVENTTRIGGER_H



@class MCPromoTrigger;
@class MCPromoMultiTriggerEvent;

@interface MCPromoWaitForEventTrigger : MCPromoTrigger {
    MCPromoMultiTriggerEvent *mActivationEvent;
    unsigned int mCount;
}


@property (nonatomic) unsigned int maxCount; // ivar: mMaxCount


-(void)dealloc;
-(void)setup:(id)arg0 ;
-(void)setup:(id)arg0 withError:(*id)arg1 ;
-(void)updateState;
-(void)reset;
-(void)softReset;
-(BOOL)canActivate;
-(void)activate;
-(void)activationEvent;
-(void)addToActivationEvent:(id)arg0 ;
-(id)getActivationEvents:(*BOOL)arg0 ;
-(id)getState;
-(void)setState:(id)arg0 withError:(*id)arg1 ;
-(id)getEventsByType:(id)arg0 ;
-(id)description;


@end


#endif