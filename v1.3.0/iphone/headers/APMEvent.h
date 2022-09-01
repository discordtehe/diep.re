// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMEVENT_H
#define APMEVENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class APMPBEvent;
@protocol NSCopying;

@interface APMEvent : NSObject <NSCopying>



@property (readonly, nonatomic) NSString *origin; // ivar: _origin
@property (readonly, nonatomic) NSString *name; // ivar: _name
@property (readonly, nonatomic) CGFloat timestamp; // ivar: _timestamp
@property (readonly, nonatomic) CGFloat previousTimestamp; // ivar: _previousTimestamp
@property (readonly, nonatomic) NSDictionary *parameters; // ivar: _parameters
@property (nonatomic, getter=isConversion) BOOL conversion;
@property (nonatomic, getter=isRealtime) BOOL realtime;
@property (nonatomic, getter=isDebug) BOOL debug;
@property (readonly, nonatomic) APMPBEvent *protoEvent;


-(id)initWithEventProto:(id)arg0 ;
-(id)initWithOrigin:(id)arg0 isPublic:(BOOL)arg1 name:(id)arg2 timestamp:(CGFloat)arg3 previousTimestamp:(CGFloat)arg4 parameters:(id)arg5 ;
-(id)copyWithPreviousTimestamp:(CGFloat)arg0 ;
-(id)copyWithParameters:(id)arg0 ;
-(BOOL)addScreenParameters:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)normalizedParametersForParameters:(id)arg0 isPublicEvent:(BOOL)arg1 ;
+(BOOL)isValidParameterKey:(id)arg0 isPublicEvent:(BOOL)arg1 errorParameters:(id)arg2 ;


@end


#endif