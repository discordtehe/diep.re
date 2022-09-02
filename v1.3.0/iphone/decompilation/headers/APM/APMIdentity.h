// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMIDENTITY_H
#define APMIDENTITY_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class APMPersistedConfig;

@interface APMIdentity : NSObject {
    NSDate *_lastAppInstanceIDUpdateTimestamp;
    NSString *_hashedIDFA;
    NSString *_resettableDeviceID;
    NSString *_appInstanceID;
    BOOL _limitedAdTracking;
    NSString *_identifierForVendorString;
    APMPersistedConfig *_persistedConfig;
    NSString *_appIDFromGMP;
    NSString *_appIDFromAdMob;
    NSNumber *_isIDFVCollectionEnabledNumber;
}


@property (readonly, nonatomic) NSString *appID; // ivar: _appID
@property (readonly, nonatomic) NSString *appVersion; // ivar: _appVersion
@property (readonly, nonatomic) NSNumber *appVersionMajor; // ivar: _appVersionMajor
@property (readonly, nonatomic) NSNumber *appVersionMinor; // ivar: _appVersionMinor
@property (readonly, nonatomic) NSNumber *appVersionRelease; // ivar: _appVersionRelease
@property (readonly, nonatomic) NSString *appInstanceID;
@property (readonly, nonatomic) NSString *resettableDeviceID;
@property (readonly, nonatomic) BOOL hasLimitedAdTracking;
@property (readonly, nonatomic) BOOL limitedAdTracking;
@property (readonly, nonatomic) NSString *appIDFromGMP;
@property (readonly, nonatomic) NSString *appIDFromAdMob;
@property (readonly, nonatomic, getter=isFromAppStore) BOOL fromAppStore;
@property (readonly, nonatomic) NSString *identifierForVendor;
@property (readonly, nonatomic) NSInteger devCertHash; // ivar: _devCertHash
@property (readonly, nonatomic) NSString *firebaseInstanceID;


-(id)initWithPersistedConfig:(id)arg0 ;
-(id)hashedIDFA;
-(void)updateIdentifiers;
-(id)randomAppInstanceID;
-(id)appInstanceID:(*id)arg0 ;
+(id)sharedInstance;
+(NSInteger)appMeasurementLibraryVersion;
+(id)numericFieldsFromAppVersionNumeric:(id)arg0 ;
+(void)notCalled;
+(id)instanceID;


@end


#endif