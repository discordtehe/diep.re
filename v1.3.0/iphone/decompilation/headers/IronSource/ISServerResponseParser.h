// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISSERVERRESPONSEPARSER_H
#define ISSERVERRESPONSEPARSER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ISProductSettings;
@class ISEventsSettings;
@class ISLoggersSettings;

@interface ISServerResponseParser : NSObject

@property (retain, nonatomic) NSArray *rewardedVideoProvidersConfig; // ivar: _rewardedVideoProvidersConfig
@property (retain, nonatomic) NSArray *interstitialProvidersConfig; // ivar: _interstitialProvidersConfig
@property (retain, nonatomic) NSArray *offerwallProvidersConfig; // ivar: _offerwallProvidersConfig
@property (retain, nonatomic) NSArray *bannerProvidersConfig; // ivar: _bannerProvidersConfig
@property (retain, nonatomic) ISProductSettings *rewardedVideoProductSettings; // ivar: _rewardedVideoProductSettings
@property (retain, nonatomic) ISProductSettings *interstitialProductSettings; // ivar: _interstitialProductSettings
@property (retain, nonatomic) ISProductSettings *offerwallProductSettings; // ivar: _offerwallProductSettings
@property (retain, nonatomic) ISProductSettings *bannerProductSettings; // ivar: _bannerProductSettings
@property (retain, nonatomic) ISEventsSettings *rewardedVideoEvents; // ivar: _rewardedVideoEvents
@property (retain, nonatomic) ISEventsSettings *interstitialEvents; // ivar: _interstitialEvents
@property (retain, nonatomic) ISEventsSettings *offerwallEvents; // ivar: _offerwallEvents
@property (retain, nonatomic) ISEventsSettings *bannerEvents; // ivar: _bannerEvents
@property (retain, nonatomic) ISLoggersSettings *loggers; // ivar: _loggers
@property (retain, nonatomic) NSString *segmentName; // ivar: _segmentName
@property (retain, nonatomic) NSString *segmentId; // ivar: _segmentId
@property (retain, nonatomic) NSDictionary *customSegmentParams; // ivar: _customSegmentParams
@property (nonatomic) BOOL showIntegrationHelper; // ivar: _showIntegrationHelper


-(void)parseObject:(id)arg0 ;
-(void)parseConfiguration:(id)arg0 ;
-(void)parseProvidersOrder:(id)arg0 ;
-(id)parseAdUnitProvidersOrder:(id)arg0 ;
-(void)parseProvidersSettings:(id)arg0 ;
-(void)parseProvidersSettings:(id)arg0 forProviders:(id)arg1 perAdUnit:(id)arg2 ;
-(CGFloat)getTimeOutForAdUnit:(id)arg0 ;
-(void)fillProviderData:(id)arg0 withSettings:(id)arg1 forAdUnit:(id)arg2 ;
-(void)combineSubProvidersData:(id)arg0 withParent:(id)arg1 adUnit:(id)arg2 ;
-(id)parseProductSettings:(id)arg0 forProduct:(id)arg1 sharedSettings:(id)arg2 ;
-(id)parseLoggersSettings:(id)arg0 ;
-(id)parseEventsSettings:(id)arg0 sharedSettings:(id)arg1 ;
-(id)getConfigForProvider:(id)arg0 withKey:(id)arg1 ;
-(BOOL)doesDictionary:(id)arg0 containsObjectForKey:(id)arg1 ;
+(id)sharedInstance;


@end


#endif