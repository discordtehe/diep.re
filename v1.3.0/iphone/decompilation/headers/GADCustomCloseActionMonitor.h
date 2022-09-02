// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCUSTOMCLOSEACTIONMONITOR_H
#define GADCUSTOMCLOSEACTIONMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@class GADCloseButton;
@protocol GADEventContextSource;

@interface GADCustomCloseActionMonitor : NSObject {
    GADObserverCollection *_observers;
    GADCloseButton *_closeButton;
    BOOL _customCloseBlocked;
    id<GADEventContextSource> *_messageSource;
}




-(id)initWithCloseButton:(id)arg0 messageSource:(id)arg1 customCloseBlocked:(BOOL)arg2 ;
-(void)handleUpdateCustomCloseAction:(id)arg0 ;


@end


#endif