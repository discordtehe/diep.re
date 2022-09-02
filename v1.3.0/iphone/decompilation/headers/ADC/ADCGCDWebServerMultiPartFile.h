// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCGCDWEBSERVERMULTIPARTFILE_H
#define ADCGCDWEBSERVERMULTIPARTFILE_H


#import <Foundation/Foundation.h>

@class ADCGCDWebServerMultiPart;

@interface ADCGCDWebServerMultiPartFile : ADCGCDWebServerMultiPart

@property (readonly, nonatomic) NSString *fileName; // ivar: _fileName
@property (readonly, nonatomic) NSString *temporaryPath; // ivar: _temporaryPath


-(id)initWithControlName:(id)arg0 contentType:(id)arg1 fileName:(id)arg2 temporaryPath:(id)arg3 ;
-(void)dealloc;
-(id)description;


@end


#endif