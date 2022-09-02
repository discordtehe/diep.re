// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADORIENTATIONMONITOR_H
#define GADORIENTATIONMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@class GADWebAdView;
@class GADFullScreenAdViewController;

@interface GADOrientationMonitor : NSObject {
    GADObserverCollection *_observers;
    GADWebAdView *_adView;
    GADFullScreenAdViewController *_viewController;
    BOOL _orientationNotifiedToTheAdViewAtLeastOnce;
    NSInteger _lastOrientation;
}




-(id)initWithAdView:(id)arg0 viewController:(id)arg1 ;
-(void)handleForceOrientationAction:(id)arg0 ;
-(void)handleOrientationDidChangeNotification:(NSInteger)arg0 ;


@end


#endif