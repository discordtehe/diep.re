// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVAPIDEVICEINFO_H
#define USRVAPIDEVICEINFO_H


#import <Foundation/Foundation.h>


@interface USRVApiDeviceInfo : NSObject



+(void)WebViewExposed_getAdvertisingTrackingId:(id)arg0 ;
+(void)WebViewExposed_getLimitAdTrackingFlag:(id)arg0 ;
+(void)WebViewExposed_getOsVersion:(id)arg0 ;
+(void)WebViewExposed_getModel:(id)arg0 ;
+(void)WebViewExposed_getConnectionType:(id)arg0 ;
+(void)WebViewExposed_getNetworkType:(id)arg0 ;
+(void)WebViewExposed_getScreenScale:(id)arg0 ;
+(void)WebViewExposed_getScreenWidth:(id)arg0 ;
+(void)WebViewExposed_getScreenHeight:(id)arg0 ;
+(void)WebViewExposed_getNetworkOperator:(id)arg0 ;
+(void)WebViewExposed_getNetworkOperatorName:(id)arg0 ;
+(void)WebViewExposed_getHeadset:(id)arg0 ;
+(void)WebViewExposed_getTimeZone:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getTimeZoneOffset:(id)arg0 ;
+(void)WebViewExposed_getSystemLanguage:(id)arg0 ;
+(void)WebViewExposed_getDeviceVolume:(id)arg0 ;
+(void)WebViewExposed_getScreenBrightness:(id)arg0 ;
+(void)WebViewExposed_getFreeSpace:(id)arg0 ;
+(void)WebViewExposed_getTotalSpace:(id)arg0 ;
+(void)WebViewExposed_getBatteryLevel:(id)arg0 ;
+(void)WebViewExposed_getBatteryStatus:(id)arg0 ;
+(void)WebViewExposed_getFreeMemory:(id)arg0 ;
+(void)WebViewExposed_getTotalMemory:(id)arg0 ;
+(void)WebViewExposed_isRooted:(id)arg0 ;
+(void)WebViewExposed_getUniqueEventId:(id)arg0 ;
+(void)WebViewExposed_getUserInterfaceIdiom:(id)arg0 ;
+(void)WebViewExposed_isSimulator:(id)arg0 ;
+(void)WebViewExposed_getSupportedOrientationsPlist:(id)arg0 ;
+(void)WebViewExposed_getSupportedOrientations:(id)arg0 ;
+(void)WebViewExposed_getSensorList:(id)arg0 ;
+(void)WebViewExposed_getProcessInfo:(id)arg0 ;
+(void)WebViewExposed_getStatusBarWidth:(id)arg0 ;
+(void)WebViewExposed_getStatusBarHeight:(id)arg0 ;
+(void)WebViewExposed_isStatusBarHidden:(id)arg0 ;
+(void)WebViewExposed_getGLVersion:(id)arg0 ;
+(void)WebViewExposed_getDeviceMaxVolume:(id)arg0 ;
+(void)WebViewExposed_registerVolumeChangeListener:(id)arg0 ;
+(void)WebViewExposed_unregisterVolumeChangeListener:(id)arg0 ;
+(void)WebViewExposed_getCPUCount:(id)arg0 ;


@end


#endif