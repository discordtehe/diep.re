// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOPENGLMONITOR_H
#define GADOPENGLMONITOR_H


#import <Foundation/Foundation.h>

@class GADWebAdView;
@class GADFullScreenAdViewController;
@class GADObserverCollection;

@interface GADOpenGLMonitor : NSObject {
    GADWebAdView *_webAdView;
    GADFullScreenAdViewController *_presenter;
    GADObserverCollection *_observers;
}




-(id)initWithPresenter:(id)arg0 webAdView:(id)arg1 ;
-(void)applicationWillResignActive;
-(void)applicationDidBecomeActive;


@end


#endif