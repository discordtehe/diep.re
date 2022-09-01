// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MRBRIDGE_H
#define MRBRIDGE_H


#import <Foundation/Foundation.h>

@class MPWebView;
@class MRNativeCommandHandler;
@protocol MPWebViewDelegate;
@protocol MRNativeCommandHandlerDelegate;
@protocol MRBridgeDelegate;

@interface MRBridge : NSObject <MPWebViewDelegate, MRNativeCommandHandlerDelegate>



@property (retain, nonatomic) MPWebView *webView; // ivar: _webView
@property (retain, nonatomic) MRNativeCommandHandler *nativeCommandHandler; // ivar: _nativeCommandHandler
@property (nonatomic) BOOL shouldHandleRequests; // ivar: _shouldHandleRequests
@property (weak, nonatomic) NSObject<MRBridgeDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithWebView:(id)arg0 delegate:(id)arg1 ;
-(void)dealloc;
-(void)loadHTMLString:(id)arg0 baseURL:(id)arg1 ;
-(void)fireReadyEvent;
-(void)fireChangeEventForProperty:(id)arg0 ;
-(void)fireChangeEventsForProperties:(id)arg0 ;
-(void)fireErrorEventForAction:(id)arg0 withMessage:(id)arg1 ;
-(void)fireSizeChangeEvent:(struct CGSize )arg0 ;
-(void)fireSetScreenSize:(struct CGSize )arg0 ;
-(void)fireSetPlacementType:(id)arg0 ;
-(void)fireSetCurrentPositionWithPositionRect:(struct CGRect )arg0 ;
-(void)fireSetDefaultPositionWithPositionRect:(struct CGRect )arg0 ;
-(void)fireSetMaxSize:(struct CGSize )arg0 ;
-(BOOL)webView:(id)arg0 shouldStartLoadWithRequest:(id)arg1 navigationType:(NSInteger)arg2 ;
-(void)webViewDidStartLoad:(id)arg0 ;
-(void)webViewDidFinishLoad:(id)arg0 ;
-(void)webView:(id)arg0 didFailLoadWithError:(id)arg1 ;
-(void)executeJavascript:(id)arg0 ;
-(void)fireNativeCommandCompleteEvent:(id)arg0 ;
-(void)executeJavascript:(id)arg0 withVarArgs:(char *)arg1 ;
-(void)handleMRAIDUseCustomClose:(BOOL)arg0 ;
-(void)handleMRAIDSetOrientationPropertiesWithForceOrientationMask:(NSUInteger)arg0 ;
-(void)handleMRAIDOpenCallForURL:(id)arg0 ;
-(void)handleMRAIDExpandWithParameters:(id)arg0 ;
-(void)handleMRAIDResizeWithParameters:(id)arg0 ;
-(void)handleMRAIDClose;
-(void)nativeCommandWillPresentModalView;
-(void)nativeCommandDidDismissModalView;
-(void)nativeCommandCompleted:(id)arg0 ;
-(void)nativeCommandFailed:(id)arg0 withMessage:(id)arg1 ;
-(id)viewControllerForPresentingModalView;
-(NSUInteger)adViewPlacementType;
-(BOOL)userInteractedWithWebView;
-(BOOL)handlingWebviewRequests;


@end


#endif