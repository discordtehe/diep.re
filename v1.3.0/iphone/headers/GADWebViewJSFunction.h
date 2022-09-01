// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADWEBVIEWJSFUNCTION_H
#define GADWEBVIEWJSFUNCTION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADJSFunction;
@class GADWebViewJSContext;
@class GADObserverCollection;

@interface GADWebViewJSFunction : GADJSFunction {
    NSString *_functionName;
    GADWebViewJSContext *_webViewJSContext;
    GADObserverCollection *_observers;
    NSMutableDictionary *_resultHandlers;
}




-(id)initWithFunctionName:(id)arg0 context:(id)arg1 ;
-(void)completeWithResultIdentifier:(id)arg0 result:(id)arg1 error:(id)arg2 ;
-(void)callWithArguments:(id)arg0 completionHandler:(id)arg1 ;


@end


#endif