// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMREMOTECONFIG_H
#define APMREMOTECONFIG_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class APMDatabase;
@class GULMutableDictionary;
@class APMPBMeasurementConfig;

@interface APMRemoteConfig : NSObject {
    BOOL _isDefaultInstance;
    NSString *_appID;
    APMDatabase *_database;
    GULMutableDictionary *_cachedValueByRemoteConfigKeys;
    GULMutableDictionary *_cachedEventConfigByEventName;
    NSMutableSet *_cachedExperimentIDs;
    NSDictionary *_experimentIDMap;
    NSNumberFormatter *_numberFormatter;
    APMPBMeasurementConfig *_remoteConfigProto;
}


@property (readonly, nonatomic) CGFloat lastRemoteConfigUpdateTimestamp;
@property (readonly, nonatomic, getter=isExpired) BOOL expired;
@property (readonly, nonatomic) NSInteger version;
@property (readonly, nonatomic, getter=isSearchAdReporterEnabled) BOOL searchAdReporterEnabled;
@property (readonly, nonatomic) int maxAudienceCount;
@property (readonly, nonatomic) int maxFiltersPerAudience;
@property (readonly, nonatomic) int maxFilterResultCount;
@property (readonly, nonatomic) int maxParametersPerFilter;
@property (readonly, nonatomic, getter=isAudienceDynamicFiltersEnabled) BOOL audienceDynamicFiltersEnabled;
@property (readonly, nonatomic, getter=isAudienceSequenceFiltersEnabled) BOOL audienceSequenceFiltersEnabled;
@property (readonly, nonatomic, getter=isAudienceScopedFiltersEnabled) BOOL audienceScopedFiltersEnabled;
@property (readonly, nonatomic) CGFloat maxQueueTime;
@property (readonly, nonatomic) CGFloat databaseDeleteStaleBundlesInterval;
@property (readonly, nonatomic) NSArray *experimentIDs;
@property (readonly, nonatomic) CGFloat adIDCacheTime;
@property (readonly, nonatomic, getter=isIdentifierForVendorCollectionEnabled) BOOL identifierForVendorCollectionEnabled;
@property (readonly, nonatomic, getter=isIAPSubscriptionNonConsumableReportEnabled) BOOL IAPSubscriptionNonConsumableReportEnabled;
@property (readonly, nonatomic, getter=isIAPIntroductoryOfferEnabled) BOOL IAPIntroductoryOfferEnabled;
@property (readonly, nonatomic) CGFloat monitoringSamplePeriod;
@property (readonly, nonatomic, getter=isNetworkBackgroundSessionEnabled) BOOL networkBackgroundSessionEnabled;
@property (readonly, nonatomic) CGFloat networkTimeout;
@property (readonly, nonatomic) CGFloat sessionDefaultMinimumInterval;
@property (readonly, nonatomic) CGFloat sessionDefaultTimeoutInterval;
@property (readonly, nonatomic) CGFloat sessionEventUserEngagementInterval;
@property (readonly, nonatomic) BOOL sessionIDEnabled;
@property (readonly, nonatomic) BOOL sessionImmediateStartEnabled;
@property (readonly, nonatomic) BOOL sessionBackgroundEnabled;
@property (readonly, nonatomic) BOOL sessionNumberEnabled;
@property (readonly, nonatomic) BOOL efficientEngagementReportingEnabled;
@property (readonly, nonatomic) BOOL redundantEngagementRemovalEnabled;
@property (readonly, nonatomic) BOOL uploadWhenAppInBackgroundEnabled;
@property (readonly, nonatomic) BOOL parsePurchaseDataEnabled;
@property (readonly, nonatomic) BOOL dedupePurchasesEnabled;
@property (readonly, nonatomic) int maxConversionsPerDay;
@property (readonly, nonatomic) int maxEventsPerDay;
@property (readonly, nonatomic) int maxPublicEventsPerDay;
@property (readonly, nonatomic) int maxErrorEventsPerDay;
@property (readonly, nonatomic) int maxTrackedCurrencies;
@property (readonly, nonatomic) int maxEventsStored;
@property (readonly, nonatomic) int maxBundlesCreatedPerIteration;
@property (readonly, nonatomic) CGFloat uploadingBackoffInterval;
@property (readonly, nonatomic) CGFloat uploadingInterval;
@property (readonly, nonatomic) CGFloat uploadingInitialDelayInterval;
@property (readonly, nonatomic) NSInteger uploadMaxBundlesLimit;
@property (readonly, nonatomic) NSInteger uploadMaxEventsPerBundle;
@property (readonly, nonatomic) NSInteger uploadMaxSizeLimitBytes;
@property (readonly, nonatomic) int uploadingRetryCount;
@property (readonly, nonatomic) CGFloat uploadingRetryInterval;
@property (readonly, nonatomic) int maxRealtimeEventCountPerDay;
@property (readonly, nonatomic) CGFloat uploadingDebugModeInterval;
@property (readonly, nonatomic) CGFloat uploadingRealTimeInterval;
@property (readonly, nonatomic) BOOL blacklistInternal;
@property (readonly, nonatomic) BOOL blacklistPublic;
@property (readonly, nonatomic, getter=isEventSamplingEnabled) BOOL eventSamplingEnabled;
@property (readonly, nonatomic, getter=isTimeZoneOffsetEnabled) BOOL timeZoneOffsetEnabled;
@property (readonly, nonatomic) int analyticsAccountTimeZoneOffsetMinutes;
@property (readonly, nonatomic) BOOL checksumEnabled;
@property (readonly, nonatomic) CGFloat remoteConfigCacheTimeInterval;
@property (readonly, nonatomic, getter=isResetAnalyticsDataEnabled) BOOL resetAnalyticsDataEnabled;
@property (readonly, nonatomic, getter=isScreenViewReporterDelegateEnabled) BOOL screenViewReporterDelegateEnabled;


-(id)initWithAppID:(id)arg0 database:(id)arg1 ;
-(id)initWithAppID:(id)arg0 database:(id)arg1 measurementConfig:(id)arg2 ;
-(void)reset;
-(BOOL)updateMeasurementConfig:(id)arg0 ;
-(id)eventConfigWithName:(id)arg0 ;
-(BOOL)isEventBlacklisted:(id)arg0 ;
-(BOOL)isEventCustomConversion:(id)arg0 ;
-(BOOL)eventHasSamplingRate:(id)arg0 ;
-(int)samplingRateForEvent:(id)arg0 ;
-(id)remoteConfigURLWithAppInstanceID:(id)arg0 platform:(id)arg1 SDKVersion:(NSInteger)arg2 ;
-(void)parseRemoteConfigFromMeasurementConfig:(id)arg0 ;
-(id)measurementConfigFromDatabase;
-(id)numberFromString:(id)arg0 ;
-(id)cacheValue:(id)arg0 forKey:(id)arg1 ;
-(id)numberFromCacheWithKey:(id)arg0 defaultValue:(id)arg1 maxValue:(id)arg2 minValue:(id)arg3 ;
-(id)numberFromCacheWithKey:(id)arg0 defaultValue:(id)arg1 maxValue:(id)arg2 minValue:(id)arg3 block:(id)arg4 ;
-(CGFloat)timeIntervalInSecondsFromCacheWithKey:(id)arg0 defaultValue:(CGFloat)arg1 maxValue:(CGFloat)arg2 minValue:(CGFloat)arg3 ;
-(int)intValueFromCacheWithKey:(id)arg0 defaultValue:(int)arg1 maxValue:(int)arg2 minValue:(int)arg3 ;
-(NSInteger)int64ValueFromCacheWithKey:(id)arg0 defaultValue:(NSInteger)arg1 maxValue:(NSInteger)arg2 minValue:(NSInteger)arg3 ;
-(NSInteger)int64ValueFromCacheWithKey:(id)arg0 defaultValue:(NSInteger)arg1 ;
+(id)defaultInstance;


@end


#endif