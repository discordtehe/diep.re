// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADVIEWVISIBILITYMONITOR_H
#define GADVIEWVISIBILITYMONITOR_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADObserverCollection;
@class GADScheduler;

@interface GADViewVisibilityMonitor : NSObject {
    GADObserverCollection *_observers;
    GADScheduler *_updateVisibilityStatusScheduler;
    UIView *_monitoredView;
    id *_messageSource;
    BOOL _viewVisible;
    BOOL _overlayShown;
    NSObject<OS_dispatch_queue> *_lockQueue;
    NSDictionary *_previousViewabilityDictionary;
}




-(id)initWithView:(id)arg0 messageSource:(id)arg1 ;
-(void)registerOverlayViewObservers:(id)arg0 ;
-(void)dealloc;
-(void)setView:(id)arg0 ;
-(void)updateVisibilityStatus;


@end


#endif