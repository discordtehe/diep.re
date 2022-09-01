// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJYMOATUIWEBVIEWBRIDGE_H
#define TJYMOATUIWEBVIEWBRIDGE_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class TJYMoatBridge;
@protocol UIWebViewDelegate;

@interface TJYMoatUIWebViewBridge : TJYMoatBridge <UIWebViewDelegate>



@property BOOL recursionFlag_shouldStart; // ivar: _recursionFlag_shouldStart
@property BOOL recursionFlag_didFailLoadWithError; // ivar: _recursionFlag_didFailLoadWithError
@property BOOL recursionFlag_webViewDidFinishLoad; // ivar: _recursionFlag_webViewDidFinishLoad
@property (weak) UIWebView *webView; // ivar: _webView
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDelegate:(id)arg0 target:(id)arg1 withWebView:(id)arg2 forNativeAd:(BOOL)arg3 ;
-(void)markMoatActive:(id)arg0 ;
-(void)webView:(id)arg0 didFailLoadWithError:(id)arg1 ;
-(void)webViewDidFinishLoad:(id)arg0 ;
-(BOOL)webView:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(BOOL)hasWebView;


@end


#endif