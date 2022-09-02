// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADVERIFICATIONMONITOREDVIEW_H
#define GADADVERIFICATIONMONITOREDVIEW_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADObserverCollection;

@interface GADAdVerificationMonitoredView : NSObject {
    GADObserverCollection *_presenterDismissalObserverCollection;
}


@property (weak, nonatomic) UIView *monitoredView; // ivar: _monitoredView


-(id)initWithMonitoredView:(id)arg0 ;
-(void)addObserverForMonitoredViewDismissal:(id)arg0 dismissalBlock:(id)arg1 ;


@end


#endif