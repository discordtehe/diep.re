// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADDEVICE_H
#define FBADDEVICE_H


#import <Foundation/Foundation.h>


@interface FBAdDevice : NSObject



+(id)sharedLock;
+(void)initialize;
+(void)initializeAndCacheValues;
+(void)resetCache;
+(id)machine;
+(id)machineName;
+(id)architecture;
+(id)model;
+(NSUInteger)deviceModel;
+(id)systemName;
+(BOOL)isPad;
+(unsigned int)coreCount;
+(NSUInteger)freeDiskSpace;
+(NSUInteger)adjustedFillRate;
+(struct FBAdDeviceBatteryInfo )deviceBatteryInfo;
+(NSUInteger)freeMemoryBytes;
+(NSUInteger)totalMemoryBytes;
+(NSUInteger)freeDiskBytes;
+(BOOL)isSlowerDevice;
+(BOOL)isRunningOnPadInPhoneEmulator;
+(id)systemVersion;
+(id)systemBuildNumber;
+(BOOL)systemVersionIsGreaterThanOrEqualTo:(id)arg0 ;
+(BOOL)systemVersionIsLessThan:(id)arg0 ;
+(BOOL)systemVersionIsGreaterThanOrEqualToiOS10;
+(BOOL)systemVersionIsGreaterThanOrEqualToiOS11;


@end


#endif