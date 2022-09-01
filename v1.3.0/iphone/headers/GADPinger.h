// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADPINGER_H
#define GADPINGER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADURLSession;
@class GADWebViewPinger;
@class GADObserverCollection;

@interface GADPinger : NSObject {
    GADURLSession *_pingerSession;
    GADWebViewPinger *_webViewPinger;
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSMutableSet *_activeRetryURLStrings;
    GADObserverCollection *_observers;
    CGFloat _lastRetryAttemptInterval;
}




-(id)init;
-(void)pingRetryURLsIfTimeElapsed;
-(void)pingURL:(id)arg0 context:(id)arg1 queue:(id)arg2 completionBlock:(id)arg3 ;
-(void)pingRequest:(id)arg0 context:(id)arg1 queue:(id)arg2 completionBlock:(id)arg3 ;
-(void)storeRetryURL:(id)arg0 ;
-(void)pingRetryURLInternal:(id)arg0 ;
-(id)pendingRetryURLStrings;
-(void)savePendingRetryURLStrings:(id)arg0 ;
-(void)removeURLStringFromPendingRetryRequests:(id)arg0 ;
-(void)pingRetryURLs;
+(id)sharedInstance;


@end


#endif