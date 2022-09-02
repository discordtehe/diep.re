// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJYMOATBOOTSTRAP_H
#define TJYMOATBOOTSTRAP_H



@class TJYMoatObject;

@interface TJYMoatBootstrap : TJYMoatObject



+(void)initialize;
+(void)initializeAppHooks;
+(void)pruneDelegates;
+(BOOL)injectDelegateWrapper:(id)arg0 tracking:(id)arg1 ;
+(id)digForUIWebView:(id)arg0 ;
+(id)digForWebView:(id)arg0 webViewType:(Class)arg1 ;
+(BOOL)isBlocksKitDelegate:(id)arg0 ;
+(id)getWrappedDelegate:(id)arg0 ;
+(BOOL)installUIWebViewBridge:(id)arg0 tracking:(id)arg1 forNativeAd:(BOOL)arg2 ;
+(BOOL)injectDelegateWrapper:(id)arg0 ;


@end


#endif