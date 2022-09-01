// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCGCDWEBSERVERFILEREQUEST_H
#define ADCGCDWEBSERVERFILEREQUEST_H


#import <Foundation/Foundation.h>

@class ADCGCDWebServerRequest;

@interface ADCGCDWebServerFileRequest : ADCGCDWebServerRequest {
    int _file;
}


@property (readonly, nonatomic) NSString *temporaryPath; // ivar: _temporaryPath


-(id)initWithMethod:(id)arg0 url:(id)arg1 headers:(id)arg2 path:(id)arg3 query:(id)arg4 ;
-(void)dealloc;
-(BOOL)open:(*id)arg0 ;
-(BOOL)writeData:(id)arg0 error:(*id)arg1 ;
-(BOOL)close:(*id)arg0 ;
-(id)description;


@end


#endif