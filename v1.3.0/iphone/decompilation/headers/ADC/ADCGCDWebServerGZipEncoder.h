// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCGCDWEBSERVERGZIPENCODER_H
#define ADCGCDWEBSERVERGZIPENCODER_H



@class ADCGCDWebServerBodyEncoder;

@interface ADCGCDWebServerGZipEncoder : ADCGCDWebServerBodyEncoder {
    z_stream_s _stream;
    BOOL _finished;
}




-(id)initWithResponse:(id)arg0 reader:(id)arg1 ;
-(BOOL)open:(*id)arg0 ;
-(id)readData:(*id)arg0 ;
-(void)close;


@end


#endif