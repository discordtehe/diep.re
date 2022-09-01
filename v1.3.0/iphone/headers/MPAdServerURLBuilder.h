// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPADSERVERURLBUILDER_H
#define MPADSERVERURLBUILDER_H


#import <Foundation/Foundation.h>


@interface MPAdServerURLBuilder : NSObject



+(id)rewardedCompletionUrl:(id)arg0 withCustomerId:(id)arg1 rewardType:(id)arg2 rewardAmount:(id)arg3 customEventName:(id)arg4 additionalData:(id)arg5 ;
+(id)nativePositionUrlForAdUnitId:(id)arg0 ;
+(id)consentSynchronizationUrl;
+(id)consentDialogURL;
+(id)conversionTrackingURLForAppID:(id)arg0 ;
+(id)sessionTrackingURL;
+(id)openEndpointURLWithIDParameter:(id)arg0 isSessionTracking:(BOOL)arg1 ;
+(id)URLWithAdUnitID:(id)arg0 targeting:(id)arg1 ;
+(id)URLWithAdUnitID:(id)arg0 targeting:(id)arg1 desiredAssets:(id)arg2 viewability:(BOOL)arg3 ;
+(id)URLWithAdUnitID:(id)arg0 targeting:(id)arg1 desiredAssets:(id)arg2 adSequence:(NSInteger)arg3 viewability:(BOOL)arg4 ;
+(id)orientationValue;
+(id)scaleFactorValue;
+(id)timeZoneValue;
+(id)isMRAIDEnabledSDKValue;
+(id)connectionTypeValue;
+(id)carrierNameValue;
+(id)isoCountryCodeValue;
+(id)mobileNetworkCodeValue;
+(id)mobileCountryCodeValue;
+(id)deviceNameValue;
+(id)desiredAdAssetsValue:(id)arg0 ;
+(id)adSequenceValue:(NSInteger)arg0 ;
+(id)physicalScreenResolutionWidthValue;
+(id)physicalScreenResolutionHeightValue;
+(id)creativeSafeWidthValue:(struct CGSize )arg0 ;
+(id)creativeSafeHeightValue:(struct CGSize )arg0 ;
+(id)appTransportSecurityStatusValue;
+(id)keywordsValue:(id)arg0 ;
+(id)userDataKeywordsValue:(id)arg0 ;
+(id)viewabilityStatusValue:(BOOL)arg0 ;
+(id)advancedBiddingValue;
+(id)backoffMillisecondsValueForAdUnitID:(id)arg0 ;
+(id)adapterInformation;
+(id)locationInformationDictionary:(id)arg0 ;
+(id)engineInformation;
+(void)setEngineInformation:(id)arg0 ;
+(id)URLWithEndpointPath:(id)arg0 postData:(id)arg1 ;
+(id)baseParametersDictionaryWithIDParameter:(id)arg0 ;
+(id)baseParametersDictionaryWithIDFAUsingIDFAForConsent:(BOOL)arg0 withIDParameter:(id)arg1 ;
+(id)applicationVersion;
+(id)engineNameValue;
+(id)engineVersionValue;


@end


#endif