// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCGCDWEBSERVERSTREAMEDRESPONSE_H
#define ADCGCDWEBSERVERSTREAMEDRESPONSE_H



@class ADCGCDWebServerResponse;

@interface ADCGCDWebServerStreamedResponse : ADCGCDWebServerResponse {
    id *_block;
}




-(id)initWithContentType:(id)arg0 streamBlock:(id)arg1 ;
-(id)initWithContentType:(id)arg0 asyncStreamBlock:(id)arg1 ;
-(void)asyncReadDataWithCompletion:(id)arg0 ;
-(id)description;
+(id)responseWithContentType:(id)arg0 streamBlock:(id)arg1 ;
+(id)responseWithContentType:(id)arg0 asyncStreamBlock:(id)arg1 ;


@end


#endif