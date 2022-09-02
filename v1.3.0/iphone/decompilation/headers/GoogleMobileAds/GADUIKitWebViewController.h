// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADUIKITWEBVIEWCONTROLLER_H
#define GADUIKITWEBVIEWCONTROLLER_H

@protocol OS_dispatch_queue;

#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class GADWebViewController;
@class GADWebViewConfiguration;
@protocol UIWebViewDelegate;

@interface GADUIKitWebViewController : GADWebViewController <UIWebViewDelegate>

 {
    UIWebView *_webView;
    GADWebViewConfiguration *_configuration;
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSURL *_lastMainDocumentURL;
    atomic_flag _shouldSetDataDetectorTypes;
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
-(void)resetLoadState;
-(void)loadRequest:(id)arg0 ;
-(void)loadHTMLString:(id)arg0 baseURL:(id)arg1 completionHandler:(id)arg2 ;
-(void)asyncEvaluateJavaScriptFromString:(id)arg0 completionBlock:(id)arg1 ;
-(void)updateLastMainDocumentURL:(id)arg0 ;
-(void)loadDynamicContentSize;
-(BOOL)webView:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webViewDidStartLoad:(id)arg0 ;
-(void)didFinishLoadCompletelyWithError:(id)arg0 ;
-(void)webViewDidFinishLoad:(id)arg0 ;
-(void)webView:(id)arg0 didFailLoadWithError:(id)arg1 ;
+(void)initialize;
+(BOOL)isAvailable;


@end


#endif