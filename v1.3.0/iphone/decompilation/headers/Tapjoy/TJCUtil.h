// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCUTIL_H
#define TJCUTIL_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class TJCNetReachability;

@interface TJCUtil : NSObject

@property (nonatomic) CGFloat lastTimeStamp; // ivar: _lastTimeStamp
@property (retain, nonatomic) NSDictionary *tapjoyInfoPlist; // ivar: _tapjoyInfoPlist
@property (retain, nonatomic) NSMutableDictionary *URLParamsDict; // ivar: _URLParamsDict
@property (retain, nonatomic) NSMutableDictionary *FRParamsDict; // ivar: _FRParamsDict
@property (retain, nonatomic) TJCNetReachability *netReachability; // ivar: _netReachability
@property (copy, nonatomic) NSString *netReachabilityType; // ivar: _netReachabilityType
@property (nonatomic) BOOL isNetReachabilityStale; // ivar: _isNetReachabilityStale
@property (nonatomic) BOOL shouldClearSharedURLCache; // ivar: _shouldClearSharedURLCache
@property (nonatomic) BOOL doesResourceBundleExist; // ivar: _doesResourceBundleExist
@property (nonatomic) BOOL SDKEnabled; // ivar: _SDKEnabled
@property (nonatomic) BOOL SDKConnected; // ivar: _SDKConnected
@property (nonatomic) BOOL SDKConnectedToServer; // ivar: _SDKConnectedToServer
@property (nonatomic) BOOL limitedSDKEnabled; // ivar: _limitedSDKEnabled
@property (nonatomic) BOOL limitedSDKConnected; // ivar: _limitedSDKConnected
@property (nonatomic) BOOL limitedSDKConnectedToServer; // ivar: _limitedSDKConnectedToServer
@property (nonatomic) BOOL genericErrorAlertDisabled; // ivar: _genericErrorAlertDisabled
@property (copy, nonatomic) NSString *installID; // ivar: _installID
@property (copy, nonatomic) NSString *serviceURL; // ivar: _serviceURL
@property (copy, nonatomic) NSString *placementURL; // ivar: _placementURL
@property (nonatomic) BOOL dismissContentAll; // ivar: _dismissContentAll


-(id)init;
-(id)genericParametersWithNewSessionID;
-(void)resetSessionID;
-(id)genericParametersWithUserID;
-(id)fiveRocksParameters;
-(id)genericParameters;
-(id)genericLimitedParameters;
-(id)_genericParameters;
-(id)generateInstallID;
-(id)createQueryStringFromDict:(id)arg0 ;
-(id)createQueryStringFromString:(id)arg0 ;
-(id)getVendorIdentifier;
-(id)getAdvertisingIdentifier;
-(BOOL)isAdTrackingEnabled;
-(void)clearCache;
-(void)checkResourceBundleExists;
-(void)setAdTrackingValues;
+(void)resetParameters;
+(id)getLanguage;
+(BOOL)checkHasConnected:(id)arg0 ;
+(BOOL)checkHasLimitedConnected:(id)arg0 ;
+(BOOL)isPad;
+(BOOL)caseInsenstiveCompare:(id)arg0 AndString2:(id)arg1 ;
+(id)TJCSHA256CommonParamsWithTimeStamp:(id)arg0 string:(id)arg1 ;
+(id)TJCSHA256CommonParamsWithTimeStampForLimited:(id)arg0 string:(id)arg1 ;
+(id)TJCSHA256WithString:(id)arg0 ;
+(id)TJCHMACSHA256WithString:(id)arg0 key:(id)arg1 ;
+(id)TJCSHA1WithString:(id)arg0 ;
+(id)generateGUID;
+(id)generateSessionID;
+(id)getTimeStamp;
+(BOOL)shouldOpenURLInternally:(id)arg0 ;
+(id)getPathToResource:(id)arg0 ofType:(id)arg1 ;
+(id)getMainResourceBundle;
+(id)getResourceBundle:(id)arg0 ;
+(BOOL)checkIfTapjoyResourceExists:(id)arg0 ofType:(id)arg1 ;
+(id)createErrorWithString:(id)arg0 ;
+(void)showGenericConnectionErrorAlertWithDelegate:(id)arg0 ;
+(void)notifyResponseError:(id)arg0 sender:(id)arg1 withNotificationName:(id)arg2 ;
+(BOOL)isGenericErrorAlertDisabled;
+(id)createRequestWithURL:(id)arg0 cachePolicy:(NSUInteger)arg1 timeoutInterval:(CGFloat)arg2 ;
+(float)getCurrentVolume;
+(NSInteger)us_boottime;
+(CGFloat)uptime;
+(id)colorFromHexString:(id)arg0 ;
+(BOOL)isWebKitSupported;


@end


#endif