// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVDEVICE_H
#define USRVDEVICE_H


#import <Foundation/Foundation.h>


@interface USRVDevice : NSObject



+(void)initCarrierUpdates;
+(id)getOsVersion;
+(id)getModel;
+(BOOL)isSimulator;
+(NSInteger)getScreenLayout;
+(id)getAdvertisingTrackingId;
+(BOOL)isLimitTrackingEnabled;
+(BOOL)isUsingWifi;
+(NSInteger)getNetworkType;
+(id)getNetworkOperator;
+(id)getNetworkOperatorName;
+(float)getScreenScale;
+(id)getScreenWidth;
+(id)getScreenHeight;
+(BOOL)isActiveNetworkConnected;
+(id)getUniqueEventId;
+(BOOL)isWiredHeadsetOn;
+(id)getTimeZone:(BOOL)arg0 ;
+(NSInteger)getTimeZoneOffset;
+(id)getPreferredLocalization;
+(float)getOutputVolume;
+(float)getScreenBrightness;
+(id)getFreeSpaceInKilobytes;
+(id)getTotalSpaceInKilobytes;
+(float)getBatteryLevel;
+(NSInteger)getBatteryStatus;
+(id)getTotalMemoryInKilobytes;
+(id)getFreeMemoryInKilobytes;
+(id)getProcessInfo;
+(BOOL)isRooted;
+(NSInteger)getUserInterfaceIdiom;
+(id)getSensorList;
+(id)getGLVersion;
+(float)getDeviceMaxVolume;
+(NSUInteger)getCPUCount;


@end


#endif