// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADWKWEBVIEWBROWSERCONTROLLER_H
#define FBADWKWEBVIEWBROWSERCONTROLLER_H

@protocol FBAdSafariViewControllerDelegate;

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class FBAdTimer;
@protocol FBAdBrowserViewController;
@protocol FBAdBrowserSessionDataGeneration;
@protocol WKNavigationDelegate;

@interface FBAdWKWebViewBrowserController : UIViewController <FBAdBrowserViewController, FBAdBrowserSessionDataGeneration, WKNavigationDelegate>



@property (retain, nonatomic) FBAdTimer *domContentLoadedTimer; // ivar: _domContentLoadedTimer
@property (retain, nonatomic) WKWebView *webView; // ivar: _webView
@property (copy, nonatomic) NSURL *url; // ivar: _url
@property (copy, nonatomic) NSString *inlineClientToken; // ivar: _inlineClientToken
@property (nonatomic) NSUInteger handlerTimeMs; // ivar: _handlerTimeMs
@property (nonatomic) NSUInteger loadStartMs; // ivar: _loadStartMs
@property (nonatomic) NSUInteger responseEndMs; // ivar: _responseEndMs
@property (nonatomic) NSUInteger domContentLoadedMs; // ivar: _domContentLoadedMs
@property (nonatomic) NSUInteger scrollReadyMs; // ivar: _scrollReadyMs
@property (nonatomic) NSUInteger loadFinishMs; // ivar: _loadFinishMs
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (retain, nonatomic) UIBarButtonItem *backButton; // ivar: _backButton
@property (retain, nonatomic) UIBarButtonItem *forwardButton; // ivar: _forwardButton
@property (retain, nonatomic) UIBarButtonItem *refreshButton; // ivar: _refreshButton
@property (retain, nonatomic) UIBarButtonItem *spinnerButton; // ivar: _spinnerButton
@property (retain, nonatomic) UIToolbar *toolBar; // ivar: _toolBar
@property (weak, nonatomic) NSObject<FBAdSafariViewControllerDelegate> *delegate; // ivar: _delegate
@property (nonatomic, getter=isStatusBarHidden) BOOL statusBarHidden; // ivar: _statusBarHidden


-(id)initWithNibName:(id)arg0 bundle:(id)arg1 ;
-(void)viewDidLoad;
-(void)viewWillLayoutSubviews;
-(void)viewWillAppear:(BOOL)arg0 ;
-(void)viewWillDisappear:(BOOL)arg0 ;
-(void)clearContent;
-(void)loadURL:(id)arg0 ;
-(BOOL)prefersStatusBarHidden;
-(NSInteger)preferredInterfaceOrientationForPresentation;
-(void)startDOMContentLoadedTimer;
-(void)stopDOMContentLoadedTimer;
-(void)backButtonClicked:(id)arg0 ;
-(void)forwardButtonClicked:(id)arg0 ;
-(void)refreshButtonClicked:(id)arg0 ;
-(void)doneButtonClicked:(id)arg0 ;
-(void)webView:(id)arg0 decidePolicyForNavigationAction:(id)arg1 decisionHandler:(id)arg2 ;
-(void)webView:(id)arg0 didStartProvisionalNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFinishNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFailNavigation:(id)arg1 withError:(id)arg2 ;
-(void)webView:(id)arg0 didFailProvisionalNavigation:(id)arg1 withError:(id)arg2 ;
+(void)initialize;


@end


#endif