// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADACTIVEVIEWMONITOR_H
#define GADACTIVEVIEWMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@class GADScheduler;
@class GADActiveViewReporter;

@interface GADActiveViewMonitor : NSObject {
    GADObserverCollection *_observers;
    GADScheduler *_updateActiveViewStatusScheduler;
    GADActiveViewReporter *_activeViewReporter;
}




-(id)initWithAd:(id)arg0 viewMessageSource:(id)arg1 webAdView:(id)arg2 adFormat:(id)arg3 analyticsLoggingEnabled:(BOOL)arg4 activeViewConfiguration:(id)arg5 ;
-(void)dealloc;


@end


#endif