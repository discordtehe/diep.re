// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOTRIGGER_H
#define MCPROMOTRIGGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MCPromoMultiTriggerEvent;

@interface MCPromoTrigger : NSObject {
    MCPromoMultiTriggerEvent *mResetEvent;
    MCPromoMultiTriggerEvent *mEnableEvent;
    MCPromoMultiTriggerEvent *mDisableEvent;
    NSMutableArray *mOnActivateEvents;
}


@property (retain, nonatomic) NSString *name; // ivar: mName
@property (nonatomic) BOOL enabled; // ivar: mEnabled
@property (nonatomic) BOOL resetOnDisable; // ivar: mResetOnDisable
@property (nonatomic) unsigned int maxActivations; // ivar: mMaxActivations
@property (readonly, nonatomic) unsigned int numActivations; // ivar: mNumActivations
@property (nonatomic) id *delegateTarget; // ivar: mDelegateTarget
@property (nonatomic) SEL delegateSelector; // ivar: mDelegateSelector
@property (retain, nonatomic) id *delegateParameter; // ivar: mDelegateParameter


-(id)init;
-(id)initWithConfiguration:(id)arg0 ;
-(id)initWithConfiguration:(id)arg0 withError:(*id)arg1 ;
-(void)dealloc;
-(void)setup:(id)arg0 ;
-(void)setup:(id)arg0 withError:(*id)arg1 ;
-(void)updateState;
-(void)reset;
-(void)softReset;
-(void)resetEvent;
-(void)enabledEvent:(id)arg0 ;
-(void)disabledEvent:(id)arg0 ;
-(BOOL)reachedMaxActivations;
-(BOOL)canActivate;
-(void)activate;
-(void)addToResetEvent:(id)arg0 ;
-(void)addToEnableEvent:(id)arg0 ;
-(void)addToDisableEvent:(id)arg0 ;
-(void)addOnActivateEvent:(id)arg0 ;
-(id)getResetEvents:(*BOOL)arg0 ;
-(id)getEnableEvents:(*BOOL)arg0 ;
-(id)getDisableEvents:(*BOOL)arg0 ;
-(id)getOnActivationEvent;
-(id)getEventsByType:(id)arg0 ;
-(id)getState;
-(id)getEventStateByType:(id)arg0 ;
-(void)setState:(id)arg0 ;
-(void)setState:(id)arg0 withError:(*id)arg1 ;
-(id)description;
+(id)getTriggerFromConfiguration:(id)arg0 ;
+(id)getTriggerFromConfiguration:(id)arg0 withError:(*id)arg1 ;


@end


#endif