// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMCONDITIONALUSERPROPERTY_H
#define APMCONDITIONALUSERPROPERTY_H


#import <Foundation/Foundation.h>

@class APMValue;
@class APMEvent;
@protocol NSCopying;

@interface APMConditionalUserProperty : NSObject <NSCopying>



@property (nonatomic) CGFloat creationTimestamp; // ivar: _creationTimestamp
@property (nonatomic, getter=isActive) BOOL active; // ivar: _active
@property (nonatomic) CGFloat triggeredTimestamp; // ivar: _triggeredTimestamp
@property (copy, nonatomic) NSString *name; // ivar: _name
@property (copy, nonatomic) NSString *origin; // ivar: _origin
@property (copy, nonatomic) APMValue *value; // ivar: _value
@property (copy, nonatomic) NSString *triggerEventName; // ivar: _triggerEventName
@property (nonatomic) CGFloat triggerTimeout; // ivar: _triggerTimeout
@property (nonatomic) CGFloat timeToLive; // ivar: _timeToLive
@property (copy, nonatomic) APMEvent *triggeredEvent; // ivar: _triggeredEvent
@property (copy, nonatomic) APMEvent *timedOutEvent; // ivar: _timedOutEvent
@property (copy, nonatomic) APMEvent *expiredEvent; // ivar: _expiredEvent


-(id)copyWithZone:(struct _NSZone *)arg0 ;


@end


#endif