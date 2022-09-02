// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCDEVICE_H
#define ADCDEVICE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol WCSessionDelegate;

@interface ADCDevice : NSObject <WCSessionDelegate>



@property (readonly) NSString *advertiserId; // ivar: _advertiserId
@property (retain, nonatomic) NSString *adcAltID; // ivar: _adcAltID
@property (nonatomic) BOOL watchPaired; // ivar: _watchPaired
@property (readonly) NSString *carrier; // ivar: _carrier
@property (retain, nonatomic) NSString *userId; // ivar: _userId
@property (readonly) NSString *dataPath; // ivar: _dataPath
@property (readonly) NSString *legacyDataPath; // ivar: _legacyDataPath
@property (readonly) CGFloat screenHeight; // ivar: _screenHeight
@property (readonly) CGFloat screenWidth; // ivar: _screenWidth
@property (readonly) CGFloat screenHeightPixels; // ivar: _screenHeightPixels
@property (readonly) CGFloat screenWidthPixels; // ivar: _screenWidthPixels
@property (readonly) NSString *localeCountryCode; // ivar: _localeCountryCode
@property (readonly) NSString *localeCountryCodeShort; // ivar: _localeCountryCodeShort
@property (readonly) NSString *localeLanguageCode; // ivar: _localeLanguageCode
@property (readonly) NSString *localeLanguageCodeShort; // ivar: _localeLanguageCodeShort
@property (readonly) NSString *macAddress; // ivar: _macAddress
@property (readonly) NSString *mediaPath; // ivar: _mediaPath
@property (readonly) NSString *legacyMediaPath; // ivar: _legacyMediaPath
@property (readonly) NSString *tempStoragePath; // ivar: _tempStoragePath
@property (readonly) NSString *model; // ivar: _model
@property (readonly, getter=isPlusModel) BOOL plusModel;
@property (readonly) NSString *type; // ivar: _type
@property (readonly) NSString *brand; // ivar: _brand
@property (readonly) NSString *networkType; // ivar: _networkType
@property (readonly) NSString *OSName; // ivar: _OSName
@property (readonly) NSString *OSVersion; // ivar: _OSVersion
@property (readonly) NSString *SDKVersion; // ivar: _SDKVersion
@property (readonly) NSString *capabilitiesMaskString; // ivar: _capabilitiesMaskString
@property (readonly) NSString *appBundleName; // ivar: _appBundleName
@property (readonly) NSString *appBundleVersion; // ivar: _appBundleVersion
@property (readonly) NSInteger currOrientation; // ivar: _currOrientation
@property (readonly) int timezoneGMTOffsetMinutes; // ivar: _timezoneGMTOffsetMinutes
@property (readonly) int timezoneDSTOffsetMinutes; // ivar: _timezoneDSTOffsetMinutes
@property (readonly) NSString *timezoneIETF; // ivar: _timezoneIETF
@property (readonly) NSString *cellServiceCountryCode; // ivar: _cellServiceCountryCode
@property (readonly, getter=isViewControllerBasedStatusBarAppearanceEnabled) BOOL viewControllerBasedStatusBarAppearanceEnabled; // ivar: _viewControllerBasedStatusBarAppearanceEnabled
@property (retain, nonatomic) NSDictionary *launchServerResponseMetadata; // ivar: _launchServerResponseMetadata
@property (readonly) BOOL limitAdTracking; // ivar: _limitAdTracking
@property (readonly) CGFloat screenScale; // ivar: _screenScale
@property (readonly) NSString *vendorId; // ivar: _vendorId
@property (readonly) float batteryLevel; // ivar: _batteryLevel
@property (readonly) NSInteger batteryState; // ivar: _batteryState
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(BOOL)createADC3Directories;
-(BOOL)pathIsAllowable:(id)arg0 ;
-(void)getInfo:(id)arg0 ;
-(void)getInfoAsync:(id)arg0 ;
-(id)getInfoWithoutAsyncData;
-(id)collectDeviceModel;
-(id)collectMACAddress:(*id)arg0 ;
-(BOOL)supportsPhoneCalls;
-(BOOL)supportsSMS;
-(BOOL)supportsMail;
+(id)sharedDevice;


@end


#endif