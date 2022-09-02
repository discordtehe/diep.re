// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADINSTREAMMEDIACONTENT_H
#define GADINSTREAMMEDIACONTENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class GADInternalNativeAd;
@class GADObserverCollection;
@class GADEventContext;
@class GADWebAdView;
@class GADNativeAdImage;
@protocol GADEventContextSource;
@protocol GADMediaContentDisplaying;
@protocol GADVideoControlling;

@interface GADInstreamMediaContent : NSObject <GADEventContextSource, GADMediaContentDisplaying>

 {
    *NSDictionary _adConfiguration;
    GADInternalNativeAd *_internalNativeAd;
    BOOL _loadExecuted;
    NSDictionary *_videoOptions;
    GADObserverCollection *_observers;
    NSMutableArray *_adViewMonitors;
    GADEventContext *_instreamContext;
    GADWebAdView *_adView;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context;
@property (readonly, nonatomic) UIView *mediaView;
@property (readonly, nonatomic) NSObject<GADVideoControlling> *videoController; // ivar: _videoController
@property (readonly, nonatomic) CGSize intrinsicContentSize; // ivar: _intrinsicContentSize
@property (readonly, nonatomic) CGFloat aspectRatio;
@property (retain, nonatomic) GADNativeAdImage *mainImage; // ivar: _mainImage


-(id)initWithInternalNativeAd:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 ;
-(void)loadWithCompletionHandler:(id)arg0 ;
-(void)performPreAdLoadActions;
-(void)performPostAdLoadActions;


@end


#endif