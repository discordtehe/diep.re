// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADLOADMONITOR_H
#define GADADLOADMONITOR_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADObserverCollection;
@class GADScheduler;

@interface GADAdLoadMonitor : NSObject {
    GADObserverCollection *_observers;
    id *_completionHandler;
    NSUInteger _unmatchedStartDelayCount;
    BOOL _assetsDidFinishLoad;
    GADScheduler *_scheduler;
    BOOL _viewRenderedCheckComplete;
    UIView *_monitoredView;
}




-(id)initWithMessageSource:(id)arg0 view:(id)arg1 completionHandler:(id)arg2 ;
-(void)handleDelayLoadWithParameters:(id)arg0 ;
-(void)updateViewRenderedStatus;
-(void)assetsDidFinishLoadWithError:(id)arg0 ;
-(void)updateLoadStatusWithError:(id)arg0 ;
-(void)loadingAndRenderingCompletedWithError:(id)arg0 ;


@end


#endif