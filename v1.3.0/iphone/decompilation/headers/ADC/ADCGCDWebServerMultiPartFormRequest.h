// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCGCDWEBSERVERMULTIPARTFORMREQUEST_H
#define ADCGCDWEBSERVERMULTIPARTFORMREQUEST_H


#import <CoreFoundation/CoreFoundation.h>

@class ADCGCDWebServerRequest;
@class ADCGCDWebServerMIMEStreamParser;

@interface ADCGCDWebServerMultiPartFormRequest : ADCGCDWebServerRequest {
    ADCGCDWebServerMIMEStreamParser *_parser;
}


@property (readonly, nonatomic) NSArray *arguments; // ivar: _arguments
@property (readonly, nonatomic) NSArray *files; // ivar: _files


-(id)initWithMethod:(id)arg0 url:(id)arg1 headers:(id)arg2 path:(id)arg3 query:(id)arg4 ;
-(BOOL)open:(*id)arg0 ;
-(BOOL)writeData:(id)arg0 error:(*id)arg1 ;
-(BOOL)close:(*id)arg0 ;
-(id)firstArgumentForControlName:(id)arg0 ;
-(id)firstFileForControlName:(id)arg0 ;
-(id)description;
+(id)mimeType;


@end


#endif