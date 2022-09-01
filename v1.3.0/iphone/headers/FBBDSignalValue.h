// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBBDSIGNALVALUE_H
#define FBBDSIGNALVALUE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBBDTouchSignalValue;

@interface FBBDSignalValue : NSObject {
    ? _scalarValue;
    NSString *_stringValue;
    NSArray *_arrayValue;
    NSDictionary *_dictValue;
    FBBDTouchSignalValue *_touchValue;
    NSError *_error;
}


@property (readonly, nonatomic) NSUInteger type; // ivar: _type
@property (readonly, nonatomic) NSUInteger dataSize;


-(int)intValue:(*id)arg0 ;
-(BOOL)boolValue:(*id)arg0 ;
-(float)floatValue:(*id)arg0 ;
-(id)stringValue:(*id)arg0 ;
-(id)arrayValue:(*id)arg0 ;
-(id)dictValue:(*id)arg0 ;
-(id)touchValue:(*id)arg0 ;
-(id)serializedTouchValue:(*id)arg0 ;
-(id)initWithIntValue:(int)arg0 ;
-(id)initWithBoolValue:(BOOL)arg0 ;
-(id)initWithFloatValue:(float)arg0 ;
-(id)initWithStringValue:(id)arg0 ;
-(id)initWithArrayValue:(id)arg0 ;
-(id)initWithDictValue:(id)arg0 ;
-(id)initWithTouchValue:(id)arg0 ;
-(BOOL)isEqualToSignalValue:(id)arg0 ;
-(void)initError;
-(id)initWithLongLong:(NSInteger)arg0 ;


@end


#endif