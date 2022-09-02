// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADJSCOREJSFUNCTION_H
#define GADJSCOREJSFUNCTION_H


#import <JavaScriptCore/JavaScriptCore.h>

@class GADJSFunction;

@interface GADJSCoreJSFunction : GADJSFunction {
    JSValue *_functionValue;
}




-(id)initWithFunctionValue:(id)arg0 ;
-(void)callWithArguments:(id)arg0 completionHandler:(id)arg1 ;


@end


#endif