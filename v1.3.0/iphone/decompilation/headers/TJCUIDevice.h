// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCUIDEVICE_H
#define TJCUIDEVICE_H


#import <Foundation/Foundation.h>


@interface TJCUIDevice : NSObject



+(id)getSysInfoByName:(char *)arg0 ;
+(id)platform;
+(id)hwmodel;
+(NSUInteger)getSysInfo:(unsigned int)arg0 ;
+(NSUInteger)cpuFrequency;
+(NSUInteger)busFrequency;
+(NSUInteger)totalMemory;
+(NSUInteger)userMemory;
+(NSUInteger)maxSocketBufferSize;
+(id)totalDiskSpace;
+(id)freeDiskSpace;
+(NSUInteger)platformType;
+(id)platformString;
+(id)platformCode;


@end


#endif