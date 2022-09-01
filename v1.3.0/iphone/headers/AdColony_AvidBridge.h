// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDBRIDGE_H
#define ADCOLONY_AVIDBRIDGE_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class AdColony_InternalAvidAdSessionContext;
@protocol AdColony_AvidWebViewHolder;
@protocol AdColony_AvidBridgeDelegate;

@interface AdColony_AvidBridge : NSObject {
    id<AdColony_AvidWebViewHolder> *_webViewHolder;
}


@property (readonly, nonatomic) BOOL isAvidJsInjected; // ivar: _isAvidJsInjected
@property (weak, nonatomic) UIView *webView;
@property (retain, nonatomic) AdColony_InternalAvidAdSessionContext *avidAdSessionContext; // ivar: _avidAdSessionContext
@property (weak, nonatomic) NSObject<AdColony_AvidBridgeDelegate> *delegate; // ivar: _delegate


-(void)onAvidJsReady;
-(void)injectJavaScriptResource:(id)arg0 ;
-(void)publishCommand:(id)arg0 ;
-(void)publishNativeViewState:(id)arg0 ;
-(void)publishAppState:(NSInteger)arg0 ;
-(void)publishReadyEvent;
-(void)publishVideoEvent:(id)arg0 data:(id)arg1 ;
-(void)injectAvid;


@end


#endif