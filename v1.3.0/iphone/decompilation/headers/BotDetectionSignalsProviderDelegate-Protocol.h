// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol BotDetectionSignalsProviderDelegate


-(void)addLocationSignalsForSignalList:(id)arg0 toDictionary:(id)arg1 ;
-(void)addReachabilitySignalsForSignalList:(id)arg0 toDictionary:(id)arg1 ;
-(void)addBuildInfoSignalsForSignalList:(id)arg0 toDictionary:(id)arg1 ;
-(void)addTelephonySignalsForSignalList:(id)arg0 toDictionary:(id)arg1 usingDispatchGroup:(id)arg2 ;
-(id)bdTelephonySignals;
-(void)startTimerWithTimeInterval:(CGFloat)arg0 queue:(id)arg1 block:(id)arg2 ;
-(void)stopTimer;

@optional
-(void)addJailbrokenSignalsForSignalList:(id)arg0 toDictionary:(id)arg1 ;
@end

