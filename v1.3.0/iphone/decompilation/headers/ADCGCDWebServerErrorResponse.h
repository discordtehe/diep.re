// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCGCDWEBSERVERERRORRESPONSE_H
#define ADCGCDWEBSERVERERRORRESPONSE_H



@class ADCGCDWebServerDataResponse;

@interface ADCGCDWebServerErrorResponse : ADCGCDWebServerDataResponse



-(id)initWithStatusCode:(NSInteger)arg0 underlyingError:(id)arg1 messageFormat:(id)arg2 arguments:(char *)arg3 ;
-(id)initWithClientError:(NSInteger)arg0 message:(id)arg1 ;
-(id)initWithServerError:(NSInteger)arg0 message:(id)arg1 ;
-(id)initWithClientError:(NSInteger)arg0 underlyingError:(id)arg1 message:(id)arg2 ;
-(id)initWithServerError:(NSInteger)arg0 underlyingError:(id)arg1 message:(id)arg2 ;
+(id)responseWithClientError:(NSInteger)arg0 message:(id)arg1 ;
+(id)responseWithServerError:(NSInteger)arg0 message:(id)arg1 ;
+(id)responseWithClientError:(NSInteger)arg0 underlyingError:(id)arg1 message:(id)arg2 ;
+(id)responseWithServerError:(NSInteger)arg0 underlyingError:(id)arg1 message:(id)arg2 ;


@end


#endif