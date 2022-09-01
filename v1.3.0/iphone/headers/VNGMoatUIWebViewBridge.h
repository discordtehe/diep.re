// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGMOATUIWEBVIEWBRIDGE_H
#define VNGMOATUIWEBVIEWBRIDGE_H


#import <Foundation/Foundation.h>

@class VNGMoatBridge;
@protocol VNGMoatBridgeProtocol;

@interface VNGMoatUIWebViewBridge : VNGMoatBridge <VNGMoatBridgeProtocol>



@property (weak) id *webView; // ivar: _webView
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithWebView:(id)arg0 forNativeAds:(BOOL)arg1 ;
-(void)checkAndSendJS:(id)arg0 ;
-(void)handleJSResponse:(id)arg0 ;


@end


#endif