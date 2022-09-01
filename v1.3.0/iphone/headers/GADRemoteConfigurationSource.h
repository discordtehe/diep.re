// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADREMOTECONFIGURATIONSOURCE_H
#define GADREMOTECONFIGURATIONSOURCE_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADObserverCollection;

@interface GADRemoteConfigurationSource : NSObject {
    GADObserverCollection *_observers;
    BOOL _isConfigurationUpdatePublisherInitiated;
    BOOL _adMobAppIDChanged;
    BOOL _refreshIsInProgress;
    BOOL _didRefreshSinceAppStart;
    NSDate *_lastConfigurationRefreshTimestamp;
    BOOL _remoteConfigRefreshedSinceAppStart;
    NSObject<OS_dispatch_queue> *_lockQueue;
}


@property (readonly, nonatomic) BOOL didRefreshSinceAppStart;


-(id)init;
-(void)refreshFromPublisherRequest;
-(void)refresh;
-(void)refreshIfNeeded;
-(void)refreshWithCompletionHandler:(id)arg0 ;
-(void)processRemoteConfigurationResult:(id)arg0 error:(id)arg1 completionHandler:(id)arg2 ;
+(id)sharedInstance;


@end


#endif