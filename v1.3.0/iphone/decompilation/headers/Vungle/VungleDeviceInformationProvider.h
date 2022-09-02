// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEDEVICEINFORMATIONPROVIDER_H
#define VUNGLEDEVICEINFORMATIONPROVIDER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface VungleDeviceInformationProvider : NSObject

@property (copy, nonatomic) NSString *systemVersion; // ivar: _systemVersion
@property (copy, nonatomic) NSString *machineName; // ivar: _machineName
@property (copy, nonatomic) NSString *connectionQuality; // ivar: _connectionQuality
@property (copy, nonatomic) NSString *pluginName; // ivar: _pluginName
@property (copy, nonatomic) NSString *connectionDetail; // ivar: _connectionDetail
@property (copy, nonatomic) NSString *batteryState; // ivar: _batteryState
@property (copy, nonatomic) NSDictionary *consentInfo; // ivar: _consentInfo
@property (nonatomic) float batteryLevel; // ivar: _batteryLevel
@property (nonatomic) BOOL adTrackingEnabled; // ivar: _adTrackingEnabled
@property (nonatomic) BOOL batterySaverEnabled; // ivar: _batterySaverEnabled
@property (nonatomic) CGFloat systemVolume; // ivar: _systemVolume
@property (nonatomic) CGSize screenSize; // ivar: _screenSize
@property (nonatomic) CGFloat screenScale; // ivar: _screenScale
@property (nonatomic) NSUInteger availableDiscSpace; // ivar: _availableDiscSpace
@property (copy, nonatomic) NSString *userAgent; // ivar: _userAgent


-(id)init;
-(id)informationWithConnectionQuality:(id)arg0 ;
-(void)updateUserAgent;
-(void)updateMachineName;
-(void)updateSystemVersion;
-(void)updateScreenSize;
-(void)updateScreenScale;
-(void)updateSystemVolume;
-(void)updateFreeSpace;
-(void)updateConnectionDetail;
-(void)beginBatteryMonitoring;
-(void)endBatteryMonitoring;
-(void)updateBatteryLevel;
-(void)updateBatteryState;
-(void)updateBatterySaverEnabled;
-(void)updateAdTracking;
-(void)updateBatteryInformation;
-(void)updateInformation;
-(id)deviceInformationWithModel:(id)arg0 userAgent:(id)arg1 systemVersion:(id)arg2 systemVolume:(CGFloat)arg3 screenSize:(struct CGSize )arg4 screenScale:(CGFloat)arg5 bytesAvailable:(NSUInteger)arg6 connectionQuality:(id)arg7 connectionDetail:(id)arg8 batteryLevel:(float)arg9 batteryState:(id)arg10 batterySaverEnabled:(BOOL)arg11 adTrackingEnabled:(BOOL)arg12 ;
+(id)appendToDeviceInfo:(id)arg0 ;
+(id)sharedProvider;


@end


#endif