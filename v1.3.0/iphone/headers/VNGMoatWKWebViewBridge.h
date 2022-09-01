// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGMOATWKWEBVIEWBRIDGE_H
#define VNGMOATWKWEBVIEWBRIDGE_H


#import <WebKit/WebKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class VNGMoatBridge;
@protocol VNGMoatBridgeProtocol;

@interface VNGMoatWKWebViewBridge : VNGMoatBridge <VNGMoatBridgeProtocol>



@property (weak, nonatomic) WKWebView *webView; // ivar: _webView
@property (retain) NSMutableArray *queuedCalls; // ivar: _queuedCalls
@property (retain) NSString *videoTrackerName; // ivar: _videoTrackerName
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithWebView:(id)arg0 forNativeAd:(BOOL)arg1 ;
-(void)checkAndSendJS:(id)arg0 ;
-(void)handleJSResponse:(id)arg0 ;
-(id)checkAndFormatEvent:(id)arg0 ;
-(id)serializeEvent:(id)arg0 ;
-(void)dispatchEvent:(id)arg0 ;
-(void)queueEvent:(id)arg0 ;
-(void)flushQueue;


@end


#endif