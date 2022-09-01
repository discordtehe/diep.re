// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCGCDWEBSERVERMULTIPARTARGUMENT_H
#define ADCGCDWEBSERVERMULTIPARTARGUMENT_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class ADCGCDWebServerMultiPart;

@interface ADCGCDWebServerMultiPartArgument : ADCGCDWebServerMultiPart

@property (readonly, nonatomic) NSData *data; // ivar: _data
@property (readonly, nonatomic) NSString *string; // ivar: _string


-(id)initWithControlName:(id)arg0 contentType:(id)arg1 data:(id)arg2 ;
-(id)description;


@end


#endif