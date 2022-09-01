// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADFULLSCREENPROPERTIESACTIONMONITOR_H
#define GADFULLSCREENPROPERTIESACTIONMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@class GADFullScreenAdViewController;

@interface GADFullScreenPropertiesActionMonitor : NSObject {
    GADObserverCollection *_observers;
    GADFullScreenAdViewController *_viewController;
}




-(id)initWithFullScreenViewController:(id)arg0 messageSource:(id)arg1 ;
-(void)handleSetFullScreenPropertiesAction:(id)arg0 ;


@end


#endif