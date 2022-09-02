// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMUSERATTRIBUTE_H
#define APMUSERATTRIBUTE_H


#import <Foundation/Foundation.h>

@class APMValue;
@class APMPBUserAttribute;

@interface APMUserAttribute : NSObject

@property (readonly, nonatomic) NSString *origin; // ivar: _origin
@property (readonly, nonatomic) NSString *name; // ivar: _name
@property (readonly, nonatomic) APMValue *value; // ivar: _value
@property (readonly, nonatomic) CGFloat lastSetTimestamp; // ivar: _lastSetTimestamp
@property (readonly, nonatomic) BOOL isPublic;
@property (readonly, nonatomic) APMPBUserAttribute *protoUserAttribute;


-(id)initWithOrigin:(id)arg0 name:(id)arg1 value:(id)arg2 lastSetTimestamp:(CGFloat)arg3 ;


@end


#endif