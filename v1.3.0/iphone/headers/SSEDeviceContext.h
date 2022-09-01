// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSEDEVICECONTEXT_H
#define SSEDEVICECONTEXT_H


#import <Foundation/Foundation.h>


@interface SSEDeviceContext : NSObject

@property (retain) NSString *deviceOSName; // ivar: _deviceOSName
@property (retain) NSString *deviceOSVersion; // ivar: _deviceOSVersion
@property (retain) NSString *deviceModel; // ivar: _deviceModel
@property (retain) NSString *deviceOEM; // ivar: _deviceOEM


-(id)description;
+(id)defaultDeviceContext;


@end


#endif