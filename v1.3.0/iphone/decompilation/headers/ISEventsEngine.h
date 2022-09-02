// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISEVENTSENGINE_H
#define ISEVENTSENGINE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ISDefaultEventStorageHelper;
@protocol ISEventManagerProtocol;
@protocol ISEventsFormatterProtocol;

@interface ISEventsEngine : NSObject <ISEventManagerProtocol>



@property (copy, nonatomic) NSString *identifier; // ivar: _identifier
@property (copy, nonatomic) NSString *sessionId; // ivar: _sessionId
@property (nonatomic) NSUInteger totalEvents; // ivar: _totalEvents
@property (retain, nonatomic) NSSet *connectivitySensitiveEventsSet; // ivar: _connectivitySensitiveEventsSet
@property (retain, nonatomic) ISDefaultEventStorageHelper *storage; // ivar: _storage
@property (retain, nonatomic) NSURL *serverEventsURL; // ivar: _serverEventsURL
@property (nonatomic) NSUInteger backupThreshold; // ivar: _backupThreshold
@property (nonatomic) NSUInteger maxNumberOfEvents; // ivar: _maxNumberOfEvents
@property (nonatomic) BOOL eventsEnabled; // ivar: _eventsEnabled
@property (retain, nonatomic) NSObject<ISEventsFormatterProtocol> *formatter; // ivar: _formatter
@property (copy, nonatomic) NSString *serverEventsType; // ivar: _serverEventsType
@property (retain, nonatomic) NSMutableArray *localEvents; // ivar: _localEvents
@property (retain, nonatomic) NSOperationQueue *queue; // ivar: _queue
@property (retain, nonatomic) NSArray *optOut; // ivar: _optOut
@property (nonatomic) NSUInteger maxEventsPerBatch; // ivar: _maxEventsPerBatch
@property (nonatomic) BOOL gotResponse; // ivar: _gotResponse
@property (nonatomic) BOOL hasTopPriortyEvent; // ivar: _hasTopPriortyEvent
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithIdentifier:(id)arg0 formatter:(id)arg1 server:(id)arg2 ;
-(void)initSessionWithUrl:(id)arg0 maxEvents:(NSInteger)arg1 threshold:(NSInteger)arg2 andIsActive:(BOOL)arg3 serverEventsType:(id)arg4 optOut:(id)arg5 maxEventsPerBatch:(NSUInteger)arg6 ;
-(void)verifyFormatter:(id)arg0 ;
-(void)addSegmentDataToBatch:(id)arg0 ;
-(id)generateEventBatchData;
-(BOOL)increaseSessionDepthIfNeeded:(id)arg0 ;
-(NSUInteger)getSessionDepth:(id)arg0 ;
-(void)addObject:(id)arg0 forKey:(id)arg1 inDic:(id)arg2 ;
-(BOOL)shouldSendEvents:(id)arg0 ;
-(BOOL)shouldBackupEvents:(id)arg0 ;
-(BOOL)shouldIncreaseSessionDepth:(id)arg0 ;
-(BOOL)isTopPriorty:(id)arg0 ;
-(void)logEvent:(id)arg0 ;
-(void)sendEvents;
-(void)backUpEvents;
-(id)splitEventsArray:(id)arg0 ;
-(id)sortArrayByTimestemps:(id)arg0 ;
-(void)initConnectivityEventsSet;
-(void)log:(id)arg0 ;
-(void)addEvent:(id)arg0 ;
-(void)addEvents:(id)arg0 ;
-(id)pullLocalEvents;
-(BOOL)shouldEventBeLogged:(id)arg0 ;
-(BOOL)isNoConnectivityEvent:(id)arg0 ;
-(id)adjustEventToNoConnectivity:(id)arg0 ;
-(BOOL)shouldAddSessionDepth:(id)arg0 ;
-(void)sendEvent:(id)arg0 toUrl:(id)arg1 ;


@end


#endif