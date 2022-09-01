// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJDEVICEINFO_H
#define ADJDEVICEINFO_H


#import <Foundation/Foundation.h>


@interface ADJDeviceInfo : NSObject

@property (copy, nonatomic) NSString *idForAdvertisers; // ivar: _idForAdvertisers
@property (copy, nonatomic) NSString *fbAttributionId; // ivar: _fbAttributionId
@property (nonatomic) BOOL trackingEnabled; // ivar: _trackingEnabled
@property (copy, nonatomic) NSString *vendorId; // ivar: _vendorId
@property (copy, nonatomic) NSString *clientSdk; // ivar: _clientSdk
@property (copy, nonatomic) NSString *bundeIdentifier; // ivar: _bundeIdentifier
@property (copy, nonatomic) NSString *bundleVersion; // ivar: _bundleVersion
@property (copy, nonatomic) NSString *bundleShortVersion; // ivar: _bundleShortVersion
@property (copy, nonatomic) NSString *deviceType; // ivar: _deviceType
@property (copy, nonatomic) NSString *deviceName; // ivar: _deviceName
@property (copy, nonatomic) NSString *osName; // ivar: _osName
@property (copy, nonatomic) NSString *systemVersion; // ivar: _systemVersion
@property (copy, nonatomic) NSString *languageCode; // ivar: _languageCode
@property (copy, nonatomic) NSString *countryCode; // ivar: _countryCode
@property (copy, nonatomic) NSString *machineModel; // ivar: _machineModel
@property (copy, nonatomic) NSString *cpuSubtype; // ivar: _cpuSubtype
@property (copy, nonatomic) NSString *installReceiptBase64; // ivar: _installReceiptBase64
@property (copy, nonatomic) NSString *osBuild; // ivar: _osBuild


-(id)initWithSdkPrefix:(id)arg0 ;
-(void)injectInstallReceipt:(id)arg0 ;
+(id)deviceInfoWithSdkPrefix:(id)arg0 ;


@end


#endif