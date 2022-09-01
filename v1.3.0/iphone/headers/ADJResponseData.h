// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJRESPONSEDATA_H
#define ADJRESPONSEDATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ADJAttribution;
@protocol NSCopying;

@interface ADJResponseData : NSObject <NSCopying>



@property (nonatomic) int activityKind; // ivar: _activityKind
@property (copy, nonatomic) NSString *message; // ivar: _message
@property (copy, nonatomic) NSString *timeStamp; // ivar: _timeStamp
@property (copy, nonatomic) NSString *adid; // ivar: _adid
@property (nonatomic) BOOL success; // ivar: _success
@property (nonatomic) BOOL willRetry; // ivar: _willRetry
@property (nonatomic) BOOL validationResult; // ivar: _validationResult
@property (retain, nonatomic) NSDictionary *jsonResponse; // ivar: _jsonResponse
@property (copy, nonatomic) ADJAttribution *attribution; // ivar: _attribution


-(id)init;
-(id)description;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)responseData;
+(id)buildResponseData:(id)arg0 ;


@end


#endif