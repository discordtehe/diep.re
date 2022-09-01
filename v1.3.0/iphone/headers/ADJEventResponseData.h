// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJEVENTRESPONSEDATA_H
#define ADJEVENTRESPONSEDATA_H


#import <Foundation/Foundation.h>

@class ADJResponseData;

@interface ADJEventResponseData : ADJResponseData

@property (copy, nonatomic) NSString *eventToken; // ivar: _eventToken


-(id)initWithActivityPackage:(id)arg0 ;
-(id)successResponseData;
-(id)failureResponseData;
-(id)description;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)responseDataWithActivityPackage:(id)arg0 ;


@end


#endif