// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBBOTDETECTIONWHITEOPSSIGNALCOLLECTOR_H
#define FBBOTDETECTIONWHITEOPSSIGNALCOLLECTOR_H


#import <Foundation/Foundation.h>


@interface FBBotDetectionWhiteOpsSignalCollector : NSObject



+(void)initializeSignalCollectionWithConfigDelegate:(id)arg0 withSignalsDelegate:(id)arg1 withLoggerDelegate:(id)arg2 withDynamicLibraryProviderDelegate:(id)arg3 ;
+(void)finalizeSignalsAndSendUsingCompletionBlock:(id)arg0 ;
+(void)finalizeSignals:(id)arg0 withCompletionBlock:(id)arg1 ;
+(void)collectSignals:(id)arg0 withCompletionBlock:(id)arg1 ;
+(void)fetchUIScreenSignalsForSignalList:(id)arg0 ;
+(void)fetchUIDeviceSignalsForSignalList:(id)arg0 ;
+(void)fetchUIApplicationSignalsForSignalList:(id)arg0 ;
+(void)fetchBuildSignalsForSignalList:(id)arg0 ;
+(void)fetchProcessSignalsForSignalList:(id)arg0 ;
+(void)fetchSimulatorSignals:(id)arg0 ;
+(void)fetchBundleSignalsForSignalList:(id)arg0 ;
+(void)fetchOtherBackgroudThreadSignalsForSignalList:(id)arg0 ;
+(void)fetchOtherMainThreadSignalsForSignalList:(id)arg0 ;
+(void)fetchLocalAuthSignalsForSignalsList:(id)arg0 ;
+(void)fetchTelephonySignalsForSignalList:(id)arg0 usingDispatchGroup:(id)arg1 ;
+(void)fetchCameraSignalsForSignalList:(id)arg0 ;
+(void)fetchMotionSensorSignalsForSignalList:(id)arg0 ;
+(void)fetchLocationSignalsForSignalList:(id)arg0 ;
+(void)fetchBatterySignalsForSignalList:(id)arg0 ;
+(void)fetchAudioSignalsForSignalList:(id)arg0 ;
+(void)fetchNetworkingSignalsForSignalList:(id)arg0 ;
+(id)getIpAddresses;
+(BOOL)checkAvailabilityInObject:(id)arg0 forSelector:(SEL)arg1 forSignal:(id)arg2 ;
+(id)getAppSizeForBundlePath:(id)arg0 ;
+(id)getBootDate;
+(id)getDeviceName;
+(BOOL)deviceHasSimulatorProperties:(id)arg0 ;
+(void)populateSignal:(id)arg0 withValue:(id)arg1 ;
+(void)populateSignal:(id)arg0 withDictionaryValue:(id)arg1 ;


@end


#endif