// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADFULLSCREENADVIEWCONTROLLER_H
#define GADFULLSCREENADVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class GADEventContext;
@class GADObserverCollection;
@class GADCloseButton;
@protocol GADPresenting;
@protocol GADMonitorOwner;

@interface GADFullScreenAdViewController : UIViewController <GADPresenting, GADMonitorOwner>

 {
    BOOL _viewWasConfigured;
    BOOL _viewHasAppearedAtLeastOnce;
    BOOL _relinquishScreenCalled;
    BOOL _webViewProcessDidTerminate;
    UIView *_adView;
    NSMutableArray *_monitors;
    GADEventContext *_context;
    GADObserverCollection *_observers;
}


@property (readonly, nonatomic) GADCloseButton *closeButton; // ivar: _closeButton
@property (nonatomic) NSUInteger supportedInterfaceOrientations; // ivar: _supportedInterfaceOrientations
@property (nonatomic) NSUInteger adOrientations; // ivar: _adOrientations
@property (nonatomic) NSInteger forcedAdOrientation; // ivar: _forcedAdOrientation
@property (nonatomic) CGFloat orientationUpdateAnimationDuration; // ivar: _orientationUpdateAnimationDuration
@property (nonatomic) BOOL adOrientationsOverridesLockedOrientation; // ivar: _adOrientationsOverridesLockedOrientation
@property (readonly, nonatomic) BOOL presented; // ivar: _presented
@property (nonatomic) CGFloat maxBackgroundTimeIntervalWithoutDismissing; // ivar: _maxBackgroundTimeIntervalWithoutDismissing
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context;


-(id)initWithView:(id)arg0 context:(id)arg1 ;
-(id)initWithCoder:(id)arg0 ;
-(id)initWithNibName:(id)arg0 bundle:(id)arg1 ;
-(void)dealloc;
-(BOOL)prefersStatusBarHidden;
-(BOOL)shouldAutorotate;
-(void)viewDidLoad;
-(void)configureView;
-(BOOL)contentFitsInSize:(struct CGSize )arg0 ;
-(void)viewWillTransitionToSize:(struct CGSize )arg0 withTransitionCoordinator:(id)arg1 ;
-(void)viewWillAppear:(BOOL)arg0 ;
-(void)viewDidDisappear:(BOOL)arg0 ;
-(void)viewWillLayoutSubviews;
-(void)addMonitor:(id)arg0 ;
-(void)positionTestAdLabel;
-(void)handleCloseButtonPressed;
-(void)didRotateFromInterfaceOrientation:(NSInteger)arg0 ;
-(void)viewChangedToOrientation:(NSInteger)arg0 ;
-(BOOL)canPresent;
-(BOOL)shouldDismissOnApplicationEnteringForeground;
-(void)presentFromViewController:(id)arg0 completion:(id)arg1 ;
-(void)relinquishScreenWithCompletion:(id)arg0 ;


@end


#endif