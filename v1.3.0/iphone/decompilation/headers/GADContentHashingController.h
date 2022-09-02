// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCONTENTHASHINGCONTROLLER_H
#define GADCONTENTHASHINGCONTROLLER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@class GADContentQueue;
@class GADScheduler;
@class GADObserverCollection;
@protocol GADSignalSource;
@protocol GADSignal;

@interface GADContentHashingController : NSObject <GADSignalSource, GADSignal>

 {
    GADContentQueue *_contentQueue;
    GADScheduler *_scheduler;
    NSObject<OS_dispatch_queue> *_serialQueue;
    GADObserverCollection *_observers;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)fingerprintWithServedPenaltyDeduction;
-(void)startContentHashing;
-(void)stopContentHashing;
-(void)getSignalUpdateQueue:(*id)arg0 signalCreationBlock:(*id)arg1 ;
-(void)addSignalEntriesToMutableDictionary:(id)arg0 ;
+(id)sharedInstance;


@end


#endif