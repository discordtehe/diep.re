// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADGCACHE_H
#define GADGCACHE_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADObserverCollection;

@interface GADGCache : NSObject {
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSMutableDictionary *_filePathsToResourceBuffers;
    GADObserverCollection *_cacheMonitorObservers;
}




-(id)init;
-(void)loadGCacheURL:(id)arg0 queue:(id)arg1 completionHandler:(id)arg2 ;
-(void)loadGCacheURL:(id)arg0 withSDKCoreContext:(id)arg1 completionHandler:(id)arg2 ;
-(void)cacheMonitorDidStartCaching:(id)arg0 ;
-(void)cacheMonitorDidCompleteCaching:(id)arg0 ;
+(id)sharedInstance;


@end


#endif