// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCWEBVIEW_H
#define TJCWEBVIEW_H


#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@protocol UIWebViewDelegate;
@protocol WKNavigationDelegate;
@protocol WKUIDelegate;
@protocol TJCWebViewDelegate;

@interface TJCWebView : UIView <UIWebViewDelegate, WKNavigationDelegate, WKUIDelegate>

 {
    CGRect m_originalFrame;
}


@property (retain, nonatomic) WKWebView *wkWebView; // ivar: _wkWebView
@property (retain, nonatomic) UIWebView *uiWebView; // ivar: _uiWebView
@property (weak, nonatomic) NSObject<TJCWebViewDelegate> *webViewDelegate; // ivar: m_webViewDelegate
@property (copy, nonatomic) NSURL *creativeURL; // ivar: m_creativeURL
@property (copy, nonatomic) NSString *creativeFragment; // ivar: m_creativeFragment
@property (retain, nonatomic) id *webView; // ivar: _webView
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 webkitPreferred:(BOOL)arg1 ;
-(void)createWKWebViewWithFrame:(struct CGRect )arg0 ;
-(void)createUIWebViewWithCoder:(id)arg0 frame:(struct CGRect )arg1 ;
-(void)commonInitialization;
-(void)dealloc;
-(BOOL)shouldStartDecidePolicy:(id)arg0 navigationType:(NSInteger)arg1 ;
-(void)didStartNavigation;
-(void)failLoadOrNavigationWithError:(id)arg0 ;
-(void)finishLoadOrNavigation;
-(void)webView:(id)arg0 didFailLoadWithError:(id)arg1 ;
-(BOOL)webView:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webViewDidFinishLoad:(id)arg0 ;
-(void)webViewDidStartLoad:(id)arg0 ;
-(void)webView:(id)arg0 decidePolicyForNavigationAction:(id)arg1 decisionHandler:(id)arg2 ;
-(void)webView:(id)arg0 didStartProvisionalNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFailProvisionalNavigation:(id)arg1 withError:(id)arg2 ;
-(void)webView:(id)arg0 didFailNavigation:(id)arg1 withError:(id)arg2 ;
-(void)webView:(id)arg0 didFinishNavigation:(id)arg1 ;
-(id)webView:(id)arg0 createWebViewWithConfiguration:(id)arg1 forNavigationAction:(id)arg2 windowFeatures:(id)arg3 ;
-(void)loadHTMLCreative:(id)arg0 creativeURL:(id)arg1 ;
-(void)executeJavascript:(id)arg0 ;
-(void)executeJavascript:(id)arg0 completionHandler:(id)arg1 ;
-(void)showURLFullScreen:(id)arg0 sourceView:(id)arg1 ;
-(void)setHTML:(id)arg0 baseURL:(id)arg1 ;
-(void)preparedCreative:(id)arg0 baseURL:(id)arg1 onURL:(id)arg2 ;
-(void)injectJavaScriptIntoWebViewWithCompletionHandler:(id)arg0 ;
-(void)setFrame:(struct CGRect )arg0 ;
-(void)stopLoading;
-(void)loadRequest:(id)arg0 ;
-(id)scrollView;
-(void)evaluateJavaScript:(id)arg0 completionHandler:(id)arg1 ;
-(void)clearDelegates;
-(void)setBackgroundColor:(id)arg0 ;
-(void)setOpaque:(BOOL)arg0 ;


@end


#endif