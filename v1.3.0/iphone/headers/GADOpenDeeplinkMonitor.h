// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOPENDEEPLINKMONITOR_H
#define GADOPENDEEPLINKMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@class GADAd;
@class GADClickProtection;
@protocol GADJavascriptEvaluating;

@interface GADOpenDeeplinkMonitor : NSObject {
    GADObserverCollection *_observers;
    GADAd *_ad;
    GADClickProtection *_clickProtection;
    id<GADJavascriptEvaluating> *_messageSource;
}




-(id)initWithAd:(id)arg0 messageSource:(id)arg1 clickProtection:(id)arg2 ;
-(void)handleOpenDeeplinkAction:(id)arg0 ;
-(void)handleDeeplinkPlusAction:(id)arg0 ;


@end


#endif