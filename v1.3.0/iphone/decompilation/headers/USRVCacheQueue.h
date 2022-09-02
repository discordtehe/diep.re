// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVCACHEQUEUE_H
#define USRVCACHEQUEUE_H


#import <Foundation/Foundation.h>


@interface USRVCacheQueue : NSObject



+(void)start;
+(BOOL)download:(id)arg0 target:(id)arg1 headers:(id)arg2 append:(BOOL)arg3 ;
+(BOOL)downloadFile:(id)arg0 target:(id)arg1 headers:(id)arg2 append:(BOOL)arg3 ;
+(BOOL)hasOperations;
+(void)cancelAllDownloads;
+(void)setProgressInterval:(int)arg0 ;
+(int)getProgressInterval;
+(void)setConnectTimeout:(int)arg0 ;
+(int)getConnectTimeout;


@end


#endif