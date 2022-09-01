// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCONTENTSIZEMONITOR_H
#define GADCONTENTSIZEMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@class GADAd;
@class GADWebViewController;

@interface GADContentSizeMonitor : NSObject {
    GADObserverCollection *_observers;
    GADAd *_ad;
    GADWebViewController *_webViewController;
    CGFloat _lastObservedContentHeight;
}




-(id)initWithWebAdView:(id)arg0 ad:(id)arg1 ;
-(void)updateContentHeightWithCompletionHandler:(id)arg0 ;
-(void)updateContentHeight:(CGFloat)arg0 ;


@end


#endif