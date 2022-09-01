// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVWEBREQUESTQUEUE_H
#define USRVWEBREQUESTQUEUE_H


#import <Foundation/Foundation.h>


@interface USRVWebRequestQueue : NSObject



+(void)start;
+(void)setConcurrentRequestCount:(int)arg0 ;
// +(void)requestUrl:(id)arg0 type:(id)arg1 headers:(id)arg2 completeBlock:(id)arg3 connectTimeout:(unk)arg4  ;
// +(void)requestUrl:(id)arg0 type:(id)arg1 headers:(id)arg2 body:(id)arg3 completeBlock:(id)arg4 connectTimeout:(unk)arg5  ;
+(BOOL)resolve:(id)arg0 completeBlock:(id)arg1 ;
+(void)cancelAllOperations;


@end


#endif