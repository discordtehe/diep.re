// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADEVENTLOGGER_H
#define GADEVENTLOGGER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADObserverCollection;
@class GADScheduler;

@interface GADEventLogger : NSObject {
    GADObserverCollection *_observers;
    uint8_t _enabled;
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSMutableDictionary *_eventObserversMap;
    NSMutableArray *_enqueuedEvents;
    GADScheduler *_scheduler;
    CGFloat _flushBufferTimestamp;
    atomic_flag _didDropEvents;
    NSMutableDictionary *_requestEventsMap;
    BOOL _shouldBatchRequestEvents;
}


@property (readonly, nonatomic) BOOL enabled;


-(id)init;
-(BOOL)isNotificationLogged:(id)arg0 ;
-(void)enableLogging;
-(void)disableLogging;
-(void)startScheduler;
-(void)updateLoggingState;
-(void)updateBatchEvents;
-(void)updateEventObservers;
-(void)updateScheduler;
-(BOOL)flushEventsQueue;
-(void)handleNotificationName:(id)arg0 context:(id)arg1 userInfo:(id)arg2 ;
-(void)addEventsToQueue:(id)arg0 ;
-(void)addEventToRequestMap:(id)arg0 ;
+(id)sharedInstance;


@end


#endif