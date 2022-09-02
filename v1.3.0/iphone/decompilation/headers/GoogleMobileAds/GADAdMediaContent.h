// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADMEDIACONTENT_H
#define GADADMEDIACONTENT_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class GADEventContext;
@class GADWebAdView;
@class GADObserverCollection;
@class GADInternalNativeAd;
@class GADViewVisibilityMonitor;
@class GADNativeAdImage;
@protocol GADEventContextSource;
@protocol GADMediaContentDisplaying;
@protocol GADVideoControlling;

@interface GADAdMediaContent : NSObject <GADEventContextSource, GADMediaContentDisplaying>

 {
    *NSDictionary _adConfiguration;
    NSDictionary *_videoConfiguration;
    uint8_t _mainImageAspectRatio;
    NSDictionary *_videoOptions;
    atomic_flag _completionHandlerExecuted;
    atomic_flag _loadVideoExecuted;
    GADEventContext *_context;
    GADWebAdView *_adView;
    BOOL _mediaLoadedSuccessfully;
    GADObserverCollection *_observers;
    NSMutableArray *_adViewMonitors;
    GADInternalNativeAd *_internalNativeAd;
    GADViewVisibilityMonitor *_viewVisibilityMonitor;
    id *_completionHandler;
    CGSize _intrinsicVideoSize;
    UIImageView *_mainImageView;
    NSObject<OS_dispatch_queue> *_lockQueue;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context;
@property (readonly, nonatomic) UIView *mediaView;
@property (readonly, nonatomic) NSObject<GADVideoControlling> *videoController; // ivar: _videoController
@property (readonly, nonatomic) CGSize intrinsicContentSize;
@property (readonly, nonatomic) CGFloat aspectRatio;
@property (retain, nonatomic) GADNativeAdImage *mainImage; // ivar: _mainImage


-(id)initWithInternalNativeAd:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 mainImage:(id)arg2 ;
-(void)loadVideoWithCompletionHandler:(id)arg0 ;
-(void)createAndLoadAdViewWithCompletionHandler:(id)arg0 ;
-(void)renderVideoDictionary;
-(void)finishLoadingWithError:(id)arg0 ;
-(void)preloadActionsWithCompletionBlock:(id)arg0 ;
-(void)registerOverlayViewObservers:(id)arg0 ;
-(void)performPostLoadActions;


@end


#endif