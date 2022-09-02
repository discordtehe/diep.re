// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCJSCOREMODULE_H
#define ADCJSCOREMODULE_H


#import <JavaScriptCore/JavaScriptCore.h>

@class ADCModule;

@interface ADCJSCoreModule : ADCModule

@property (retain, nonatomic) JSContext *context; // ivar: _context
@property (nonatomic) BOOL reverseMessagePassign; // ivar: _reverseMessagePassign
@property (retain, nonatomic) JSValue *sessionCallback; // ivar: _sessionCallback
@property (retain, nonatomic) JSValue *directMessageHandler; // ivar: _directMessageHandler


-(id)initWithSource:(id)arg0 originNumber:(NSUInteger)arg1 info:(id)arg2 ;
-(void)queueMessage:(id)arg0 ;
-(void)queueMessages:(id)arg0 ;
-(id)replaceSingleQuotesInString:(id)arg0 ;
-(void)evaluateJavascriptString:(id)arg0 ;
-(id)valueEvaluatingJavascriptString:(id)arg0 ;
-(BOOL)checkSentinel;
-(void)beginMessagePassing:(id)arg0 ;
-(id)preparePumpMessageString;
-(id)preparePumpMessageArray;
-(id)receiveInboundMessages:(id)arg0 error:(*id)arg1 ;
-(void)pumpMessages:(id)arg0 ;
-(void)onMessagePumpError:(id)arg0 ;
-(void)dealloc;


@end


#endif