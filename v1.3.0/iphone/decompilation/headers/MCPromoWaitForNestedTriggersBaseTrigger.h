// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOWAITFORNESTEDTRIGGERSBASETRIGGER_H
#define MCPROMOWAITFORNESTEDTRIGGERSBASETRIGGER_H


#import <CoreFoundation/CoreFoundation.h>

@class MCPromoTrigger;

@interface MCPromoWaitForNestedTriggersBaseTrigger : MCPromoTrigger {
    NSMutableArray *mActivationTriggers;
    NSMutableArray *mActivationTriggersWasActivated;
}


@property (nonatomic) CGFloat currentTimestamp; // ivar: mCurrentTimestamp
@property (readonly, nonatomic) CGFloat lastActivationTimestamp; // ivar: mLastActivationTimestamp


-(void)dealloc;
-(void)setup:(id)arg0 ;
-(void)setup:(id)arg0 withError:(*id)arg1 ;
-(void)activatedTrigger:(id)arg0 ;
-(void)reset;
-(void)softReset;
-(id)getActivationTriggers;
-(id)getActivationTriggersActivated;
-(id)getState;
-(void)setState:(id)arg0 withError:(*id)arg1 ;
-(id)description;
-(void)activate;


@end


#endif