// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADJSCOREJSCONTEXT_H
#define GADJSCOREJSCONTEXT_H


#import <JavaScriptCore/JavaScriptCore.h>

@class GADJSContext;

@interface GADJSCoreJSContext : GADJSContext {
    JSVirtualMachine *_virtualMachine;
}


@property (readonly, nonatomic) JSContext *JSContext; // ivar: _JSContext


-(id)initWithEventContext:(id)arg0 ;
-(void)evaluateScript:(id)arg0 ;
-(void)asyncEvaluateFunction:(id)arg0 parameters:(id)arg1 ;
-(id)functionWithName:(id)arg0 ;


@end


#endif