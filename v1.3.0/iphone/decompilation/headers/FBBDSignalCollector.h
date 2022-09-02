// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBBDSIGNALCOLLECTOR_H
#define FBBDSIGNALCOLLECTOR_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBBDBiometricSignalsManager;
@protocol BotDetectionConfigProviderDelegate;
@protocol BotDetectionSignalsProviderDelegate;
@protocol BotDetectionSignalLoggerDelegate;
@protocol BotDetectionDynamicLoadedLibraryProviderDelegate;

@interface FBBDSignalCollector : NSObject {
    NSSet *_allSupportedSignals;
    BOOL _isSignalCollectorInitialized;
    id<BotDetectionConfigProviderDelegate> *_configDelegate;
    id<BotDetectionSignalsProviderDelegate> *_signalsDelegate;
    id<BotDetectionSignalLoggerDelegate> *_loggerDelegate;
    id<BotDetectionDynamicLoadedLibraryProviderDelegate> *_dynamicLoadedLibraryProviderDelegate;
    BOOL _isIntervalModeEnabled;
    NSUInteger _bufferSizeCurrent;
    FBBDBiometricSignalsManager *_biometricSignalManager;
    BOOL _isOffsite;
    NSMutableDictionary *_collectedSignalDict;
    NSObject<OS_dispatch_queue> *_signalCollectionQueue;
}




-(id)initWithConfigDelegate:(id)arg0 withSignalsDelegate:(id)arg1 withLoggerDelegate:(id)arg2 withDynamicLibraryProviderDelegate:(id)arg3 withAppSessionId:(id)arg4 ;
-(void)finalizeSignalsAndSendUsingCompletionBlock:(id)arg0 ;
-(void)sendSignalsWithCompletionBlock:(id)arg0 ;
-(void)collectStaticSignals;
-(void)collectDynamicSignals;
-(BOOL)isSignalEnabledForCurrentTierWithSignalFlags:(NSUInteger)arg0 ;


@end


#endif