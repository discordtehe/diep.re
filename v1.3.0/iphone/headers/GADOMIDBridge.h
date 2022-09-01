// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDBRIDGE_H
#define GADOMIDBRIDGE_H


#import <Foundation/Foundation.h>

@protocol GADOMIDCommandPublisher;
@protocol GADOMIDSessionEventsPublisher;
@protocol GADOMIDAdEventsPublisher;
@protocol GADOMIDVideoEventsPublisher;
@protocol GADOMIDJSExecutor;

@interface GADOMIDBridge : NSObject <GADOMIDCommandPublisher, GADOMIDSessionEventsPublisher, GADOMIDAdEventsPublisher, GADOMIDVideoEventsPublisher>



@property (readonly, nonatomic) NSObject<GADOMIDJSExecutor> *jsExecutor; // ivar: _jsExecutor
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
-(id)getStringOwner:(NSUInteger)arg0 ;


@end


#endif