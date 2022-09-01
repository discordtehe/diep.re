// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVAPISDK_H
#define USRVAPISDK_H


#import <Foundation/Foundation.h>


@interface USRVApiSdk : NSObject



+(void)WebViewExposed_loadComplete:(id)arg0 ;
+(void)WebViewExposed_initComplete:(id)arg0 ;
+(void)WebViewExposed_setDebugMode:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_getDebugMode:(id)arg0 ;
+(void)WebViewExposed_logError:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_logWarning:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_logInfo:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_logDebug:(id)arg0 callback:(id)arg1 ;
+(void)WebViewExposed_reinitialize:(id)arg0 ;


@end


#endif