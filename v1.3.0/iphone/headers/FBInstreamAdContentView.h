// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINSTREAMADCONTENTVIEW_H
#define FBINSTREAMADCONTENTVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBVideoAdContentView;
@class FBAdChoicesView;
@class FBInstreamCallToActionView;
@class FBAdCommandProcessor;
@class FBAdLabel;
@class FBInstreamSkipButtonView;
@class FBInstreamAdVideoView;
@protocol FBInstreamAdVideoViewDelegate;
@protocol FBAdChoicesViewDelegate;
@protocol FBAdCommandProcessorDelegate;

@interface FBInstreamAdContentView : FBVideoAdContentView <FBInstreamAdVideoViewDelegate, FBAdChoicesViewDelegate, FBAdCommandProcessorDelegate>



@property (retain, nonatomic) FBAdChoicesView *adChoicesView; // ivar: _adChoicesView
@property (retain, nonatomic) FBInstreamCallToActionView *callToActionView; // ivar: _callToActionView
@property (retain, nonatomic) FBAdCommandProcessor *commandProcessor; // ivar: _commandProcessor
@property (retain, nonatomic) FBAdLabel *countdownView; // ivar: _countdownView
@property (nonatomic) BOOL imagesLoaded; // ivar: _imagesLoaded
@property (nonatomic) NSUInteger lastRemainingTimeSeconds; // ivar: _lastRemainingTimeSeconds
@property (nonatomic) BOOL paused; // ivar: _paused
@property (retain, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (nonatomic) BOOL rootViewControllerPresenting; // ivar: _rootViewControllerPresenting
@property (nonatomic) ? skippableTime; // ivar: _skippableTime
@property (retain, nonatomic) FBInstreamSkipButtonView *skipButtonView; // ivar: _skipButtonView
@property (nonatomic) BOOL videoLoaded; // ivar: _videoLoaded
@property (retain, nonatomic) FBInstreamAdVideoView *videoView; // ivar: _videoView
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) UIViewController *viewControllerForPresentingModalView;


-(void)dealloc;
-(id)init;
-(float)volume;
-(BOOL)isAutoplay;
-(void)loadAdFromDataModel:(id)arg0 placementDefinition:(id)arg1 ;
-(void)registerLoaded;
-(void)startFromRootViewController:(id)arg0 ;
-(void)pause;
-(void)play;
-(void)pauseAndTellDelegate;
-(void)playAndTellDelegate;
-(struct ? )currentTime;
-(struct ? )duration;
-(void)layoutSubviews;
-(BOOL)skippable;
-(struct ? )skipRemainingTime;
-(void)addAdChoicesView;
-(void)addCountdownView;
-(void)addCallToActionView;
-(void)addObservers;
-(void)addSkipButton;
-(void)applicationWillResignActive:(id)arg0 ;
-(void)applicationDidBecomeActive:(id)arg0 ;
-(void)callToActionViewTapped:(id)arg0 ;
-(void)processCommand:(id)arg0 ;
-(void)cleanLayout;
-(void)removeObservers;
-(void)skipButtonViewTapped:(id)arg0 ;
-(NSUInteger)skipRemainingSeconds;
-(void)updateCountdownText;
-(void)updateSkipButtonRemainingTime;
-(void)adChoicesView:(id)arg0 willPresentViewController:(id)arg1 ;
-(void)adChoicesView:(id)arg0 viewControllerDismissed:(id)arg1 ;
-(void)willPresentViewController:(id)arg0 ;
-(void)viewControllerDismissed:(id)arg0 ;
-(id)commandProcessorTouchInformation:(id)arg0 ;
-(void)videoViewDidLoad:(id)arg0 ;
-(void)videoViewTapped:(id)arg0 ;
-(void)videoViewDidProgress:(id)arg0 ;
-(void)videoViewDidEnd:(id)arg0 ;
-(void)videoView:(id)arg0 didFailWithError:(id)arg1 ;


@end


#endif