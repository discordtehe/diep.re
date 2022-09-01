// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCGCDWEBSERVERDATAREQUEST_H
#define ADCGCDWEBSERVERDATAREQUEST_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ADCGCDWebServerRequest;

@interface ADCGCDWebServerDataRequest : ADCGCDWebServerRequest {
    NSString *_text;
    id *_jsonObject;
}


@property (readonly, nonatomic) NSString *text;
@property (readonly, nonatomic) id *jsonObject;
@property (readonly, nonatomic) NSData *data; // ivar: _data


-(BOOL)open:(*id)arg0 ;
-(BOOL)writeData:(id)arg0 error:(*id)arg1 ;
-(BOOL)close:(*id)arg0 ;
-(id)description;


@end


#endif