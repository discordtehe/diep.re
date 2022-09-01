// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMOBILEADS_H
#define GADMOBILEADS_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@class GADAudioVideoManager;
@class GADRequestConfiguration;
@class GADInitializationStatus;

@interface GADMobileAds : NSObject {
    NSObject<OS_dispatch_queue> *_lockQueue;
    BOOL _applicationMuted;
    float _applicationVolume;
    NSString *_googleMobileAdsAppID;
    atomic_flag _hasConfigured;
}


@property (readonly, nonatomic) NSString *extendedVersion;
@property (readonly, copy, nonatomic) NSString *version;
@property (readonly, copy, nonatomic) NSString *googleMobileAdsAppID;
@property (readonly, copy, nonatomic) NSString *googleMobileAdsAppIDFromPlist;
@property (nonatomic) float applicationVolume;
@property (nonatomic) BOOL applicationMuted;
@property (readonly, nonatomic) GADAudioVideoManager *audioVideoManager; // ivar: _audioVideoManager
@property (readonly, nonatomic) GADRequestConfiguration *requestConfiguration; // ivar: _requestConfiguration
@property (readonly, nonatomic) GADInitializationStatus *initializationStatus;


-(id)init;
-(void)configureWithApplicationID:(id)arg0 ;
-(BOOL)isSDKVersionAtLeastMajor:(NSInteger)arg0 minor:(NSInteger)arg1 patch:(NSInteger)arg2 ;
-(void)registerMediationAdapterClassName:(id)arg0 ;
-(void)startWithCompletionHandler:(id)arg0 ;
+(void)initialize;
+(void)configureWithApplicationID:(id)arg0 ;
+(void)disableAutomatedInAppPurchaseReporting;
+(void)disableSDKCrashReporting;
+(void)enableBackgroundAdLoading;
+(id)sharedInstance;


@end


#endif