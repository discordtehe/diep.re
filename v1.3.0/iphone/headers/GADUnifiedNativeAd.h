// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADUNIFIEDNATIVEAD_H
#define GADUNIFIEDNATIVEAD_H

@protocol GADUnifiedNativeAdUnconfirmedClickDelegate;

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADObserverCollection;
@class GADInternalNativeAd;
@class GADNativeAdImage;
@class GADMediaContent;
@class GADVideoController;
@protocol GADUnifiedNativeAdDelegate;

@interface GADUnifiedNativeAd : NSObject {
    GADObserverCollection *_adObservers;
    BOOL _mediaContentStatusReported;
    BOOL _mediaContentRendered;
    UIView *_adChoicesContentView;
    BOOL _adMutedReported;
    BOOL _customClickGestureEnabledByPublisher;
    id<GADUnifiedNativeAdUnconfirmedClickDelegate> *_unconfirmedClickDelegate;
    BOOL _customClickGestureEnabled;
}


@property (readonly, nonatomic) GADInternalNativeAd *internalNativeAd; // ivar: _internalNativeAd
@property (readonly, nonatomic) UIView *adChoicesContentView;
@property (readonly, nonatomic) GADNativeAdImage *adChoicesIcon;
@property (readonly, copy, nonatomic) NSString *headline;
@property (readonly, copy, nonatomic) NSString *callToAction;
@property (readonly, nonatomic) GADNativeAdImage *icon;
@property (readonly, copy, nonatomic) NSString *body;
@property (readonly, nonatomic) NSArray *images;
@property (readonly, copy, nonatomic) NSDecimalNumber *starRating;
@property (readonly, copy, nonatomic) NSString *store;
@property (readonly, copy, nonatomic) NSString *price;
@property (readonly, copy, nonatomic) NSString *advertiser;
@property (weak, nonatomic) NSObject<GADUnifiedNativeAdDelegate> *delegate; // ivar: _delegate
@property (weak, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (readonly, copy, nonatomic) NSDictionary *extraAssets;
@property (readonly, copy, nonatomic) NSString *adNetworkClassName; // ivar: _adNetworkClassName
@property (readonly, nonatomic, getter=isCustomMuteThisAdAvailable) BOOL customMuteThisAdAvailable;
@property (readonly, nonatomic) NSArray *muteThisAdReasons;
@property (readonly, nonatomic) GADMediaContent *mediaContent; // ivar: _mediaContent
@property (readonly, nonatomic) GADVideoController *videoController; // ivar: _videoController


-(id)initWithInternalNativeAd:(id)arg0 ;
-(id)init;
-(void)dealloc;
-(void)reportIsMediaContentRendered:(BOOL)arg0 ;
-(id)internalMediaContent;
-(void)postDidReceiveUnapprovedClickNotificationWithUserInfo:(id)arg0 ;
-(void)postDidMakeImpressionNotificationWithUserInfo:(id)arg0 ;
-(void)performClickWithData:(id)arg0 ;
-(void)reportTouchEventWithData:(id)arg0 ;
-(BOOL)recordImpressionWithData:(id)arg0 ;
-(void)muteThisAdWithReason:(id)arg0 ;
-(void)registerAdView:(id)arg0 clickableAssetViews:(id)arg1 nonclickableAssetViews:(id)arg2 ;
-(void)updateAdChoicesView:(id)arg0 ;
-(void)updateMediaView:(id)arg0 ;
-(void)unregisterAdView;
-(void)adIsMuted;
-(void)didCancelUnconfirmedClick;
-(void)registerClickConfirmingView:(id)arg0 ;
-(void)cancelUnconfirmedClick;
-(id)unconfirmedClickDelegate;
-(void)setUnconfirmedClickDelegate:(id)arg0 ;
-(void)enableCustomClickGestures;
-(void)recordCustomClickGesture;
-(BOOL)isCustomClickGestureEnabled;


@end


#endif