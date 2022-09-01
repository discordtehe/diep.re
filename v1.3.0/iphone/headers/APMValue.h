// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMVALUE_H
#define APMVALUE_H


#import <Foundation/Foundation.h>

@protocol NSCopying;

@interface APMValue : NSObject <NSCopying>

 {
    id *_value;
}


@property (readonly, nonatomic) NSInteger valueType; // ivar: _valueType
@property (readonly, nonatomic) BOOL isDouble;
@property (readonly, nonatomic) CGFloat doubleValue;
@property (readonly, nonatomic) BOOL isInt64;
@property (readonly, nonatomic) NSInteger int64Value;
@property (readonly, nonatomic) BOOL isString;
@property (readonly, nonatomic) NSString *stringValue;


-(id)initWithDouble:(CGFloat)arg0 ;
-(id)initWithInt64:(NSInteger)arg0 ;
-(id)initWithString:(id)arg0 ;
-(id)initWithValueType:(NSInteger)arg0 value:(id)arg1 ;
-(id)description;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(BOOL)isEqual:(id)arg0 ;
-(NSUInteger)hash;
+(id)valueFromObject:(id)arg0 ;


@end


#endif