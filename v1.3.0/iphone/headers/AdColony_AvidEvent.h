// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDEVENT_H
#define ADCOLONY_AVIDEVENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface AdColony_AvidEvent : NSObject

@property (retain, nonatomic) NSString *name; // ivar: _name
@property (retain, nonatomic) NSString *type; // ivar: _type
@property (retain, nonatomic) NSDictionary *data; // ivar: _data


-(id)initWithName:(id)arg0 type:(id)arg1 data:(id)arg2 ;
+(id)eventWithName:(id)arg0 type:(id)arg1 data:(id)arg2 ;


@end


#endif