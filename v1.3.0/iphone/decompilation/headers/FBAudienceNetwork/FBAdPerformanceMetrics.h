// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADPERFORMANCEMETRICS_H
#define FBADPERFORMANCEMETRICS_H


#import <Foundation/Foundation.h>


@interface FBAdPerformanceMetrics : NSObject



+(void)initialize;
+(unsigned int)coreCount;
+(struct FBAdDeviceBatteryInfo )batteryInfo;
+(NSUInteger)freeMemoryBytes;
+(NSUInteger)totalMemoryBytes;
+(NSUInteger)residentMemoryBytes;
+(NSUInteger)virtualMemoryBytes;
+(NSUInteger)freeDiskBytes;
+(struct ? )freeAndTotalDiskBytes;


@end


#endif