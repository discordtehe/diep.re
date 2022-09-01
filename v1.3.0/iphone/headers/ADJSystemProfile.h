// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJSYSTEMPROFILE_H
#define ADJSYSTEMPROFILE_H


#import <Foundation/Foundation.h>


@interface ADJSystemProfile : NSObject



+(BOOL)is64bit;
+(id)cpuFamily;
+(int)cpuCount;
+(id)machineArch;
+(id)machineModel;
+(id)cpuBrand;
+(id)cpuFeatures;
+(id)cpuVendor;
+(id)osVersion;
+(id)readSysctlbByNameString:(char *)arg0 errorLog:(id)arg1 ;
+(id)appleLanguage;
+(NSInteger)cpuSpeed;
+(NSInteger)ramsize;
+(id)cpuType;
+(id)cpuSubtype;
+(id)readCpuTypeSubtype:(int)arg0 readSubType:(BOOL)arg1 cpusubtype:(int)arg2 ;


@end


#endif