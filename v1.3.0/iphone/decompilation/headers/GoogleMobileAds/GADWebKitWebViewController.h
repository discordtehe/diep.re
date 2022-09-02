// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADWEBKITWEBVIEWCONTROLLER_H
#define GADWEBKITWEBVIEWCONTROLLER_H

@protocol OS_dispatch_queue;

#import <WebKit/WebKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class GADWebViewController;
@class GADWebViewConfiguration;
@protocol WKNavigationDelegate;
@protocol WKUIDelegate;

@interface GADWebKitWebViewController : GADWebViewController <WKNavigationDelegate, WKUIDelegate>

 {
    WKWebView *_webView;
    GADWebViewConfiguration *_configuration;
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSURL *_lastMainDocumentURL;
    id *_completionHandler;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFrame:(struct CGRect )arg0 eventContext:(id)arg1 configuration:(id)arg2 ;
-(void)dealloc;
-(id)webView;
-(id)underlyingWebView;
-(id)configuration;
-(id)mainDocumentURL;
-(void)updateLastMainDocumentURL:(id)arg0 ;
-(void)addUserScript:(id)arg0 injectionTime:(NSInteger)arg1 forMainFrameOnly:(BOOL)arg2 ;
-(void)loadMRAID:(id)arg0 ;
-(void)loadViewport;
-(void)loadDynamicContentSize;
-(void)resetLoadState;
-(void)loadRequest:(id)arg0 ;
-(void)loadHTMLString:(id)arg0 baseURL:(id)arg1 completionHandler:(id)arg2 ;
-(void)asyncEvaluateJavaScriptFromString:(id)arg0 completionBlock:(id)arg1 ;
-(void)webView:(id)arg0 decidePolicyForNavigationAction:(id)arg1 decisionHandler:(id)arg2 ;
-(void)didFinishLoadCompletelyWithError:(id)arg0 ;
-(void)webView:(id)arg0 didCommitNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFinishNavigation:(id)arg1 ;
-(void)webView:(id)arg0 didFailNavigation:(id)arg1 withError:(id)arg2 ;
-(void)webView:(id)arg0 didFailProvisionalNavigation:(id)arg1 withError:(id)arg2 ;
-(void)webViewWebContentProcessDidTerminate:(id)arg0 ;
-(id)webView:(id)arg0 createWebViewWithConfiguration:(id)arg1 forNavigationAction:(id)arg2 windowFeatures:(id)arg3 ;
-(void)webView:(id)arg0 runJavaScriptAlertPanelWithMessage:(id)arg1 initiatedByFrame:(id)arg2 completionHandler:(id)arg3 ;
-(void)webView:(id)arg0 runJavaScriptConfirmPanelWithMessage:(id)arg1 initiatedByFrame:(id)arg2 completionHandler:(id)arg3 ;
-(void)webView:(id)arg0 runJavaScriptTextInputPanelWithPrompt:(id)arg1 defaultText:(id)arg2 initiatedByFrame:(id)arg3 completionHandler:(id)arg4 ;
+(BOOL)isAvailable;


@end


#endif