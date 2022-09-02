// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSAPIBANNERLISTENER_H
#define UADSAPIBANNERLISTENER_H


#import <Foundation/Foundation.h>


@interface UADSApiBannerListener : NSObject



+(void)WebViewExposed_sendShowEvent:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_sendHideEvent:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_sendClickEvent:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_sendErrorEvent:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_sendLoadEvent:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_sendUnloadEvent:(id)arg0 callback:(id)arg1 ;


@end


#endif