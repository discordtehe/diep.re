// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSTATUSBARMONITOR_H
#define GADSTATUSBARMONITOR_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADObserverCollection;

@interface GADStatusBarMonitor : NSObject {
    UIViewController *_viewController;
    GADObserverCollection *_observers;
}




-(id)initWithViewController:(id)arg0 ;
-(void)updateStatusBar;


@end


#endif