// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPADCONFIGURATION_H
#define MPADCONFIGURATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPRewardedVideoReward;
@class MPImpressionData;

@interface MPAdConfiguration : NSObject

@property (copy, nonatomic) NSString *adResponseHTMLString; // ivar: _adResponseHTMLString
@property (retain, nonatomic) NSArray *availableRewards; // ivar: _availableRewards
@property (nonatomic) NSInteger clickthroughExperimentBrowserAgent; // ivar: _clickthroughExperimentBrowserAgent
@property (copy, nonatomic) NSArray *afterLoadUrlsWithMacros; // ivar: _afterLoadUrlsWithMacros
@property (copy, nonatomic) NSArray *afterLoadSuccessUrlsWithMacros; // ivar: _afterLoadSuccessUrlsWithMacros
@property (copy, nonatomic) NSArray *afterLoadFailureUrlsWithMacros; // ivar: _afterLoadFailureUrlsWithMacros
@property (nonatomic) NSUInteger adType; // ivar: _adType
@property (nonatomic) BOOL adUnitWarmingUp; // ivar: _adUnitWarmingUp
@property (readonly, nonatomic) BOOL isMraidAd;
@property (copy, nonatomic) NSString *networkType; // ivar: _networkType
@property (nonatomic) BOOL isEndOfWaterfall; // ivar: _isEndOfWaterfall
@property (nonatomic) CGSize preferredSize; // ivar: _preferredSize
@property (retain, nonatomic) NSURL *clickTrackingURL; // ivar: _clickTrackingURL
@property (retain, nonatomic) NSArray *impressionTrackingURLs; // ivar: _impressionTrackingURLs
@property (retain, nonatomic) NSURL *nextURL; // ivar: _nextURL
@property (retain, nonatomic) NSURL *beforeLoadURL; // ivar: _beforeLoadURL
@property (nonatomic) CGFloat refreshInterval; // ivar: _refreshInterval
@property (nonatomic) CGFloat adTimeoutInterval; // ivar: _adTimeoutInterval
@property (copy, nonatomic) NSData *adResponseData; // ivar: _adResponseData
@property (retain, nonatomic) NSDictionary *nativeSDKParameters; // ivar: _nativeSDKParameters
@property (nonatomic) Class customEventClass; // ivar: _customEventClass
@property (retain, nonatomic) NSDictionary *customEventClassData; // ivar: _customEventClassData
@property (nonatomic) NSUInteger orientationType; // ivar: _orientationType
@property (copy, nonatomic) NSString *dspCreativeId; // ivar: _dspCreativeId
@property (nonatomic) BOOL precacheRequired; // ivar: _precacheRequired
@property (nonatomic) BOOL isVastVideoPlayer; // ivar: _isVastVideoPlayer
@property (retain, nonatomic) NSDate *creationTimestamp; // ivar: _creationTimestamp
@property (copy, nonatomic) NSString *creativeId; // ivar: _creativeId
@property (copy, nonatomic) NSString *metadataAdType; // ivar: _metadataAdType
@property (nonatomic) NSInteger nativeVideoPlayVisiblePercent; // ivar: _nativeVideoPlayVisiblePercent
@property (nonatomic) NSInteger nativeVideoPauseVisiblePercent; // ivar: _nativeVideoPauseVisiblePercent
@property (nonatomic) CGFloat nativeImpressionMinVisiblePixels; // ivar: _nativeImpressionMinVisiblePixels
@property (nonatomic) NSInteger nativeImpressionMinVisiblePercent; // ivar: _nativeImpressionMinVisiblePercent
@property (nonatomic) CGFloat nativeImpressionMinVisibleTimeInterval; // ivar: _nativeImpressionMinVisibleTimeInterval
@property (nonatomic) CGFloat nativeVideoMaxBufferingTime; // ivar: _nativeVideoMaxBufferingTime
@property (retain, nonatomic) NSDictionary *nativeVideoTrackers; // ivar: _nativeVideoTrackers
@property (retain, nonatomic) MPRewardedVideoReward *selectedReward; // ivar: _selectedReward
@property (copy, nonatomic) NSString *rewardedVideoCompletionUrl; // ivar: _rewardedVideoCompletionUrl
@property (nonatomic) CGFloat rewardedPlayableDuration; // ivar: _rewardedPlayableDuration
@property (nonatomic) BOOL rewardedPlayableShouldRewardOnClick; // ivar: _rewardedPlayableShouldRewardOnClick
@property (copy, nonatomic) NSString *advancedBidPayload; // ivar: _advancedBidPayload
@property (retain, nonatomic) MPImpressionData *impressionData; // ivar: _impressionData
@property (copy, nonatomic) NSString *format; // ivar: _format
@property (nonatomic) CGFloat impressionMinVisibleTimeInSec; // ivar: _impressionMinVisibleTimeInSec
@property (nonatomic) CGFloat impressionMinVisiblePixels; // ivar: _impressionMinVisiblePixels
@property (nonatomic) BOOL visibleImpressionTrackingEnabled; // ivar: _visibleImpressionTrackingEnabled


-(id)initWithMetadata:(id)arg0 data:(id)arg1 adType:(NSUInteger)arg2 ;
-(Class)setUpCustomEventClassFromMetadata:(id)arg0 ;
-(id)customEventClassDataFromMetadata:(id)arg0 ;
-(BOOL)hasPreferredSize;
-(id)afterLoadUrlsWithLoadDuration:(CGFloat)arg0 loadResult:(NSUInteger)arg1 ;
-(id)concatenateBaseUrlArray:(id)arg0 withConditionalArray:(id)arg1 ;
-(id)networkTypeFromMetadata:(id)arg0 ;
-(id)URLFromMetadata:(id)arg0 forKey:(id)arg1 ;
-(id)URLsFromMetadata:(id)arg0 forKey:(id)arg1 ;
-(id)URLStringsFromMetadata:(id)arg0 forKey:(id)arg1 ;
-(id)dictionaryFromMetadata:(id)arg0 forKey:(id)arg1 ;
-(CGFloat)refreshIntervalFromMetadata:(id)arg0 ;
-(CGFloat)timeIntervalFromMetadata:(id)arg0 forKey:(id)arg1 ;
-(CGFloat)timeIntervalFromMsmetadata:(id)arg0 forKey:(id)arg1 ;
-(NSInteger)percentFromMetadata:(id)arg0 forKey:(id)arg1 ;
-(id)adAmountFromMetadata:(id)arg0 key:(id)arg1 ;
-(NSUInteger)orientationTypeFromMetadata:(id)arg0 ;
-(id)nativeVideoTrackersFromMetadata:(id)arg0 key:(id)arg1 ;
-(void)setVideoTrackers:(id)arg0 event:(id)arg1 urls:(id)arg2 ;
-(id)parseAvailableRewardsFromMetadata:(id)arg0 ;
-(NSInteger)clickthroughExperimentVariantFromMetadata:(id)arg0 forKey:(id)arg1 ;
-(id)impressionDataFromMetadata:(id)arg0 ;


@end


#endif