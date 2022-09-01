// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNATIVEADVIEWMONITOR_H
#define GADNATIVEADVIEWMONITOR_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADObserverCollection;
@class GADInternalNativeAd;
@class GADGestureRecognizer;
@class GADTouchGestureRecognizer;
@class GADDebugGestureMonitor;
@class GADViewVisibilityMonitor;
@protocol UIGestureRecognizerDelegate;
@protocol GADMediaContentDisplaying;

@interface GADNativeAdViewMonitor : NSObject <UIGestureRecognizerDelegate>

 {
    GADObserverCollection *_observers;
    GADInternalNativeAd *_internalNativeAd;
    UIView *_trackedView;
    UITapGestureRecognizer *_singleTap;
    GADGestureRecognizer *_touchGestureRecognizer;
    GADTouchGestureRecognizer *_touchEventGestureRecognizer;
    GADDebugGestureMonitor *_debugGestureMonitor;
    GADViewVisibilityMonitor *_viewVisibilityMonitor;
    NSString *_adUnitID;
    NSString *_debugDialogString;
    BOOL _handlesClicks;
    id<GADMediaContentDisplaying> *_mediaContent;
    BOOL _hasMediaContentObserver;
    NSString *_adChoicesAssetName;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithInternalNativeAd:(id)arg0 handlesClicks:(BOOL)arg1 mediaContent:(id)arg2 viewVisibilityMonitor:(id)arg3 adConfiguration:(struct NSDictionary *)arg4 ;
-(void)handleTrackedView:(id)arg0 ;
-(void)handleUntrackedView:(id)arg0 ;
-(void)handleCustomClickGesture:(id)arg0 ;
-(void)handleTap:(id)arg0 ;
-(void)handleMediaViewClick:(id)arg0 ;
-(BOOL)gestureRecognizer:(id)arg0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg1 ;


@end


#endif