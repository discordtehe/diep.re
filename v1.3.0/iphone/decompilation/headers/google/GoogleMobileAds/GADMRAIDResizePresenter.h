// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMRAIDRESIZEPRESENTER_H
#define GADMRAIDRESIZEPRESENTER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADObserverCollection;
@class GADEventContext;
@class GADCloseButton;
@class GADMRAIDResizeProperties;
@protocol GADPresenting;
@protocol GADMonitorOwner;

@interface GADMRAIDResizePresenter : NSObject <GADPresenting, GADMonitorOwner>

 {
    UIView *_contentView;
    UIView *_pivotView;
    UIView *_cropView;
    UIView *_referenceView;
    BOOL _relinquishCalled;
    GADObserverCollection *_observers;
    NSMutableArray *_monitors;
    GADEventContext *_context;
}


@property (readonly, nonatomic) GADCloseButton *closeButton; // ivar: _closeButton
@property (readonly, nonatomic) BOOL willDismissAfterOrientationChange; // ivar: _willDismissAfterOrientationChange
@property (retain, nonatomic) GADMRAIDResizeProperties *resizeProperties; // ivar: _resizeProperties
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context;


-(id)initWithContentView:(id)arg0 resizeProperties:(id)arg1 referenceView:(id)arg2 context:(id)arg3 ;
-(id)init;
-(void)closeButtonPressed:(id)arg0 ;
-(void)addMonitor:(id)arg0 ;
-(BOOL)canPresent;
-(BOOL)shouldDismissOnApplicationEnteringForeground;
-(void)presentFromViewController:(id)arg0 completion:(id)arg1 ;
-(void)relinquishScreenWithCompletion:(id)arg0 ;
-(struct CGRect )cropViewFrameForOrientation:(NSInteger)arg0 ;
-(void)composeTransparentInterstitialViewsForPresentation;
-(void)animateTransparentInterstitialPresentationWithCompletionHandler:(id)arg0 ;
-(struct CGRect )contentFrame;
-(void)repositionContentIfNeeded;
-(void)didChangeToOrientation:(NSInteger)arg0 ;
-(void)handleOrientationChangeEvent;


@end


#endif