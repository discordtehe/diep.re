// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol OMIDtapjoySessionEventsPublisher


-(void)publishInitWithConfiguration:(id)arg0 ;
-(void)publishStartEventWithAdSessionId:(id)arg0 JSONContext:(id)arg1 verificationParameters:(id)arg2 ;
-(void)publishErrorWithType:(NSUInteger)arg0 errorMessage:(id)arg1 ;
-(void)publishFinishEvent;

@end

