// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJWEBVIEWJAVASCRIPTBRIDGE_H
#define TJWEBVIEWJAVASCRIPTBRIDGE_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class TJWebViewJavascriptBridgeBase;
@protocol UIWebViewDelegate;
@protocol TJWebViewJavascriptBridgeBaseDelegate;

@interface TJWebViewJavascriptBridge : NSObject <UIWebViewDelegate, TJWebViewJavascriptBridgeBaseDelegate>

 {
    UIWebView *_webView;
    id *_webViewDelegate;
    NSInteger _uniqueId;
    TJWebViewJavascriptBridgeBase *_base;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)setWebViewDelegate:(id)arg0 ;
-(void)send:(id)arg0 ;
-(void)send:(id)arg0 responseCallback:(id)arg1 ;
-(void)callHandler:(id)arg0 ;
-(void)callHandler:(id)arg0 data:(id)arg1 ;
-(void)callHandler:(id)arg0 data:(id)arg1 responseCallback:(id)arg2 ;
-(void)registerHandler:(id)arg0 handler:(id)arg1 ;
-(void)removeHandler:(id)arg0 ;
-(void)disableJavscriptAlertBoxSafetyTimeout;
-(void)dealloc;
-(id)_evaluateJavascript:(id)arg0 ;
-(void)_platformSpecificSetup:(id)arg0 ;
-(void)_platformSpecificDealloc;
-(void)webViewDidFinishLoad:(id)arg0 ;
-(void)webView:(id)arg0 didFailLoadWithError:(id)arg1 ;
-(BOOL)webView:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webViewDidStartLoad:(id)arg0 ;
+(void)enableLogging;
+(void)setLogMaxLength:(int)arg0 ;
+(id)bridgeForWebView:(id)arg0 ;
+(id)bridge:(id)arg0 ;


@end


#endif