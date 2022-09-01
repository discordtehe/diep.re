// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJSPLITWEBVIEW_H
#define TJSPLITWEBVIEW_H


#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class TJAdUnitJSBridge;
@protocol UIWebViewDelegate;
@protocol WKNavigationDelegate;
@protocol WKUIDelegate;

@interface TJSplitWebView : UIView <UIWebViewDelegate, WKNavigationDelegate, WKUIDelegate>



@property (retain, nonatomic) id *webView; // ivar: _webView
@property (retain, nonatomic) WKWebView *wkWebView; // ivar: _wkWebView
@property (retain, nonatomic) UIWebView *uiWebView; // ivar: _uiWebView
@property (retain, nonatomic) NSString *firstURL; // ivar: _firstURL
@property (retain, nonatomic) NSString *lastURL; // ivar: _lastURL
@property (retain, nonatomic) NSDictionary *layout; // ivar: _layout
@property (retain, nonatomic) NSSet *exitHosts; // ivar: _exitHosts
@property (weak, nonatomic) TJAdUnitJSBridge *bridge; // ivar: _bridge
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFrame:(struct CGRect )arg0 webkitPreferred:(BOOL)arg1 layout:(id)arg2 exitHosts:(id)arg3 bridge:(id)arg4 ;
-(void)createWKWebViewWithFrame:(struct CGRect )arg0 ;
-(void)createUIWebViewWithFrame:(struct CGRect )arg0 ;
-(void)dealloc;
-(void)orientationChanged:(id)arg0 ;
-(void)updateFrameWithSize:(struct CGSize )arg0 ;
-(void)loadRequest:(id)arg0 ;
-(id)getCurrentURL;
-(BOOL)shouldStartDecidePolicy:(id)arg0 navigationType:(NSInteger)arg1 ;
-(void)failLoadOrNavigationWithError:(id)arg0 ;
-(BOOL)webView:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webView:(id)arg0 didFailLoadWithError:(id)arg1 ;
-(void)webView:(id)arg0 decidePolicyForNavigationAction:(id)arg1 decisionHandler:(id)arg2 ;
-(void)webView:(id)arg0 didFinishNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFailProvisionalNavigation:(id)arg1 withError:(id)arg2 ;
-(id)webView:(id)arg0 createWebViewWithConfiguration:(id)arg1 forNavigationAction:(id)arg2 windowFeatures:(id)arg3 ;


@end


#endif