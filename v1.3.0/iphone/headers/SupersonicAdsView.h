// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SUPERSONICADSVIEW_H
#define SUPERSONICADSVIEW_H

@class SSAPresentationManager;

#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class ISAbstractView;
@protocol UIGestureRecognizerDelegate;
@protocol UIScrollViewDelegate;
@protocol SKStoreProductViewControllerDelegate;
@protocol SSWVWebViewDelegate;
@protocol SSWVWebViewP;

@interface SupersonicAdsView : ISAbstractView <UIGestureRecognizerDelegate, UIScrollViewDelegate, SKStoreProductViewControllerDelegate, SSWVWebViewDelegate>

 {
    UIView *secondaryViewContainer;
    UIActivityIndicatorView *secondarySpinner;
    NSTimer *closeSecondaryTimer;
}


@property (retain, nonatomic) SSAPresentationManager *presentationManager; // ivar: _presentationManager
@property (retain, nonatomic) UITapGestureRecognizer *tap; // ivar: _tap
@property (weak, nonatomic) UIWindow *applicationKeyWindow; // ivar: _applicationKeyWindow
@property (retain, nonatomic) NSObject<SSWVWebViewP> *ssaSecondWebView; // ivar: _ssaSecondWebView
@property (retain, nonatomic) UIActivityIndicatorView *activityIndicator; // ivar: _activityIndicator
@property (retain, nonatomic) NSTimer *forceCloseTimer; // ivar: _forceCloseTimer
@property (nonatomic) BOOL isAnimating; // ivar: _isAnimating
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(BOOL)isPresented;
-(id)init;
-(void)dealloc;
-(void)VideoExitFullScreen:(id)arg0 ;
-(void)VideoEnterFullScreen:(id)arg0 ;
-(void)hideIfWKWebView:(BOOL)arg0 ;
-(void)prepareViewForPresentation;
-(void)animateView;
-(void)show:(NSUInteger)arg0 withView:(id)arg1 ;
-(void)show:(NSUInteger)arg0 ;
-(void)hideSuperSonicAdsViewWithCompletionHandler:(id)arg0 ;
-(void)openSecondaryWebviewWithUrl:(id)arg0 controlsFrames:(id)arg1 isHidden:(BOOL)arg2 completion:(id)arg3 ;
-(void)resizeSecondaryWebViewWithCompletion:(id)arg0 ;
-(void)loadSecondaryWebviewWithUrl:(id)arg0 ;
-(BOOL)hasSecondaryView;
-(void)handleSecondaryWebViewCallbackWithAction:(id)arg0 ;
-(void)moveSecondaryToFrontAndSendCloseMessage;
-(void)animateSecondaryClose:(id)arg0 ;
-(void)makeWebViewGoBack;
-(void)makeWebViewGoForward;
-(void)refreshSecondaryWebView;
-(void)webviewTapped:(id)arg0 ;
-(void)closeWebviewWithForce;
-(id)createCloseButtonWithFrame:(struct CGRect )arg0 imageName:(id)arg1 ;
-(id)createSeconderyWebviewWithFrame:(struct CGRect )arg0 ;
-(id)createSeconderyViewContainerWithFrame:(struct CGRect )arg0 makeHidden:(BOOL)arg1 ;
-(id)determineControlFramesFromButtonsData:(id)arg0 relativeToFrame:(struct CGRect )arg1 ;
-(BOOL)gestureRecognizer:(id)arg0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg1 ;
-(void)loadSuccessfully:(id)arg0 ;
-(void)failedToLoadWithError:(id)arg0 webView:(id)arg1 ;
-(BOOL)shouldLoadRequestForWebview:(id)arg0 request:(id)arg1 navigationType:(NSInteger)arg2 ;


@end


#endif