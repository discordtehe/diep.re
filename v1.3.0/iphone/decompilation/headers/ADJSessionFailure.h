// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJSESSIONFAILURE_H
#define ADJSESSIONFAILURE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCopying;

@interface ADJSessionFailure : NSObject <NSCopying>



@property (copy, nonatomic) NSString *message; // ivar: _message
@property (copy, nonatomic) NSString *timeStamp; // ivar: _timeStamp
@property (copy, nonatomic) NSString *adid; // ivar: _adid
@property (nonatomic) BOOL willRetry; // ivar: _willRetry
@property (retain, nonatomic) NSDictionary *jsonResponse; // ivar: _jsonResponse


-(id)init;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(id)description;
+(id)sessionFailureResponseData;


@end


#endif