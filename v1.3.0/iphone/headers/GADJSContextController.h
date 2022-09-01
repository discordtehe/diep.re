// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADJSCONTEXTCONTROLLER_H
#define GADJSCONTEXTCONTROLLER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADSDKCoreContext;
@class GADObserverCollection;
@class GADActiveViewContext;

@interface GADJSContextController : NSObject {
    GADSDKCoreContext *_activeSDKCoreContext;
    GADSDKCoreContext *_nextSDKCoreContext;
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSMutableArray *_SDKCoreLoadCompletionHandlers;
    atomic_flag _SDKCoreContextLoadInProgress;
    GADObserverCollection *_SDKCoreObservers;
    GADObserverCollection *_observers;
    NSMutableDictionary *_SDKCoreContextReferencedIDs;
    BOOL _activeViewContextLoadInProgress;
    NSMutableArray *_activeViewLoadCompletionHandlers;
    CGFloat _lastSDKCoreRetryTime;
    NSInteger _consecutiveSDKCoreTimeouts;
}


@property (readonly, nonatomic) GADSDKCoreContext *SDKCoreContext;
@property (readonly, nonatomic) GADActiveViewContext *activeViewContext; // ivar: _activeViewContext


-(id)init;
-(void)buildAdURLDidComplete;
-(void)buildAdURLDidTimeOut:(id)arg0 ;
-(void)handleSDKCoreProcessDidTerminate:(id)arg0 ;
-(void)asyncSDKCoreContext:(id)arg0 ;
-(void)handleRefreshAction:(id)arg0 ;
-(void)asyncActiveViewContext:(id)arg0 ;
-(void)refreshActiveViewContext;
+(id)sharedInstance;


@end


#endif