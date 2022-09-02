// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOTRIGGEREVENT_H
#define MCPROMOTRIGGEREVENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCPromoTriggerEvent : NSObject

@property (nonatomic) BOOL enabled; // ivar: mEnabled
@property (nonatomic) id *delegateTarget; // ivar: mDelegateTarget
@property (nonatomic) SEL delegateSelector; // ivar: mDelegateSelector
@property (retain, nonatomic) id *delegateParameter; // ivar: mDelegateParameter
@property (readonly, nonatomic) NSArray *eventLevels; // ivar: mEventLevels


-(id)init;
-(id)initWithEventLevels:(id)arg0 ;
-(void)dealloc;
-(void)eventReceived:(id)arg0 ;
-(id)description;


@end


#endif