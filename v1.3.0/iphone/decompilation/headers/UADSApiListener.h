// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSAPILISTENER_H
#define UADSAPILISTENER_H


#import <Foundation/Foundation.h>


@interface UADSApiListener : NSObject



+(void)WebViewExposed_sendReadyEvent:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_sendStartEvent:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_sendFinishEvent:(id)arg0 result:(id)arg1 callback:(id)arg2 ;
+(void)WebViewExposed_sendClickEvent:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_sendPlacementStateChangedEvent:(id)arg0 oldState:(id)arg1 newState:(id)arg2 callback:(id)arg3 ;
+(void)WebViewExposed_sendErrorEvent:(id)arg0 message:(id)arg1 callback:(id)arg2 ;


@end


#endif