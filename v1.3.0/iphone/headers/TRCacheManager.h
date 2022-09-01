// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TRCACHEMANAGER_H
#define TRCACHEMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class TRObjectStore;
@class TREvent;
@protocol FlushEventsDelegate;

@interface TRCacheManager : NSObject

@property (retain, nonatomic) NSMutableArray *events; // ivar: _events
@property (nonatomic) NSInteger retryCount; // ivar: _retryCount
@property (retain, nonatomic) NSObject<FlushEventsDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) TRObjectStore *objectStore; // ivar: _objectStore
@property (nonatomic) TREvent *crashEvent; // ivar: _crashEvent


-(id)initWithFlushEventsDelegate:(id)arg0 ;
-(void)sendEventsSuccess;
-(void)sendEventsFail;
-(void)addEvent:(id)arg0 ;
-(void)cacheEvents;
-(id)availableCachedEvents;
-(void)cacheCrashEvent:(id)arg0 ;


@end


#endif