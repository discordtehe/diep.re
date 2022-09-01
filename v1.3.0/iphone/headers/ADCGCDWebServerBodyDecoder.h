// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCGCDWEBSERVERBODYDECODER_H
#define ADCGCDWEBSERVERBODYDECODER_H


#import <Foundation/Foundation.h>

@class ADCGCDWebServerRequest;
@protocol ADCGCDWebServerBodyWriter;
@protocol ADCGCDWebServerBodyWriter;

@interface ADCGCDWebServerBodyDecoder : NSObject <ADCGCDWebServerBodyWriter>

 {
    ADCGCDWebServerRequest *_request;
    id<ADCGCDWebServerBodyWriter> *_writer;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithRequest:(id)arg0 writer:(id)arg1 ;
-(BOOL)open:(*id)arg0 ;
-(BOOL)writeData:(id)arg0 error:(*id)arg1 ;
-(BOOL)close:(*id)arg0 ;


@end


#endif