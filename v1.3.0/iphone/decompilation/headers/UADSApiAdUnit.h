// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSAPIADUNIT_H
#define UADSAPIADUNIT_H


#import <Foundation/Foundation.h>


@interface UADSApiAdUnit : NSObject



+(id)getAdUnit;
+(void)setAdUnit:(id)arg0 ;
+(void)WebViewExposed_open:(id)arg0 supportedOrientations:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_open:(id)arg0 supportedOrientations:(id)arg1 statusBarHidden:(id)arg2 callback:(id)arg3 ;
+(void)WebViewExposed_open:(id)arg0 supportedOrientations:(id)arg1 statusBarHidden:(id)arg2 shouldAutorotate:(id)arg3 callback:(id)arg4 ;
+(void)WebViewExposed_open:(id)arg0 supportedOrientations:(id)arg1 statusBarHidden:(id)arg2 shouldAutorotate:(id)arg3 isTransparent:(id)arg4 callback:(id)arg5 ;
+(void)WebViewExposed_open:(id)arg0 supportedOrientations:(id)arg1 statusBarHidden:(id)arg2 shouldAutorotate:(id)arg3 isTransparent:(id)arg4 withAnimation:(id)arg5 callback:(id)arg6 ;
+(void)WebViewExposed_open:(id)arg0 supportedOrientations:(id)arg1 statusBarHidden:(id)arg2 shouldAutorotate:(id)arg3 isTransparent:(id)arg4 withAnimation:(id)arg5 homeIndicatorAutoHidden:(id)arg6 callback:(id)arg7 ;
+(void)WebViewExposed_close:(id)arg0 ;
+(void)WebViewExposed_setViews:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getViews:(id)arg0 ;
+(void)WebViewExposed_setSupportedOrientations:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getSupportedOrientations:(id)arg0 ;
+(void)WebViewExposed_setKeepScreenOn:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_setStatusBarHidden:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getStatusBarHidden:(id)arg0 ;
+(void)WebViewExposed_setShouldAutorotate:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getShouldAutorotate:(id)arg0 ;
+(void)WebViewExposed_setTransform:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_setViewFrame:(id)arg0 x:(id)arg1 y:(id)arg2 width:(id)arg3 height:(id)arg4 callback:(id)arg5 ;
+(void)WebViewExposed_getTransform:(id)arg0 ;
+(void)WebViewExposed_getViewFrame:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_setHomeIndicatorAutoHidden:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getHomeIndicatorAutoHidden:(id)arg0 ;
+(void)WebViewExposed_getSafeAreaInsets:(id)arg0 ;


@end


#endif