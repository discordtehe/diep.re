// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJWKWEBVIEWJAVASCRIPTBRIDGE_H
#define TJWKWEBVIEWJAVASCRIPTBRIDGE_H


#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

@class TJWebViewJavascriptBridgeBase;
@protocol WKNavigationDelegate;
@protocol TJWebViewJavascriptBridgeBaseDelegate;
@protocol WKNavigationDelegate;

@interface TJWKWebViewJavascriptBridge : NSObject <WKNavigationDelegate, TJWebViewJavascriptBridgeBaseDelegate>

 {
    WKWebView *_webView;
    id<WKNavigationDelegate> *_webViewDelegate;
    NSInteger _uniqueId;
    TJWebViewJavascriptBridgeBase *_base;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)send:(id)arg0 ;
-(void)send:(id)arg0 responseCallback:(id)arg1 ;
-(void)callHandler:(id)arg0 ;
-(void)callHandler:(id)arg0 data:(id)arg1 ;
-(void)callHandler:(id)arg0 data:(id)arg1 responseCallback:(id)arg2 ;
-(void)registerHandler:(id)arg0 handler:(id)arg1 ;
-(void)removeHandler:(id)arg0 ;
-(void)reset;
-(void)setWebViewDelegate:(id)arg0 ;
-(void)disableJavscriptAlertBoxSafetyTimeout;
-(void)dealloc;
-(void)_setupInstance:(id)arg0 ;
-(void)WKFlushMessageQueue;
-(void)webView:(id)arg0 didFinishNavigation:(id)arg1 ;
-(void)webView:(id)arg0 decidePolicyForNavigationResponse:(id)arg1 decisionHandler:(id)arg2 ;
-(void)webView:(id)arg0 didReceiveAuthenticationChallenge:(id)arg1 completionHandler:(id)arg2 ;
-(void)webView:(id)arg0 decidePolicyForNavigationAction:(id)arg1 decisionHandler:(id)arg2 ;
-(void)webView:(id)arg0 didStartProvisionalNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFailNavigation:(id)arg1 withError:(id)arg2 ;
-(void)webView:(id)arg0 didFailProvisionalNavigation:(id)arg1 withError:(id)arg2 ;
-(id)_evaluateJavascript:(id)arg0 ;
+(void)enableLogging;
+(id)bridgeForWebView:(id)arg0 ;


@end


#endif