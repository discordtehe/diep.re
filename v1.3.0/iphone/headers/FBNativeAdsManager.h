// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEADSMANAGER_H
#define FBNATIVEADSMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBAdProvider;
@class FBAdTimer;
@class FBAdExtraHint;
@class FBNativeAd;
@protocol FBAdProviderDelegate;
@protocol FBNativeAdDelegate;
@protocol FBNativeAdsManagerDelegate;

@interface FBNativeAdsManager : NSObject <FBAdProviderDelegate, FBNativeAdDelegate>



@property (copy, nonatomic) NSString *placementID; // ivar: _placementID
@property (retain, nonatomic) FBAdProvider *adProvider; // ivar: _adProvider
@property (nonatomic) NSInteger refreshInterval; // ivar: _refreshInterval
@property (nonatomic, getter=isRefreshDisabled) BOOL refreshDisabled; // ivar: _refreshDisabled
@property (retain, nonatomic) FBAdTimer *refreshTimer; // ivar: _refreshTimer
@property (nonatomic) BOOL observingNotificaions; // ivar: _observingNotificaions
@property (nonatomic, getter=isValid) BOOL valid; // ivar: _valid
@property (nonatomic) NSUInteger version; // ivar: _version
@property (copy, nonatomic) NSArray *nativeAds; // ivar: _nativeAds
@property (retain, nonatomic) NSMutableSet *nativeAdsLoaded; // ivar: _nativeAdsLoaded
@property (nonatomic) NSUInteger numAdsRequested; // ivar: _numAdsRequested
@property (nonatomic) NSInteger nativeAdsFailedCount; // ivar: _nativeAdsFailedCount
@property (copy, nonatomic) NSArray *currentNativeAds; // ivar: _currentNativeAds
@property (nonatomic) NSUInteger currentNativeAdPos; // ivar: _currentNativeAdPos
@property (weak, nonatomic) NSObject<FBNativeAdsManagerDelegate> *delegate; // ivar: _delegate
@property (nonatomic) NSInteger mediaCachePolicy; // ivar: _mediaCachePolicy
@property (readonly, nonatomic) NSUInteger uniqueNativeAdCount;
@property (retain, nonatomic) FBAdExtraHint *extraHint; // ivar: _extraHint
@property (readonly, nonatomic) FBNativeAd *nextNativeAd;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithPlacementID:(id)arg0 forNumAdsRequested:(NSUInteger)arg1 ;
-(void)loadAds;
-(void)cancel;
-(void)dealloc;
-(void)disableAutoRefresh;
-(void)scheduleRefresh;
-(void)invalidateRefresh;
-(void)updateRefreshInterval:(NSInteger)arg0 ;
-(void)startObservingNotifications;
-(void)onApplicationBackgrounded;
-(void)onApplicationForegrounded;
-(void)stopObservingNotifications;
-(void)adsAllLoaded;
-(void)imagesAllCached:(id)arg0 ;
-(void)onAdRequestSuccess:(id)arg0 ;
-(void)onAdRequestError:(id)arg0 ;
-(void)nativeAdDidLoad:(id)arg0 ;
-(void)nativeAd:(id)arg0 didFailWithError:(id)arg1 ;
+(void)initialize;


@end


#endif