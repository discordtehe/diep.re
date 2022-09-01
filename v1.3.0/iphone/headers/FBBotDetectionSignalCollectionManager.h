// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBBOTDETECTIONSIGNALCOLLECTIONMANAGER_H
#define FBBOTDETECTIONSIGNALCOLLECTIONMANAGER_H


#import <Foundation/Foundation.h>


@interface FBBotDetectionSignalCollectionManager : NSObject



+(id)loggerDelegate;
+(void)setLoggerDelegate:(id)arg0 ;
+(id)configDelegate;
+(void)setConfigDelegate:(id)arg0 ;
+(id)signalsDelegate;
+(void)setSignalsDelegate:(id)arg0 ;
+(id)dynamicLoadedLibraryProviderDelegate;
+(void)setDynamicLoadedLibraryProviderDelegate:(id)arg0 ;
+(void)loadBotDetection;
+(void)sendBotDetectionSignalsForEventId:(id)arg0 productType:(NSUInteger)arg1 eventType:(id)arg2 bdSessionIds:(id)arg3 ;
+(void)finalizeSignalsAndEvaluateLatestTierForEventId:(id)arg0 productType:(NSUInteger)arg1 eventType:(id)arg2 bdSessionIds:(id)arg3 ;


@end


#endif