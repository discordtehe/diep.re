// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATWEBVIEWANDBRIDGE_H
#define IROMOATWEBVIEWANDBRIDGE_H


#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

@class IROMoatWKWebViewBridge;
@protocol WKNavigationDelegate;

@interface IROMoatWebViewAndBridge : NSObject <WKNavigationDelegate>



@property (retain) NSString *moatTrackerName; // ivar: _moatTrackerName
@property BOOL amCleanedUp; // ivar: _amCleanedUp
@property (retain) WKWebView *webView; // ivar: _webView
@property (retain) IROMoatWKWebViewBridge *webBridge; // ivar: _webBridge
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)vivifyDisplayWebViewWithPartnerCode:(id)arg0 ;
-(void)vivifyVideoWebViewWithPartnerCode:(id)arg0 withAdIds:(id)arg1 withPlayerSize:(struct CGSize )arg2 withTracker:(id)arg3 ;
-(void)destroy;
-(void)webView:(id)arg0 didFinishNavigation:(id)arg1 ;


@end


#endif