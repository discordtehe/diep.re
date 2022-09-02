// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADINTERMISSIONSTATEMONITOR_H
#define GADINTERMISSIONSTATEMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@protocol GADPresenterSource;

@interface GADIntermissionStateMonitor : NSObject {
    GADObserverCollection *_observers;
    BOOL _idleTimerWasOriginallyDisabled;
    BOOL _statusBarWasOriginallyHidden;
    NSOperationQueue *_deactivationQueue;
    BOOL _applicationBackgroundedDueToAdAction;
}


@property (weak, nonatomic) NSObject<GADPresenterSource> *presenterSource; // ivar: _presenterSource


-(id)init;
-(void)intermissionDidBegin;
-(void)intermissionWillEnd;
-(void)setDeactivationQueueSuspended:(BOOL)arg0 ;
-(void)applicationWillEnterForeground;


@end


#endif