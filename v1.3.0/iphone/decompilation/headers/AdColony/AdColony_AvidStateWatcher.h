// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDSTATEWATCHER_H
#define ADCOLONY_AVIDSTATEWATCHER_H


#import <Foundation/Foundation.h>

@protocol AdColony_AvidStateWatcherDelegate;

@interface AdColony_AvidStateWatcher : NSObject {
    BOOL _isStarted;
    NSInteger _state;
}


@property (readonly, nonatomic) BOOL appIsActive;
@property (readonly, nonatomic) NSInteger appState;
@property (weak, nonatomic) NSObject<AdColony_AvidStateWatcherDelegate> *delegate; // ivar: _delegate


-(void)setup;
-(void)start;
-(void)stop;
-(void)notifyAppStateChanged;
-(void)onAppDidBecomeActive;
-(void)onAppWillResignActive;
-(void)onAppDidEnterBackground;
-(void)onAppStateChanged;
+(id)getInstance;


@end


#endif