// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCWEBVIEWMODULE_H
#define ADCWEBVIEWMODULE_H


#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import <Foundation/Foundation.h>

@class ADCModule;
@class ADCGCDWebServer;
@protocol UIWebViewDelegate;
@protocol WKNavigationDelegate;
@protocol ADCGCDWebServerDelegate;
@protocol ADCWebViewModuleDelegate;

@interface ADCWebViewModule : ADCModule <UIWebViewDelegate, WKNavigationDelegate, ADCGCDWebServerDelegate>



@property (retain, nonatomic) UIWebView *uiWebView; // ivar: _uiWebView
@property (retain, nonatomic) WKWebView *wkWebView; // ivar: _wkWebView
@property BOOL directMessagingEnabled; // ivar: _directMessagingEnabled
@property (retain, nonatomic) ADCGCDWebServer *webserver; // ivar: _webserver
@property (nonatomic) NSUInteger gwsport; // ivar: _gwsport
@property (nonatomic) NSUInteger identifier; // ivar: _identifier
@property (retain, nonatomic) UIView *view; // ivar: _view
@property (nonatomic) CGRect frame; // ivar: _frame
@property (nonatomic) CGRect bounds; // ivar: _bounds
@property (nonatomic) NSUInteger autoResizingMask; // ivar: _autoResizingMask
@property (retain, nonatomic) UIColor *backgroundColor; // ivar: _backgroundColor
@property (nonatomic) BOOL visible; // ivar: _visible
@property (nonatomic) BOOL opaque; // ivar: _opaque
@property (nonatomic) BOOL userInteractionEnabled; // ivar: _userInteractionEnabled
@property (nonatomic) BOOL scrollEnabled; // ivar: _scrollEnabled
@property (nonatomic) BOOL useUIWebView; // ivar: _useUIWebView
@property (nonatomic) BOOL isDisplayModule; // ivar: _isDisplayModule
@property (weak, nonatomic) NSObject<ADCWebViewModuleDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFrame:(struct CGRect )arg0 originID:(NSUInteger)arg1 info:(id)arg2 filepath:(id)arg3 useUIWebView:(BOOL)arg4 isDisplayModule:(BOOL)arg5 ;
-(void)loadRequest:(id)arg0 ;
-(void)evaluateJS:(id)arg0 withCompletionHandler:(id)arg1 ;
-(void)loadHTMLString:(id)arg0 baseURL:(id)arg1 ;
-(void)beginMessagePassing:(id)arg0 ;
-(void)initializeWKWebViewModule:(id)arg0 withString:(id)arg1 ;
-(void)beginMessagePassingWithInfoString:(id)arg0 ;
-(void)onModuleInitError:(id)arg0 ;
-(void)pumpMessages:(id)arg0 ;
-(void)onMessagePumpError:(id)arg0 ;
-(id)messageArrayFromInboundMessageString:(id)arg0 ;
-(void)webView:(id)arg0 decidePolicyForNavigationAction:(id)arg1 decisionHandler:(id)arg2 ;
-(void)webView:(id)arg0 didFinishNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFailNavigation:(id)arg1 withError:(id)arg2 ;
-(BOOL)webView:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webViewDidFinishLoad:(id)arg0 ;
-(void)webView:(id)arg0 didFailLoadWithError:(id)arg1 ;
-(BOOL)shouldLoadWebViewRequest:(id)arg0 ;
-(void)stopWebServerNoDispatch;
-(void)stopWebServer;
-(void)resumeServer;
-(void)webServer:(id)arg0 didAbortRequest:(id)arg1 withStatusCode:(NSInteger)arg2 ;
-(void)dealloc;


@end


#endif