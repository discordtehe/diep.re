// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UARAPIAR_H
#define UARAPIAR_H


#import <Foundation/Foundation.h>


@interface UARApiAR : NSObject



+(void)WebViewExposed_isARSupported:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getSupportedVideoFormats:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_restartSession:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_setDepthFar:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_setDepthNear:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_showCameraFeed:(id)arg0 ;
+(void)WebViewExposed_hideCameraFeed:(id)arg0 ;
+(void)WebViewExposed_addAnchor:(id)arg0 withMatrix:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_removeAnchor:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_advanceFrame:(id)arg0 ;
+(void)WebViewExposed_getFrameInfo:(id)arg0 ;
+(void)WebViewExposed_setFrameScaling:(id)arg0 callback:(id)arg1 ;


@end


#endif