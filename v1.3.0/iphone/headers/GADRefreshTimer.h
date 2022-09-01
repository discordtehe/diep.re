// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADREFRESHTIMER_H
#define GADREFRESHTIMER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@class GADObserverCollection;

@interface GADRefreshTimer : NSObject {
    NSObject<OS_dispatch_queue> *_lockQueue;
    id *_refreshHandler;
    NSInteger _expirationIdentifier;
    CGFloat _resumeTimestamp;
    CGFloat _refreshInterval;
    CGFloat _remainingTimeInterval;
    BOOL _isStarted;
    BOOL _isPaused;
    BOOL _isInvalid;
    GADObserverCollection *_observers;
}




-(id)initWithRefreshInterval:(CGFloat)arg0 messageSource:(id)arg1 ;
-(void)setRefreshHandler:(id)arg0 ;
-(void)start;
-(void)startInternal;
-(void)resume;
-(void)resumeInternal;
-(void)pause;
-(void)pauseInternal;
-(void)expiredWithExpirationIdentifier:(NSInteger)arg0 ;
-(void)forceRefresh;


@end


#endif