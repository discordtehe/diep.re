// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCGCDWEBSERVERURLENCODEDFORMREQUEST_H
#define ADCGCDWEBSERVERURLENCODEDFORMREQUEST_H


#import <CoreFoundation/CoreFoundation.h>

@class ADCGCDWebServerDataRequest;

@interface ADCGCDWebServerURLEncodedFormRequest : ADCGCDWebServerDataRequest

@property (readonly, nonatomic) NSDictionary *arguments; // ivar: _arguments


-(BOOL)close:(*id)arg0 ;
-(id)description;
+(id)mimeType;


@end


#endif