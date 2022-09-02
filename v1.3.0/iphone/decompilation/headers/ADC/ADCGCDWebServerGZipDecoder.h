// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCGCDWEBSERVERGZIPDECODER_H
#define ADCGCDWEBSERVERGZIPDECODER_H



@class ADCGCDWebServerBodyDecoder;

@interface ADCGCDWebServerGZipDecoder : ADCGCDWebServerBodyDecoder {
    z_stream_s _stream;
    BOOL _finished;
}




-(BOOL)open:(*id)arg0 ;
-(BOOL)writeData:(id)arg0 error:(*id)arg1 ;
-(BOOL)close:(*id)arg0 ;


@end


#endif