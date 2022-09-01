// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADWEBVIEWPINGER_H
#define GADWEBVIEWPINGER_H


#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol WKNavigationDelegate;

@interface GADWebViewPinger : NSObject <WKNavigationDelegate>

 {
    WKWebView *_webView;
    BOOL _receivedValidResponse;
    NSMutableArray *_webViewPingQueue;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)pingRequest:(id)arg0 queue:(id)arg1 completionBlock:(id)arg2 ;
-(void)sendNextPing;
-(void)loadFinishedWithError:(id)arg0 ;
-(void)webView:(id)arg0 decidePolicyForNavigationAction:(id)arg1 decisionHandler:(id)arg2 ;
-(void)webView:(id)arg0 decidePolicyForNavigationResponse:(id)arg1 decisionHandler:(id)arg2 ;
-(void)webView:(id)arg0 didFailProvisionalNavigation:(id)arg1 withError:(id)arg2 ;
-(void)webView:(id)arg0 didFailNavigation:(id)arg1 withError:(id)arg2 ;
+(BOOL)isAvailable;
+(void)initialize;


@end


#endif