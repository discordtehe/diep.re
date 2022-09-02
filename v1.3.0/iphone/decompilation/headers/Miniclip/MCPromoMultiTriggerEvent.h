// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOMULTITRIGGEREVENT_H
#define MCPROMOMULTITRIGGEREVENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCPromoMultiTriggerEvent : NSObject {
    NSMutableDictionary *mTriggerEvents;
}


@property (nonatomic) BOOL enabled; // ivar: mEnabled
@property (nonatomic) BOOL activateOnFirstEvent; // ivar: mActivateOnFirstEvent
@property (nonatomic) id *delegateTarget; // ivar: mDelegateTarget
@property (nonatomic) SEL delegateSelector; // ivar: mDelegateSelector
@property (retain, nonatomic) id *delegateParameter; // ivar: mDelegateParameter
@property (readonly, nonatomic) NSArray *events;


-(id)init;
-(id)initWithConfiguration:(id)arg0 ;
-(id)initWithConfiguration:(id)arg0 withError:(*id)arg1 ;
-(void)dealloc;
-(void)reset;
-(void)addEvent:(id)arg0 ;
-(void)addEvent:(id)arg0 withError:(*id)arg1 ;
-(void)eventReceived:(id)arg0 ;
-(id)getState;
-(void)setState:(id)arg0 withError:(*id)arg1 ;
-(id)description;


@end


#endif