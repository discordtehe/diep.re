// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVWKWEBVIEWUTILITIES_H
#define USRVWKWEBVIEWUTILITIES_H


#import <Foundation/Foundation.h>


@interface USRVWKWebViewUtilities : NSObject



+(id)initWebView:(char *)arg0 frame:(struct CGRect )arg1 configuration:(id)arg2 ;
+(void)removeUserContentControllerMessageHandler:(id)arg0 handledMessages:(id)arg1 ;
+(id)addUserContentControllerMessageHandlers:(id)arg0 delegate:(id)arg1 handledMessages:(id)arg2 ;
+(void)loadUrl:(id)arg0 url:(id)arg1 ;
+(void)evaluateJavaScript:(id)arg0 string:(id)arg1 ;
+(BOOL)loadFileUrl:(id)arg0 url:(id)arg1 allowReadAccess:(id)arg2 ;
+(BOOL)loadData:(id)arg0 data:(id)arg1 mimeType:(id)arg2 encoding:(id)arg3 baseUrl:(id)arg4 ;
+(id)getObjectFromClass:(char *)arg0 ;
+(BOOL)isFrameworkPresent;


@end


#endif