// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSAPIWEBPLAYER_H
#define UADSAPIWEBPLAYER_H


#import <Foundation/Foundation.h>


@interface UADSApiWebPlayer : NSObject



+(id)getWebPlayerSettings;
+(id)getWebPlayerEventSettings;
+(void)WebViewExposed_setUrl:(id)arg0 viewId:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_setData:(id)arg0 mimeType:(id)arg1 encoding:(id)arg2 viewId:(id)arg3 callback:(id)arg4 ;
+(void)WebViewExposed_setDataWithUrl:(id)arg0 data:(id)arg1 mimeType:(id)arg2 encoding:(id)arg3 viewId:(id)arg4 callback:(id)arg5 ;
+(void)WebViewExposed_setSettings:(id)arg0 ignoredSettings:(id)arg1 viewId:(id)arg2 callback:(id)arg3 ;
+(void)WebViewExposed_setEventSettings:(id)arg0 viewId:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_clearSettings:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_sendEvent:(id)arg0 viewId:(id)arg1 callback:(id)arg2 ;
+(id)getWebPlayer:(id)arg0 ;


@end


#endif