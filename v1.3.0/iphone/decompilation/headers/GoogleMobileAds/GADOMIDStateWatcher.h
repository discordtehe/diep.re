// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDSTATEWATCHER_H
#define GADOMIDSTATEWATCHER_H


#import <Foundation/Foundation.h>

@protocol GADOMIDStateWatcherDelegate;

@interface GADOMIDStateWatcher : NSObject

@property (readonly, nonatomic) BOOL appIsActive;
@property (readonly, nonatomic) NSUInteger appState; // ivar: _appState
@property (weak, nonatomic) NSObject<GADOMIDStateWatcherDelegate> *delegate; // ivar: _delegate


-(void)start;
-(void)stop;
-(void)adSessionDidBecomeActive:(id)arg0 ;
-(void)updateAppStateWithUIApplicationState:(NSInteger)arg0 ;
-(NSUInteger)appStateFromUIApplicationState:(NSInteger)arg0 ;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
-(CGFloat)deviceVolume;
-(void)onAppDidBecomeActive;
-(void)onAppWillResignActive;
-(void)onAppDidEnterBackground;
+(id)getInstance;


@end


#endif