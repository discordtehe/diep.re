// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNATIVECLICKCONFIRMINGVIEWMONITOR_H
#define GADNATIVECLICKCONFIRMINGVIEWMONITOR_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADObserverCollection;
@class GADInternalNativeAd;
@protocol UIGestureRecognizerDelegate;

@interface GADNativeClickConfirmingViewMonitor : NSObject <UIGestureRecognizerDelegate>

 {
    GADObserverCollection *_internalNativeAdObservers;
    UIView *_trackedView;
    GADInternalNativeAd *_internalNativeAd;
    UITapGestureRecognizer *_singleTapGestureRecognizer;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithInternalNativeAd:(id)arg0 ;
-(id)init;
-(void)handleTrackedView:(id)arg0 ;
-(void)handleUntrackedView:(id)arg0 ;
-(void)handleTap:(id)arg0 ;
-(BOOL)gestureRecognizer:(id)arg0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg1 ;


@end


#endif