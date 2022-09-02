// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADREQUESTSTATISTICSSIGNALS_H
#define GADREQUESTSTATISTICSSIGNALS_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADAd;
@class GADObserverCollection;
@protocol GADSignal;
@protocol GADSignalSource;

@interface GADRequestStatisticsSignals : NSObject <GADSignal, GADSignalSource>

 {
    NSObject<OS_dispatch_queue> *_lockQueue;
    uint8_t _sequenceNumber;
    NSInteger _previousRequestCount;
    NSMutableDictionary *_applicationMetrics;
    NSMutableDictionary *_requestMetricsBySequenceNumber;
    NSMapTable *_adMetricsByAdContext;
    NSMutableDictionary *_unfinalizedAdsBySequenceNumber;
    GADAd *_appExitingAd;
    GADObserverCollection *_observers;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)observeRequests;
-(void)observeAppEvents;
-(void)observeAdEvents;
-(void)addSynchronizedObserverForName:(id)arg0 fromInstanceOfClass:(Class)arg1 block:(id)arg2 ;
-(NSInteger)nextSequenceNumber;
-(void)addServerRequest:(id)arg0 ;
-(void)setAds:(id)arg0 forRequest:(id)arg1 ;
-(id)knownAdContexts;
-(void)recordClickForAd:(id)arg0 ;
-(void)endClickEventForExitingAd;
-(void)endClickEventsForContext:(id)arg0 ;
-(void)resetQualitySessionIfNeeded;
-(void)setValue:(id)arg0 forRequest:(id)arg1 signal:(id)arg2 ;
-(BOOL)hasFinalizedStatisticsForSequenceNumber:(id)arg0 ;
-(void)cleanUpMetricsSentByRequest:(id)arg0 ;
-(id)adStatistics;
-(id)appStatistics;
-(void)updateRequestTimeMetrics;
-(void)addSignalEntriesToMutableDictionary:(id)arg0 ;
-(void)getSignalUpdateQueue:(*id)arg0 signalCreationBlock:(*id)arg1 ;
+(id)sharedInstance;


@end


#endif