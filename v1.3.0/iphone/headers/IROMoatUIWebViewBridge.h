// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATUIWEBVIEWBRIDGE_H
#define IROMOATUIWEBVIEWBRIDGE_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class IROMoatBridge;
@protocol IROMoatBridgeProtocol;

@interface IROMoatUIWebViewBridge : IROMoatBridge <IROMoatBridgeProtocol>



@property (weak) UIWebView *webView; // ivar: _webView
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithWebView:(id)arg0 forNativeAds:(BOOL)arg1 ;
-(void)checkAndSendJS:(id)arg0 ;
-(void)handleJSResponse:(id)arg0 ;


@end


#endif