// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSEDEVICESTATUS_H
#define SSEDEVICESTATUS_H


#import <Foundation/Foundation.h>
#import <CoreTelephony/CoreTelephony.h>

@class SSEReachability;

@interface SSEDeviceStatus : NSObject {
    SSEReachability *_reachability;
    CTTelephonyNetworkInfo *networkInfo;
}


@property (nonatomic) BOOL isUuidEnabled; // ivar: _isUuidEnabled
@property (readonly) NSString *advertiserId;
@property (readonly, nonatomic) NSString *vendorId;
@property (readonly) NSString *language;
@property (readonly) NSUInteger diskFreeSizeInMegaBytes;
@property (readonly) BOOL isAdvertisingTrackingEnabled;
@property (readonly) NSString *carrier;
@property (readonly) NSInteger localTime;
@property (readonly) NSInteger timezoneOffset;
@property (readonly) BOOL jailBroken;
@property (readonly) NSString *systemVersion;
@property (readonly) NSNumber *batteryLevel;
@property (readonly) NSNumber *volume;
@property (readonly) NSString *mobileCountryCode;
@property (readonly) NSString *mobileNetworkCode;
@property (readonly) NSString *isoCountryCode;
@property (readonly, copy, nonatomic) NSString *customUUID;


-(id)init;
-(id)description;


@end


#endif