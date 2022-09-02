// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVAPIREQUEST_H
#define USRVAPIREQUEST_H


#import <Foundation/Foundation.h>


@interface USRVApiRequest : NSObject



+(void)WebViewExposed_get:(id)arg0 url:(id)arg1 headers:(id)arg2 connectTimeout:(id)arg3 callback:(id)arg4 ;
+(void)WebViewExposed_head:(id)arg0 url:(id)arg1 headers:(id)arg2 connectTimeout:(id)arg3 callback:(id)arg4 ;
+(void)WebViewExposed_post:(id)arg0 url:(id)arg1 body:(id)arg2 headers:(id)arg3 connectTimeout:(id)arg4 callback:(id)arg5 ;
+(void)WebViewExposed_setConcurrentRequestCount:(id)arg0 callback:(id)arg1 ;
+(id)getHeadersMap:(id)arg0 ;
+(id)getHeadersArray:(id)arg0 ;
+(void)sendSuccess:(id)arg0 url:(id)arg1 response:(id)arg2 responseCode:(NSInteger)arg3 headers:(id)arg4 ;
+(void)sendFailed:(id)arg0 url:(id)arg1 error:(id)arg2 ;


@end


#endif