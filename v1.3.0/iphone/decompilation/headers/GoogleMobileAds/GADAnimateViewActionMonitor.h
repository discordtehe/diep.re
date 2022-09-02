// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADANIMATEVIEWACTIONMONITOR_H
#define GADANIMATEVIEWACTIONMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@class GADWebAdView;

@interface GADAnimateViewActionMonitor : NSObject {
    GADObserverCollection *_observers;
    GADWebAdView *_weakAdView;
}




-(id)initWithWebAdView:(id)arg0 messageSource:(id)arg1 ;
-(void)handleAnimationNotification:(id)arg0 ;
-(void)handleAnimations:(id)arg0 withDuration:(CGFloat)arg1 requestIdentifier:(id)arg2 ;


@end


#endif