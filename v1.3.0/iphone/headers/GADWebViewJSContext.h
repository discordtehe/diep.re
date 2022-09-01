// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADWEBVIEWJSCONTEXT_H
#define GADWEBVIEWJSCONTEXT_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class GADJSContext;
@class GADWebViewController;
@class GADActionURLHandler;
@protocol GADWebViewControllerDelegate;

@interface GADWebViewJSContext : GADJSContext <GADWebViewControllerDelegate>

 {
    GADWebViewController *_webViewController;
    NSMutableArray *_bufferedScripts;
    id *_loadHTMLURLCompletionHandler;
    GADActionURLHandler *_actionURLHandler;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initBareContextWithConfiguration:(id)arg0 eventContext:(id)arg1 ;
-(id)initWithEventContext:(id)arg0 ;
-(void)dealloc;
-(void)loadRequest:(id)arg0 completionHandler:(id)arg1 ;
-(id)functionWithName:(id)arg0 ;
-(void)evaluateScript:(id)arg0 ;
-(void)asyncEvaluateFunction:(id)arg0 parameters:(id)arg1 ;
-(BOOL)webViewController:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webViewControllerDidStartLoad:(id)arg0 ;
-(void)webViewControllerDidFinishLoad:(id)arg0 ;
-(void)webViewDidFailWithError:(id)arg0 ;
-(void)webViewController:(id)arg0 didFailLoadWithError:(id)arg1 ;
-(void)webViewControllerWebContentProcessDidTerminate:(id)arg0 ;
+(void)loadWithRequest:(id)arg0 webViewConfiguration:(id)arg1 eventContext:(id)arg2 completionHandler:(id)arg3 ;


@end


#endif