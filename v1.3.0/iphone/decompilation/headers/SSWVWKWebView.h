// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSWVWKWEBVIEW_H
#define SSWVWKWEBVIEW_H


#import <WebKit/WebKit.h>
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol WKScriptMessageHandler;
@protocol WKNavigationDelegate;
@protocol WKUIDelegate;
@protocol SSWVWebViewP;
@protocol SSWVBridgeP;
@protocol SSWVWebViewDelegate;

@interface SSWVWKWebView : WKWebView <WKScriptMessageHandler, WKNavigationDelegate, WKUIDelegate, SSWVWebViewP>



@property (retain, nonatomic) NSString *messageHandlerName; // ivar: _messageHandlerName
@property (retain, nonatomic) NSObject<SSWVBridgeP> *bridge; // ivar: _bridge
@property (weak) NSObject<SSWVWebViewDelegate> *webViewDelegate; // ivar: _webViewDelegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) BOOL isLoading;
@property (readonly, nonatomic) BOOL canGoBack;
@property (readonly, nonatomic) BOOL canGoForward;
@property (retain, nonatomic) NSArray *respondingFrames; // ivar: respondingFrames
@property (nonatomic) CGRect frameForCloseButton; // ivar: frameForCloseButton


-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 browsingConfiguration:(id)arg1 ;
-(id)initWithFrame:(struct CGRect )arg0 connectivityConfiguration:(id)arg1 browsingConfiguration:(id)arg2 ;
-(void)evaluateJavaScript:(id)arg0 ;
-(Class)webViewClass;
-(BOOL)pointInside:(struct CGPoint )arg0 withEvent:(id)arg1 ;
-(id)view;
-(void)allowFileAccessFromFileURLs:(BOOL)arg0 ;
-(void)stopLoading;
-(void)reload;
-(void)goBack;
-(void)goForward;
-(NSInteger)convertNavigationType:(NSInteger)arg0 ;
-(void)userContentController:(id)arg0 didReceiveScriptMessage:(id)arg1 ;
-(void)webView:(id)arg0 didFinishNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFailNavigation:(id)arg1 withError:(id)arg2 ;
-(void)loadFileRequest:(id)arg0 allowingReadAccessToURL:(id)arg1 ;
-(void)webView:(id)arg0 decidePolicyForNavigationAction:(id)arg1 decisionHandler:(id)arg2 ;
-(void)loadHTMLContentString:(id)arg0 baseURL:(id)arg1 ;
-(id)webView:(id)arg0 createWebViewWithConfiguration:(id)arg1 forNavigationAction:(id)arg2 windowFeatures:(id)arg3 ;
-(id)stringByEvaluatingJavaScriptFromString:(id)arg0 ;


@end


#endif