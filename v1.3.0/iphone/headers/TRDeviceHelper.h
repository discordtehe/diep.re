// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TRDEVICEHELPER_H
#define TRDEVICEHELPER_H


#import <Foundation/Foundation.h>


@interface TRDeviceHelper : NSObject



+(id)osVersion;
+(id)orientation;
+(id)connectionType;
+(id)carrier;
+(id)deviceName;
+(CGFloat)screenScale;


@end


#endif