// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMSCREENVIEWREPORTER_H
#define APMSCREENVIEWREPORTER_H

@protocol APMScreenViewReporterDelegate, OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class APMScreen;

@interface APMScreenViewReporter : NSObject {
    UIViewController *_currentViewController;
    id<APMScreenViewReporterDelegate> *_firebasePerfDelegate;
    APMScreen *_currentScreen;
    APMScreen *_previousScreen;
    BOOL _allowScreenParameters;
    BOOL _allowPostScreenDidChangeNotification;
    BOOL _allowScreenViewEvent;
    BOOL _isAppActive;
    NSInteger _currentScreenInstanceID;
    NSObject<OS_dispatch_queue> *_queue;
}




-(id)init;
-(void)dealloc;
-(BOOL)isAppActive;
-(void)getScreenName:(*id)arg0 screenClass:(*id)arg1 ;
-(void)setScreenName:(id)arg0 screenClass:(id)arg1 ;
-(id)screenParameters;
-(void)viewControllerDidAppear:(id)arg0 ;
-(void)viewControllerDidDisappear:(id)arg0 ;
-(void)setFirebasePerfDelegate:(id)arg0 ;
-(id)firebasePerfDelegate;
-(void)setCurrentViewController:(id)arg0 ;
-(void)postScreenDidChangeNotificationWithPreviousScreen:(id)arg0 newScreen:(id)arg1 ;
-(void)logViewScreenEventWithPreviousScreen:(id)arg0 newScreen:(id)arg1 ;
-(void)handleWindowDidResign:(id)arg0 ;
-(void)handleApplicationDidBecomeActive:(id)arg0 ;
-(void)handleApplicationWillResignActive:(id)arg0 ;
+(id)sharedInstance;
+(void)notCalled;


@end


#endif