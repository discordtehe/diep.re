// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef WEBPAGEVIEWER_H
#define WEBPAGEVIEWER_H


#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol WKNavigationDelegate;
@protocol WKUIDelegate;
@protocol SKStoreProductViewControllerDelegate;

@interface WebpageViewer : NSObject <WKNavigationDelegate, WKUIDelegate, SKStoreProductViewControllerDelegate>

 {
    WKWebView *_webView;
    UIView *_loadingView;
    UIViewController *_controller;
    UIView *_blackWebViewContainer;
    BOOL _detatching;
    BOOL _isLoadComplete;
    BOOL _isLoadFailed;
    BOOL _isLoadingViewMovingIn;
    CGPoint _finalViewNodePosition;
    UILabel *_connectionFailedLabel;
    UILabel *_loadingLabel;
    UIActivityIndicatorView *_activityIndicator;
    NSURL *_urlToNavigateTo;
    UIButton *_backButton;
    NSString *_url;
    NSUInteger _webpageID;
}


@property (readonly, nonatomic) BOOL isAttached; // ivar: _isAttached
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithId:(NSUInteger)arg0 ;
-(void)swapWaitForView;
-(void)setup;
-(void)scaleInFinished;
-(void)prepareUI;
-(void)dealloc;
-(void)showWithSource:(id)arg0 andBaseURL:(id)arg1 ;
-(void)showWithURL:(id)arg0 ;
-(void)showLoadingView;
-(BOOL)hideLoadingView;
-(void)hideComplete;
-(void)hide;
-(void)downloadFailed;
-(void)productViewControllerDidFinish:(id)arg0 ;
-(void)webView:(id)arg0 didStartProvisionalNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFailNavigation:(id)arg1 withError:(id)arg2 ;
-(void)webView:(id)arg0 didFailProvisionalNavigation:(id)arg1 withError:(id)arg2 ;
-(void)webView:(id)arg0 didFinishNavigation:(id)arg1 ;
-(void)webView:(id)arg0 decidePolicyForNavigationAction:(id)arg1 decisionHandler:(id)arg2 ;


@end


#endif