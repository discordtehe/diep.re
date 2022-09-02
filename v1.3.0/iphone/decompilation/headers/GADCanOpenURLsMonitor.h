// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCANOPENURLSMONITOR_H
#define GADCANOPENURLSMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@protocol GADJavascriptEvaluating;

@interface GADCanOpenURLsMonitor : NSObject {
    id<GADJavascriptEvaluating> *_JSContext;
    GADObserverCollection *_observers;
}




-(id)initWithJSContext:(id)arg0 ;
-(void)handleCanOpenURLsAction:(id)arg0 ;


@end


#endif