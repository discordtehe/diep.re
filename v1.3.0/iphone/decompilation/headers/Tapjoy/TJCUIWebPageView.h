// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCUIWEBPAGEVIEW_H
#define TJCUIWEBPAGEVIEW_H

@class UIViewController<TJCTopViewControllerProtocol>;

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class TJCWebView;
@class TJCVideoView;
@class TJCBasicWebView;
@class TJCLoadingView;
@class TJAdUnitJSBridge;
@class TJCViewHandler;
@class TJAdContentTracker;
@protocol UIWebViewDelegate;
@protocol UIAlertViewDelegate;
@protocol TJCWebViewDelegate;
@protocol TJCVideoAdDelegate;
@protocol TJCVideoAdDelegate;

@interface TJCUIWebPageView : UIView <UIWebViewDelegate, UIAlertViewDelegate, TJCWebViewDelegate, TJCVideoAdDelegate>



@property (retain, nonatomic) NSString *lastClickedURL; // ivar: _lastClickedURL
@property (retain, nonatomic) id *movieEnterObserver; // ivar: _movieEnterObserver
@property (retain, nonatomic) id *movieExitObserver; // ivar: _movieExitObserver
@property (retain, nonatomic) id *memoryWarningObserver; // ivar: _memoryWarningObserver
@property (nonatomic) BOOL webkitPreferred; // ivar: _webkitPreferred
@property (nonatomic) BOOL forceTopView; // ivar: _forceTopView
@property (retain, nonatomic) UIWindow *tjAdsWindow; // ivar: _tjAdsWindow
@property (retain, nonatomic) UIViewController<TJCTopViewControllerProtocol> *topViewController; // ivar: _topViewController
@property (nonatomic) NSInteger orientationToSet; // ivar: _orientationToSet
@property (retain, nonatomic) TJCWebView *mainWebView; // ivar: _mainWebView
@property (retain, nonatomic) TJCVideoView *videoView; // ivar: _videoView
@property (retain, nonatomic) TJCBasicWebView *backgroundView; // ivar: _backgroundView
@property (retain, nonatomic) TJCLoadingView *loadingView; // ivar: _loadingView
@property (nonatomic) BOOL isViewVisible; // ivar: _isViewVisible
@property (nonatomic) BOOL isAlertViewVisible; // ivar: _isAlertViewVisible
@property (retain, nonatomic) UIButton *backButton; // ivar: _backButton
@property (weak, nonatomic) id *delegate; // ivar: _delegate
@property (retain, nonatomic) TJAdUnitJSBridge *jsBridge; // ivar: _jsBridge
@property (retain, nonatomic) TJCViewHandler *viewHandler; // ivar: _viewHandler
@property (nonatomic) BOOL allowRedirect; // ivar: _allowRedirect
@property (nonatomic) BOOL transparentWebView; // ivar: _transparentWebView
@property (nonatomic) BOOL waitingForDismiss; // ivar: _waitingForDismiss
@property (nonatomic) BOOL customCloseBehavior; // ivar: _customCloseBehavior
@property (nonatomic) BOOL viewClosing; // ivar: _viewClosing
@property (nonatomic) BOOL shouldShowGenericErrorAlert; // ivar: _shouldShowGenericErrorAlert
@property (weak, nonatomic) NSObject<TJCVideoAdDelegate> *webViewVideoDelegate; // ivar: _webViewVideoDelegate
@property (copy, nonatomic) id *complete; // ivar: _complete
@property (nonatomic) BOOL isOrientationLocked; // ivar: _isOrientationLocked
@property (nonatomic) NSInteger lockedOrientation; // ivar: _lockedOrientation
@property (nonatomic) NSInteger lastInterfaceOrientation; // ivar: _lastInterfaceOrientation
@property (copy, nonatomic) id *contentReady; // ivar: _contentReady
@property (nonatomic) BOOL isWebViewLoaded; // ivar: _isWebViewLoaded
@property (nonatomic) BOOL isViewContentLoaded; // ivar: _isViewContentLoaded
@property (nonatomic) BOOL isPrerendered; // ivar: _isPrerendered
@property (nonatomic) BOOL isDisplayed; // ivar: _isDisplayed
@property (copy, nonatomic) NSURL *creativeURL; // ivar: _creativeURL
@property (copy, nonatomic) NSString *htmlString; // ivar: _htmlString
@property (retain, nonatomic) TJAdContentTracker *adContentTracker; // ivar: _adContentTracker
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 placement:(id)arg1 ;
-(void)layoutSubviews;
-(void)addBackButton;
-(void)animateCloseButton;
-(void)positionBackButton;
-(void)initHelperWithFrame:(struct CGRect )arg0 ;
-(void)disableCommonViewElements;
-(void)refreshWithFrame:(struct CGRect )arg0 ;
-(void)refreshViewContentsWithFrame:(struct CGRect )arg0 ;
-(void)loadViewWithHTMLString:(id)arg0 ;
-(void)loadViewWithHTMLString:(id)arg0 creativeURL:(id)arg1 ;
-(void)display;
-(void)presentUnit:(BOOL)arg0 isTransparent:(BOOL)arg1 withCustomCloseBehavior:(BOOL)arg2 ;
-(void)setupVideoPlayer:(id)arg0 delegate:(id)arg1 ;
-(void)playVideo;
-(void)pauseVideo;
-(void)clearVideo;
-(void)muteVideo:(BOOL)arg0 ;
-(BOOL)getVideoMuteStatus;
-(void)customCloseCheck;
-(void)backButtonTouched:(id)arg0 ;
-(void)forceClose;
-(void)handleClose:(BOOL)arg0 ;
-(void)dismiss;
-(void)giveBackNotification;
-(void)setViewToTransparent:(BOOL)arg0 ;
-(void)clearWindow;
-(void)clearWebViewContents;
-(void)addSubview:(id)arg0 ;
-(void)removeAllSubviews;
-(void)handleOpenURLRequest:(id)arg0 ;
-(void)loadURLRequest:(id)arg0 withTimeOutInterval:(int)arg1 ;
-(void)startAdContentTracking:(id)arg0 dimensions:(id)arg1 values:(id)arg2 ;
-(void)endAdContentTracking:(id)arg0 dimensions:(id)arg1 values:(id)arg2 ;
-(void)sendAdContentTracking:(id)arg0 dimensions:(id)arg1 values:(id)arg2 ;
-(void)dealloc;
-(void)alertView:(id)arg0 clickedButtonAtIndex:(NSInteger)arg1 ;
-(id)connection:(id)arg0 willCacheResponse:(id)arg1 ;
-(BOOL)shouldStartDecidePolicy:(id)arg0 navigationType:(NSInteger)arg1 ;
-(void)didStartNavigation;
-(void)finishLoadOrNavigation;
-(void)failLoadOrNavigationWithError:(id)arg0 ;
-(void)videoAdBegan;
-(void)videoAdCompleted;
-(void)videoAdError:(id)arg0 ;
-(id)webViewController;
-(void)showURLFullScreen:(id)arg0 sourceView:(id)arg1 ;
-(void)setOrientation:(NSInteger)arg0 ;
-(void)setRequestedOrientation:(NSInteger)arg0 ;
-(void)unsetOrientation;
-(void)newOrientationChanged:(id)arg0 ;
-(void)rotateToOrientationAngle:(CGFloat)arg0 ;
-(CGFloat)angleFromOrientation:(NSInteger)arg0 ;
-(void)preloadAdUnit:(id)arg0 creativeURL:(id)arg1 completion:(id)arg2 ;
-(void)fireContentReady;
-(void)setupAndDisplay:(id)arg0 placement:(id)arg1 ;


@end


#endif