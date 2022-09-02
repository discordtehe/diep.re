// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCLOSEPRESENTERACTIONMONITOR_H
#define GADCLOSEPRESENTERACTIONMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@protocol GADPresenting;

@interface GADClosePresenterActionMonitor : NSObject {
    id<GADPresenting> *_presenter;
    GADObserverCollection *_observers;
}




-(id)initWithPresenter:(id)arg0 messageSource:(id)arg1 ;
-(void)handleCloseNotification;


@end


#endif