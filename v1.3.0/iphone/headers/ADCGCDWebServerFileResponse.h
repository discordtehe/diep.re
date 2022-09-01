// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCGCDWEBSERVERFILERESPONSE_H
#define ADCGCDWEBSERVERFILERESPONSE_H


#import <Foundation/Foundation.h>

@class ADCGCDWebServerResponse;

@interface ADCGCDWebServerFileResponse : ADCGCDWebServerResponse {
    NSString *_path;
    NSUInteger _offset;
    NSUInteger _size;
    int _file;
}




-(id)initWithFile:(id)arg0 ;
-(id)initWithFile:(id)arg0 isAttachment:(BOOL)arg1 ;
-(id)initWithFile:(id)arg0 byteRange:(struct _NSRange )arg1 ;
-(id)initWithFile:(id)arg0 byteRange:(struct _NSRange )arg1 isAttachment:(BOOL)arg2 ;
-(BOOL)open:(*id)arg0 ;
-(id)readData:(*id)arg0 ;
-(void)close;
-(id)description;
+(id)responseWithFile:(id)arg0 ;
+(id)responseWithFile:(id)arg0 isAttachment:(BOOL)arg1 ;
+(id)responseWithFile:(id)arg0 byteRange:(struct _NSRange )arg1 ;
+(id)responseWithFile:(id)arg0 byteRange:(struct _NSRange )arg1 isAttachment:(BOOL)arg2 ;


@end


#endif