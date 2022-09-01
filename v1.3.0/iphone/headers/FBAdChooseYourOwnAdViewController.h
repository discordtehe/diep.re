// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCHOOSEYOUROWNADVIEWCONTROLLER_H
#define FBADCHOOSEYOUROWNADVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class FBAdChooseYourOwnAdDataModel;
@class FBAdCloseButton;
@class FBAdTimer;
@class FBAdChooseYourOwnAdCard;
@class FBAdReportingCoordinator;
@class FBAdTouchRecordingView;
@protocol FBAdChooseYourOwnAdCardDelegate;
@protocol FBAdReportingCoordinatorDelegate;
@protocol FBAdSafariViewControllerDelegate;
@protocol FBAdTouchRecordingViewDelegate;
@protocol FBAdCardToFullscreenTransitionable;
@protocol FBAdChooseYourOwnAdViewControllerDelegate;

@interface FBAdChooseYourOwnAdViewController : UIViewController <FBAdChooseYourOwnAdCardDelegate, FBAdReportingCoordinatorDelegate, FBAdSafariViewControllerDelegate, FBAdTouchRecordingViewDelegate, FBAdCardToFullscreenTransitionable>



@property (retain, nonatomic) FBAdChooseYourOwnAdDataModel *model; // ivar: _model
@property (retain, nonatomic) FBAdCloseButton *countdownCircle; // ivar: _countdownCircle
@property (retain, nonatomic) UILabel *countdownLabel; // ivar: _countdownLabel
@property (retain, nonatomic) UILabel *titleLabel; // ivar: _titleLabel
@property (retain, nonatomic) NSMutableArray *cards; // ivar: _cards
@property (weak, nonatomic) NSObject<FBAdChooseYourOwnAdViewControllerDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) FBAdTimer *countdownTimer; // ivar: _countdownTimer
@property (nonatomic) NSInteger msPassed; // ivar: _msPassed
@property (readonly, nonatomic) NSInteger secondsLeft;
@property (nonatomic) BOOL hasTimedOut; // ivar: _hasTimedOut
@property (nonatomic) BOOL isPresentingReportFlow; // ivar: _isPresentingReportFlow
@property (retain, nonatomic) FBAdChooseYourOwnAdCard *chosenCard; // ivar: _chosenCard
@property (retain, nonatomic) FBAdReportingCoordinator *reportingCoordinator; // ivar: _reportingCoordinator
@property (retain, nonatomic) FBAdChooseYourOwnAdCard *potentialReportedCard; // ivar: _potentialReportedCard
@property (retain, nonatomic) NSMutableSet *reportedAds; // ivar: _reportedAds
@property (nonatomic) CGFloat previewImpressionTime; // ivar: _previewImpressionTime
@property (retain, nonatomic) FBAdTouchRecordingView *offTargetClickView; // ivar: _offTargetClickView
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) UIView *mainView;
@property (readonly, nonatomic) UIImage *targetImage;
@property (readonly, nonatomic) UIView *targetView;
@property (readonly, nonatomic) CGRect targetFrame;


-(id)initWithModel:(id)arg0 delegate:(id)arg1 ;
-(void)setupWithModel:(id)arg0 ;
-(void)dealloc;
-(void)prefetchVideosAndImagesForDataModel:(id)arg0 ;
-(void)updateCountdownLabelText;
-(void)handleTimeout;
-(NSInteger)defaultAdIndexOrFirstNonReported;
-(NSInteger)firstNonReportedIndex;
-(void)tellDelegateModelWasChosen:(id)arg0 touchData:(id)arg1 ;
-(void)startTimerAndCardAnimations;
-(void)startTimer;
-(void)stopTimerAndCardAnimations;
-(void)stopTimer;
-(void)startCardAnimations;
-(void)stopCardAnimations;
-(void)animateCard:(id)arg0 animationDuration:(CGFloat)arg1 startTransform:(struct CATransform3D )arg2 endTransform:(struct CATransform3D )arg3 ;
-(void)firstTimeVisibleActions;
-(void)touchRecordingView:(id)arg0 didUpdateLastTouchData:(id)arg1 ;
-(void)viewDidAppear:(BOOL)arg0 ;
-(void)viewWillDisappear:(BOOL)arg0 ;
-(void)applicationWillResignActive:(id)arg0 ;
-(void)applicationDidBecomeActive:(id)arg0 ;
-(void)removeObservers;
-(void)addObservers;
-(void)viewWillLayoutSubviews;
-(BOOL)prefersStatusBarHidden;
-(id)dataModelForCard:(id)arg0 ;
-(void)didExitReportFlow;
-(void)didReportAdForCard:(id)arg0 reason:(id)arg1 flowType:(NSInteger)arg2 ;
-(BOOL)allAdsAreReported;
-(id)generateLoggingDataWithExtraData:(id)arg0 ;
-(void)didSelectCard:(id)arg0 touchData:(id)arg1 ;
-(void)didSelectReportAdForCard:(id)arg0 ;
-(void)adReportingCoordinatorDidCompleteFlow:(id)arg0 reason:(id)arg1 flowType:(NSInteger)arg2 ;
-(void)adReportingCoordinatorDidCancelFlow:(id)arg0 ;
-(void)adReportingCoordinatorDidCloseWhyAmISeeingThis:(id)arg0 ;
-(void)viewControllerDismissed:(id)arg0 ;


@end


#endif