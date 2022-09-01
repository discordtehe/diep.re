// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCDEVICEAPI_H
#define ADCDEVICEAPI_H


#import <Foundation/Foundation.h>


@interface ADCDeviceAPI : NSObject



+(BOOL)applicationExistsWithHandle:(id)arg0 ;
+(void)getInfo:(id)arg0 ;
+(id)getInfoWithoutAsyncData;
+(id)getMediaPoolInfo;


@end


#endif