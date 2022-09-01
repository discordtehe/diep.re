// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSCROLLMONITOR_H
#define GADSCROLLMONITOR_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADScheduler;

@interface GADScrollMonitor : NSObject {
    GADScheduler *_updateScrollStatusScheduler;
    UIView *_monitoredView;
    id *_messageSource;
    CGRect _lastMonitoredViewBounds;
}




-(id)initWithView:(id)arg0 messageSource:(id)arg1 ;
-(void)updateScrollStatus;


@end


#endif