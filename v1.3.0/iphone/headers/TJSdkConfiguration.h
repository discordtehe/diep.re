// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJSDKCONFIGURATION_H
#define TJSDKCONFIGURATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class TJBackoff;

@interface TJSdkConfiguration : NSObject

@property (retain, nonatomic) NSArray *usageTrackingExclude; // ivar: _usageTrackingExclude
@property (nonatomic) BOOL shouldEnableUsageTracking; // ivar: _shouldEnableUsageTracking
@property (nonatomic) BOOL shouldEnableMMExternalCache; // ivar: _shouldEnableMMExternalCache
@property (nonatomic) int requestContentRetryTimeout; // ivar: _requestContentRetryTimeout
@property (retain, nonatomic) TJBackoff *requestContentRetryBackoff; // ivar: _requestContentRetryBackoff
@property (retain, nonatomic) NSDictionary *sourceFromBuildConfig; // ivar: _sourceFromBuildConfig
@property (retain, nonatomic) NSDictionary *sourceFromServerFinal; // ivar: _sourceFromServerFinal
@property (retain, nonatomic) NSMutableDictionary *sourceFromAppRuntime; // ivar: _sourceFromAppRuntime
@property (retain, nonatomic) NSDictionary *sourceFromConnectFlags; // ivar: _sourceFromConnectFlags
@property (retain, nonatomic) NSDictionary *sourceFromServerDefault; // ivar: _sourceFromServerDefault
@property (nonatomic) NSUInteger cachePolicy; // ivar: _cachePolicy


-(id)init;
-(void)loadSourceFromBuildConfig:(id)arg0 ;
-(void)loadConfiguration;
-(void)applyConfiguration;
-(void)updateConfigurations:(id)arg0 ;
-(void)setFactoryConfiguration;
-(void)setConfigurationFromDictionary:(id)arg0 ;
+(id)sharedInstance;
+(void)loadServerProvidedConfiguration;
+(void)updateServerProvidedConfiguration:(id)arg0 ;
+(void)setConnectFlags:(id)arg0 ;
+(void)setByAppWithObject:(id)arg0 forKey:(id)arg1 ;
+(id)newRequestContentRetryBackoff;
+(BOOL)isMMExternalCacheEnabled;
+(NSUInteger)getCachePolicy;


@end


#endif