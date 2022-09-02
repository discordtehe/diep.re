// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMPERSISTEDCONFIG_H
#define APMPERSISTEDCONFIG_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@class APMUserDefaults;

@interface APMPersistedConfig : NSObject {
    NSString *_name;
    APMUserDefaults *_userDefaults;
    NSObject<OS_dispatch_queue> *_serialQueue;
}


@property (nonatomic) CGFloat lastDeleteStaleBundlesTimestamp;
@property (copy, nonatomic) NSNumber *searchAdCampaignValue;
@property (nonatomic) CGFloat lastSearchAdLookUpTimestamp;
@property (nonatomic) NSInteger searchAdRetryCount;
@property (copy, nonatomic) NSString *appInstanceID;
@property (copy, nonatomic) NSString *appIDFromGMP;
@property (copy, nonatomic) NSString *appIDFromAdMob;
@property (copy, nonatomic) NSString *hashedIDFA;
@property (copy, nonatomic) NSString *configServerLastModifiedString;
@property (readonly, nonatomic) NSInteger measurementEnabledState;
@property (nonatomic) CGFloat lastBackoffTimestamp;
@property (nonatomic) CGFloat lastSuccessfulUploadTimestamp;
@property (nonatomic) CGFloat lastFailedUploadTimestamp;
@property (copy, nonatomic) NSString *appVersion;
@property (copy, nonatomic, setter=setOSVersion:) NSString *osVersion;
@property (readonly, nonatomic) CGFloat midnightOffset;
@property (nonatomic) CGFloat lastMonitorDataSampledTimestamp;
@property (nonatomic) NSInteger firstOpenTimestampMilliseconds;
@property (copy, nonatomic) NSNumber *deferredAnalyticsCollection;
@property (copy, nonatomic) NSNumber *loadTimestampValue;
@property (nonatomic) BOOL startNewSession;
@property (nonatomic) CGFloat lastSessionActivityClockTime;
@property (nonatomic) CGFloat engagementTimeBeforeSessionStart;
@property (nonatomic) NSInteger sessionNumber;


-(id)initWithSuiteName:(id)arg0 ;
-(void)clearValues;
-(NSInteger)int64ForKey:(id)arg0 ;
-(NSInteger)int64ForKey:(id)arg0 userDefault:(id)arg1 ;
-(CGFloat)doubleForKey:(id)arg0 ;
-(id)stringForKey:(id)arg0 ;
-(void)setInt64:(NSInteger)arg0 forKey:(id)arg1 ;
-(void)setDouble:(CGFloat)arg0 forKey:(id)arg1 ;
-(void)setString:(id)arg0 forKey:(id)arg1 ;
-(void)scheduleSynchronizeToDisk;
-(void)synchronizeToDisk;
+(id)sharedInstance;


@end


#endif