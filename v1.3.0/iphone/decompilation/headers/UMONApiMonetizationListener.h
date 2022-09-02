// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UMONAPIMONETIZATIONLISTENER_H
#define UMONAPIMONETIZATIONLISTENER_H


#import <Foundation/Foundation.h>


@interface UMONApiMonetizationListener : NSObject



+(void)WebViewExposed_isMonetizationEnabled:(id)arg0 ;
+(void)WebViewExposed_sendPlacementContentReady:(id)arg0 withCallBack:(id)arg1 ;
+(void)WebViewExposed_sendPlacementContentStateChanged:(id)arg0 withPreviousState:(id)arg1 withNewState:(id)arg2 withCallBack:(id)arg3 ;


@end


#endif