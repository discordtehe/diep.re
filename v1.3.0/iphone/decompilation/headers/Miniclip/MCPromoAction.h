// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOACTION_H
#define MCPROMOACTION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MCPromoWaitForEventTrigger;

@interface MCPromoAction : NSObject {
    MCPromoWaitForEventTrigger *mSuccessTrigger;
    MCPromoWaitForEventTrigger *mFailureTrigger;
}


@property (readonly, nonatomic) NSString *type; // ivar: mType
@property (readonly, nonatomic) NSDictionary *parameters; // ivar: mParameters
@property (nonatomic) id *successDelegateTarget; // ivar: mSuccessDelegateTarget
@property (nonatomic) SEL successDelegateSelector; // ivar: mSuccessDelegateSelector
@property (retain, nonatomic) id *successDelegateParameter; // ivar: mSuccessDelegateParameter
@property (nonatomic) id *failureDelegateTarget; // ivar: mFailureDelegateTarget
@property (nonatomic) SEL failureDelegateSelector; // ivar: mFailureDelegateSelector
@property (retain, nonatomic) id *failureDelegateParameter; // ivar: mFailureDelegateParameter
@property (readonly, nonatomic) BOOL popUpActionDismissesPopUp; // ivar: mPopUpActionDismissesPopUp
@property (readonly, nonatomic) BOOL popUpActionDeactivatesOffer; // ivar: mPopUpActionDeactivatesOffer
@property (readonly, nonatomic) BOOL popUpActionKillsOffer; // ivar: mPopUpActionKillsOffer


-(id)init;
-(id)initWithConfiguration:(id)arg0 withActionName:(id)arg1 andOfferName:(id)arg2 withError:(*id)arg3 ;
-(void)dealloc;
-(void)reset;
-(void)success;
-(void)failure;
-(void)successCallback;
-(void)failureCallback;
-(void)run:(id)arg0 ;
-(void)getData:(id)arg0 ;
-(id)getState;
-(void)setState:(id)arg0 ;
-(void)setState:(id)arg0 withError:(*id)arg1 ;
+(id)getActionFromConfiguration:(id)arg0 ;
+(id)getActionFromConfiguration:(id)arg0 withActionName:(id)arg1 andOfferName:(id)arg2 withError:(*id)arg3 ;


@end


#endif