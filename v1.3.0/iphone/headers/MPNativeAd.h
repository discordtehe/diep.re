// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPNATIVEAD_H
#define MPNATIVEAD_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPNativeView;
@class MPAdConfiguration;
@protocol MPNativeAdAdapterDelegate;
@protocol MPNativeViewDelegate;
@protocol MPMoPubAd;
@protocol MPNativeAdRenderer;
@protocol MPNativeAdAdapter;
@protocol MPNativeAdRenderer;
@protocol MPNativeAdAdapter;
@protocol MPNativeAdDelegate;

@interface MPNativeAd : NSObject <MPNativeAdAdapterDelegate, MPNativeViewDelegate, MPMoPubAd>



@property (readonly, nonatomic) NSDate *creationDate;
@property (retain, nonatomic) MPNativeView *associatedView;
@property (retain, nonatomic) NSObject<MPNativeAdRenderer> *renderer;
@property (retain, nonatomic) MPAdConfiguration *configuration;
@property (retain, nonatomic) NSString *adUnitID;
@property (readonly, nonatomic) NSMutableSet *clickTrackerURLs;
@property (readonly, nonatomic) NSMutableSet *impressionTrackerURLs;
@property (readonly, nonatomic) NSObject<MPNativeAdAdapter> *adAdapter;
@property (retain, nonatomic) NSObject<MPNativeAdRenderer> *renderer; // ivar: _renderer
@property (retain, nonatomic) MPAdConfiguration *configuration; // ivar: _configuration
@property (retain, nonatomic) NSString *adUnitID; // ivar: _adUnitID
@property (retain, nonatomic) NSDate *creationDate; // ivar: _creationDate
@property (retain, nonatomic) NSMutableSet *clickTrackerURLs; // ivar: _clickTrackerURLs
@property (retain, nonatomic) NSMutableSet *impressionTrackerURLs; // ivar: _impressionTrackerURLs
@property (readonly, nonatomic) NSObject<MPNativeAdAdapter> *adAdapter; // ivar: _adAdapter
@property (nonatomic) BOOL hasTrackedImpression; // ivar: _hasTrackedImpression
@property (nonatomic) BOOL hasTrackedClick; // ivar: _hasTrackedClick
@property (copy, nonatomic) NSString *adIdentifier; // ivar: _adIdentifier
@property (retain, nonatomic) MPNativeView *associatedView; // ivar: _associatedView
@property (nonatomic) BOOL hasAttachedToView; // ivar: _hasAttachedToView
@property (weak, nonatomic) NSObject<MPNativeAdDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) NSDictionary *properties;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)updateAdViewSize:(struct CGSize )arg0 ;
-(id)retrieveAdViewForSizeCalculationWithError:(*id)arg0 ;
-(id)initWithAdAdapter:(id)arg0 ;
-(id)retrieveAdViewWithError:(*id)arg0 ;
-(void)trackImpression;
-(void)trackClick;
-(void)trackMetricsForURLs:(id)arg0 ;
-(void)trackMetricForURL:(id)arg0 ;
-(void)willAttachToView:(id)arg0 withAdContentViews:(id)arg1 ;
-(BOOL)isThirdPartyHandlingClicks;
-(void)displayAdContent;
-(void)adViewTapped;
-(void)nativeViewWillMoveToSuperview:(id)arg0 ;
-(id)viewControllerForPresentingModalView;
-(void)nativeAdWillLogImpression:(id)arg0 ;
-(void)nativeAdDidClick:(id)arg0 ;
-(void)nativeAdWillPresentModalForAdapter:(id)arg0 ;
-(void)nativeAdDidDismissModalForAdapter:(id)arg0 ;
-(void)nativeAdWillLeaveApplicationFromAdapter:(id)arg0 ;


@end


#endif