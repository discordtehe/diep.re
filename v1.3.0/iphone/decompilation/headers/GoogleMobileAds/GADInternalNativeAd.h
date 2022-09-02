// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADINTERNALNATIVEAD_H
#define GADINTERNALNATIVEAD_H

@protocol OS_dispatch_queue;

#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADAd;
@class GADObserverCollection;
@class GADOverlayView;
@class GADNativeAssetViewTracker;
@class GADNativeAdContext;
@class GADNativeAdFeatures;
@class GADNativeAdImage;

@interface GADInternalNativeAd : GADAd {
    NSDictionary *_assets;
    GADObserverCollection *_clickConfirmingViewObservers;
    NSObject<OS_dispatch_queue> *_concurrentQueue;
    uint8_t _viewAwareAPIUsed;
    uint8_t _customMuteThisAdRequested;
    uint8_t _customOnePointFiveClickImplementedByPublisher;
    BOOL _clickConfirmationRequired;
    CGFloat _unconfirmedClickTimestamp;
    NSString *_unconfirmedClickIdentifier;
    uint8_t _customClickGestureEnabledByPublisher;
}


@property (readonly, nonatomic) Class adConfigurationAdClass; // ivar: _adConfigurationAdClass
@property (retain, nonatomic) Class publicAdClass; // ivar: _publicAdClass
@property (retain, nonatomic) GADOverlayView *overlayView; // ivar: _overlayView
@property (retain, nonatomic) GADNativeAssetViewTracker *assetViewTracker; // ivar: _assetViewTracker
@property (retain, nonatomic) GADNativeAdContext *nativeAdContext; // ivar: _nativeAdContext
@property (readonly, nonatomic) GADNativeAdFeatures *nativeAdFeatures; // ivar: _nativeAdFeatures
@property (nonatomic) NSInteger preferredAdChoicesPosition; // ivar: _preferredAdChoicesPosition
@property (copy, nonatomic) NSString *customTemplateID; // ivar: _customTemplateID
@property (retain, nonatomic) GADNativeAdImage *adChoicesIcon; // ivar: _adChoicesIcon
@property (nonatomic) NSInteger mediaType; // ivar: _mediaType
@property (weak, nonatomic) UIView *clickConfirmingView; // ivar: _clickConfirmingView
@property (nonatomic) BOOL viewAwareAPIUsed;
@property (nonatomic) BOOL customMuteThisAdRequested;
@property (nonatomic) BOOL customOnePointFiveClickImplementedByPublisher;
@property (readonly, nonatomic, getter=isCustomOnePointFiveClickEnabled) BOOL customOnePointFiveClickEnabled;
@property (readonly, nonatomic) BOOL customMuteThisAdAvailable; // ivar: _customMuteThisAdAvailable
@property (nonatomic) BOOL customClickGestureEnabledByPublisher;
@property (readonly, nonatomic, getter=isCustomClickGestureEnabled) BOOL customClickGestureEnabled;
@property (nonatomic) BOOL clickConfirmationRequired;
@property (nonatomic) CGFloat unconfirmedClickTimestamp;
@property (copy, nonatomic) NSString *unconfirmedClickIdentifier;


-(id)initWithContext:(id)arg0 metadata:(id)arg1 adClass:(Class)arg2 nativeAdFeatures:(id)arg3 ;
-(void)setAssets:(id)arg0 ;
-(id)initWithContext:(id)arg0 metadata:(id)arg1 ;
-(id)assetForKey:(id)arg0 ;
-(void)registerClickConfirmingView:(id)arg0 ;
-(void)unregisterClickConfirmingView;
-(void)handleAssociatedNativeAd:(id)arg0 ;
-(void)resetUnconfirmedClick;
-(CGFloat)confirmationClickTimeInterval;
+(Class)adClassFromSingleNativeAdConfiguration:(struct NSDictionary *)arg0 ;


@end


#endif