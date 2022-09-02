// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADVERIFICATIONREPORTER_H
#define GADADVERIFICATIONREPORTER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class GADOMIDAdSession;
@class GADObserverCollection;
@class GADWebViewController;

@interface GADAdVerificationReporter : NSObject {
    GADOMIDAdSession *_adSession;
    NSMutableArray *_monitoredViews;
    GADObserverCollection *_observers;
    UIView *_friendlyObstructionView;
    NSInteger _mediaType;
    UIView *_currentMonitoredView;
    GADWebViewController *_webViewController;
}




-(id)initWithWebViewController:(id)arg0 mediaType:(NSInteger)arg1 friendlyObstructionView:(id)arg2 ;
-(void)beginAdSession;
-(void)endAdSession;
-(void)setMonitoredView:(id)arg0 ;
-(void)addExpandView:(id)arg0 presenter:(id)arg1 ;
-(void)stopTrackingAdVerificationView:(id)arg0 ;
-(void)cleanUpDeallocatedMonitoredViews;


@end


#endif