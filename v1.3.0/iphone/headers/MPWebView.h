// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPWEBVIEW_H
#define MPWEBVIEW_H


#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@protocol UIWebViewDelegate;
@protocol WKNavigationDelegate;
@protocol WKUIDelegate;
@protocol UIScrollViewDelegate;
@protocol MPWebViewDelegate;

@interface MPWebView : UIView <UIWebViewDelegate, WKNavigationDelegate, WKUIDelegate, UIScrollViewDelegate>



@property (readonly, nonatomic) UIView *containedWebView;
@property (weak, nonatomic) WKWebView *wkWebView; // ivar: _wkWebView
@property (weak, nonatomic) UIWebView *uiWebView; // ivar: _uiWebView
@property (retain, nonatomic) NSArray *webViewLayoutConstraints; // ivar: _webViewLayoutConstraints
@property (nonatomic) BOOL hasMovedToWindow; // ivar: _hasMovedToWindow
@property (weak, nonatomic) NSObject<MPWebViewDelegate> *delegate; // ivar: _delegate
@property (nonatomic) BOOL shouldConformToSafeArea; // ivar: _shouldConformToSafeArea
@property (readonly, nonatomic, getter=isLoading) BOOL loading;
@property (nonatomic) BOOL allowsLinkPreview;
@property (readonly, nonatomic) BOOL allowsPictureInPictureMediaPlayback;
@property (readonly, nonatomic) BOOL canGoBack;
@property (readonly, nonatomic) BOOL canGoForward;
@property (nonatomic) BOOL scalesPageToFit;
@property (readonly, nonatomic) UIScrollView *scrollView;
@property (readonly, nonatomic) BOOL allowsInlineMediaPlayback;
@property (readonly, nonatomic) BOOL mediaPlaybackRequiresUserAction;
@property (readonly, nonatomic) BOOL mediaPlaybackAllowsAirPlay;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 forceUIWebView:(BOOL)arg1 ;
-(void)setUpStepsForceUIWebView:(BOOL)arg0 ;
-(void)retainWKWebViewOffscreen:(id)arg0 ;
-(void)cleanUpOffscreenView;
-(id)constructOffscreenView;
-(void)didMoveToWindow;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
-(void)dealloc;
-(void)constrainView:(id)arg0 shouldUseSafeArea:(BOOL)arg1 ;
-(void)loadData:(id)arg0 MIMEType:(id)arg1 textEncodingName:(id)arg2 baseURL:(id)arg3 ;
-(void)loadHTMLString:(id)arg0 baseURL:(id)arg1 ;
-(void)loadRequest:(id)arg0 ;
-(void)stopLoading;
-(void)reload;
-(void)goBack;
-(void)goForward;
-(void)evaluateJavaScript:(id)arg0 completionHandler:(id)arg1 ;
-(id)stringByEvaluatingJavaScriptFromString:(id)arg0 ;
-(BOOL)webView:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webViewDidStartLoad:(id)arg0 ;
-(void)webViewDidFinishLoad:(id)arg0 ;
-(void)webView:(id)arg0 didFailLoadWithError:(id)arg1 ;
-(void)mp_setScrollable:(BOOL)arg0 ;
-(void)disableJavaScriptDialogs;
-(void)webView:(id)arg0 didStartProvisionalNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFinishNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFailNavigation:(id)arg1 withError:(id)arg2 ;
-(void)webView:(id)arg0 didFailProvisionalNavigation:(id)arg1 withError:(id)arg2 ;
-(void)webView:(id)arg0 decidePolicyForNavigationAction:(id)arg1 decisionHandler:(id)arg2 ;
-(id)webView:(id)arg0 createWebViewWithConfiguration:(id)arg1 forNavigationAction:(id)arg2 windowFeatures:(id)arg3 ;
-(id)viewForZoomingInScrollView:(id)arg0 ;
-(void)webView:(id)arg0 runJavaScriptAlertPanelWithMessage:(id)arg1 initiatedByFrame:(id)arg2 completionHandler:(id)arg3 ;
-(void)webView:(id)arg0 runJavaScriptConfirmPanelWithMessage:(id)arg1 initiatedByFrame:(id)arg2 completionHandler:(id)arg3 ;
-(void)webView:(id)arg0 runJavaScriptTextInputPanelWithPrompt:(id)arg1 defaultText:(id)arg2 initiatedByFrame:(id)arg3 completionHandler:(id)arg4 ;
+(void)forceWKWebView:(BOOL)arg0 ;
+(BOOL)isForceWKWebView;


@end


#endif