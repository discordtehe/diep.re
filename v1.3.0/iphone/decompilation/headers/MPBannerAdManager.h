// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPBANNERADMANAGER_H
#define MPBANNERADMANAGER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPAdServerCommunicator;
@class MPBaseBannerAdapter;
@class MPAdConfiguration;
@class MPAdTargeting;
@class MPTimer;
@protocol MPAdServerCommunicatorDelegate;
@protocol MPBannerAdapterDelegate;
@protocol MPBannerAdManagerDelegate;

@interface MPBannerAdManager : NSObject <MPAdServerCommunicatorDelegate, MPBannerAdapterDelegate>



@property (retain, nonatomic) MPAdServerCommunicator *communicator; // ivar: _communicator
@property (retain, nonatomic) MPBaseBannerAdapter *onscreenAdapter; // ivar: _onscreenAdapter
@property (retain, nonatomic) MPBaseBannerAdapter *requestingAdapter; // ivar: _requestingAdapter
@property (retain, nonatomic) UIView *requestingAdapterAdContentView; // ivar: _requestingAdapterAdContentView
@property (retain, nonatomic) MPAdConfiguration *requestingConfiguration; // ivar: _requestingConfiguration
@property (retain, nonatomic) MPAdTargeting *targeting; // ivar: _targeting
@property (retain, nonatomic) NSMutableArray *remainingConfigurations; // ivar: _remainingConfigurations
@property (retain, nonatomic) MPTimer *refreshTimer; // ivar: _refreshTimer
@property (nonatomic) BOOL adActionInProgress; // ivar: _adActionInProgress
@property (nonatomic) BOOL automaticallyRefreshesContents; // ivar: _automaticallyRefreshesContents
@property (nonatomic) BOOL hasRequestedAtLeastOneAd; // ivar: _hasRequestedAtLeastOneAd
@property (nonatomic) NSInteger currentOrientation; // ivar: _currentOrientation
@property (nonatomic) CGFloat adapterLoadStartTimestamp; // ivar: _adapterLoadStartTimestamp
@property (weak, nonatomic) NSObject<MPBannerAdManagerDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) BOOL isMraidAd;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDelegate:(id)arg0 ;
-(void)dealloc;
-(BOOL)loading;
-(void)loadAdWithTargeting:(id)arg0 ;
-(void)forceRefreshAd;
-(void)applicationWillEnterForeground;
-(void)applicationDidEnterBackground;
-(void)pauseRefreshTimer;
-(void)resumeRefreshTimer;
-(void)stopAutomaticallyRefreshingContents;
-(void)startAutomaticallyRefreshingContents;
-(void)loadAdWithURL:(id)arg0 ;
-(void)rotateToOrientation:(NSInteger)arg0 ;
-(void)scheduleRefreshTimer;
-(BOOL)shouldScheduleTimerOnImpressionDisplay;
-(void)fetchAdWithConfiguration:(id)arg0 ;
-(void)communicatorDidReceiveAdConfigurations:(id)arg0 ;
-(void)communicatorDidFailWithError:(id)arg0 ;
-(void)didFailToLoadAdapterWithError:(id)arg0 ;
-(NSUInteger)adTypeForAdServerCommunicator:(id)arg0 ;
-(id)adUnitIDForAdServerCommunicator:(id)arg0 ;
-(id)banner;
-(id)bannerDelegate;
-(id)viewControllerForPresentingModalView;
-(int)allowedNativeAdsOrientation;
-(id)location;
-(void)presentRequestingAdapter;
-(void)adapter:(id)arg0 didFinishLoadingAd:(id)arg1 ;
-(void)adapter:(id)arg0 didFailToLoadAdWithError:(id)arg1 ;
-(void)adapterDidTrackImpressionForAd:(id)arg0 ;
-(void)userActionWillBeginForAdapter:(id)arg0 ;
-(void)userActionDidFinishForAdapter:(id)arg0 ;
-(void)userWillLeaveApplicationFromAdapter:(id)arg0 ;
-(void)adWillExpandForAdapter:(id)arg0 ;
-(void)adDidCollapseForAdapter:(id)arg0 ;


@end


#endif