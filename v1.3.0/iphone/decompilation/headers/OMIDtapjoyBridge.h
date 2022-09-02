// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OMIDTAPJOYBRIDGE_H
#define OMIDTAPJOYBRIDGE_H


#import <Foundation/Foundation.h>

@protocol OMIDtapjoyCommandPublisher;
@protocol OMIDtapjoySessionEventsPublisher;
@protocol OMIDtapjoyAdEventsPublisher;
@protocol OMIDtapjoyVideoEventsPublisher;
@protocol OMIDtapjoyJSExecutor;

@interface OMIDtapjoyBridge : NSObject <OMIDtapjoyCommandPublisher, OMIDtapjoySessionEventsPublisher, OMIDtapjoyAdEventsPublisher, OMIDtapjoyVideoEventsPublisher>



@property (readonly, nonatomic) NSObject<OMIDtapjoyJSExecutor> *jsExecutor; // ivar: _jsExecutor
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithJSExecutor:(id)arg0 ;
-(void)publishCommand:(id)arg0 ;
-(void)internal_publishCommand:(id)arg0 ;
-(void)publishInitWithConfiguration:(id)arg0 ;
-(void)publishStartEventWithAdSessionId:(id)arg0 JSONContext:(id)arg1 verificationParameters:(id)arg2 ;
-(void)publishErrorWithType:(NSUInteger)arg0 errorMessage:(id)arg1 ;
-(void)publishFinishEvent;
-(void)publishImpressionEvent;
-(void)publishVideoEventWithName:(id)arg0 parameters:(id)arg1 ;
-(void)publishEventWithName:(id)arg0 parameters:(id)arg1 commandName:(id)arg2 ;
-(id)getStringError:(NSUInteger)arg0 ;
-(id)getStringOwner:(NSUInteger)arg0 ;


@end


#endif