// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCBROWSER_H
#define ADCBROWSER_H


#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import <Foundation/Foundation.h>

@class ADCBrowserControl;
@protocol UIWebViewDelegate;
@protocol WKNavigationDelegate;
@protocol ADCBrowserControlDelegate;

@interface ADCBrowser : UIViewController <UIWebViewDelegate, WKNavigationDelegate, ADCBrowserControlDelegate>

 {
    ADCBrowserControl *_backButton;
    ADCBrowserControl *_forwardButton;
    ADCBrowserControl *_reloadButton;
    ADCBrowserControl *_closeButton;
    ADCBrowserControl *_stopButton;
    UIImage *_logo;
    UIImage *_backgroundBar;
    UIImage *_backgroundTile;
    WKWebView *_wkWebView;
    UIWebView *_uiWebView;
    UIView *_webViewBackground;
    UIImageView *_backgroundLogo;
    int _backgroundLogoWidth;
    int _backgroundLogoHeight;
    UIView *_browserBar;
    UIActivityIndicatorView *_spinner;
    UIImageView *_browserBarBackgroundImage;
    NSString *_url;
    BOOL _shouldCloseOnAppear;
    BOOL _lastRequestWasCanceled;
    NSString *_lastRequestURL;
}


@property (copy, nonatomic) id *openHandler; // ivar: _openHandler
@property (copy, nonatomic) id *dismissalHandler; // ivar: _dismissalHandler
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDict:(id)arg0 ;
-(BOOL)prefersStatusBarHidden;
-(NSUInteger)supportedInterfaceOrientations;
-(BOOL)shouldAutorotate;
-(void)viewWillAppear:(BOOL)arg0 ;
-(void)closeOnAppear;
-(void)prepareWithCompletionHandler:(id)arg0 ;
-(void)showControls;
-(void)layoutControl:(id)arg0 withPosition:(int)arg1 ;
-(void)showWebView:(id)arg0 ;
-(void)loadRequest:(id)arg0 ;
-(void)browserControlButtonPushed:(id)arg0 ;
-(void)back;
-(void)forward;
-(void)reload;
-(void)stop;
-(void)close;
-(void)setLoadingState;
-(void)webView:(id)arg0 didFailLoadWithError:(id)arg1 ;
-(void)webViewDidFinishLoad:(id)arg0 ;
-(BOOL)webView:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webView:(id)arg0 decidePolicyForNavigationAction:(id)arg1 decisionHandler:(id)arg2 ;
-(void)webView:(id)arg0 didFinishNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFailNavigation:(id)arg1 withError:(id)arg2 ;
-(void)dealloc;


@end


#endif