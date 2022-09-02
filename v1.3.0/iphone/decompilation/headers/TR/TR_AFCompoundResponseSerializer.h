// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_AFCOMPOUNDRESPONSESERIALIZER_H
#define TR_AFCOMPOUNDRESPONSESERIALIZER_H

@class AFHTTPResponseSerializer;

#import <CoreFoundation/CoreFoundation.h>


@interface TR_AFCompoundResponseSerializer : AFHTTPResponseSerializer

@property (copy, nonatomic) NSArray *responseSerializers; // ivar: _responseSerializers


-(id)responseObjectForResponse:(id)arg0 data:(id)arg1 error:(*id)arg2 ;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)compoundSerializerWithResponseSerializers:(id)arg0 ;


@end


#endif