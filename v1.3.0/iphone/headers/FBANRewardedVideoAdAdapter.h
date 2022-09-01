// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBANREWARDEDVIDEOADADAPTER_H
#define FBANREWARDEDVIDEOADADAPTER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class FBDisplayAdAdapter;
@class FBRewardedVideoRewardData;
@class FBAdChooseYourOwnAdViewController;
@class FBAdVideoAdViewController;
@class FBAdEndCardViewController;
@class FBAdPlayableViewController;
@class FBAdPlacementDefinition;
@class FBRewardedVideoAdDataModel;
@class FBAdChooseYourOwnAdDataModel;
@class FBAdExtraHint;
@class FBAdCommandProcessor;
@protocol FBAdChooseYourOwnAdViewControllerDelegate;
@protocol UINavigationControllerDelegate;
@protocol UIViewControllerTransitioningDelegate;
@protocol FBAdVideoAdViewControllerDelegate;
@protocol FBAdEndCardViewControllerDelegate;
@protocol FBAdPlayableViewControllerDelegate;

@interface FBANRewardedVideoAdAdapter : FBDisplayAdAdapter <FBAdChooseYourOwnAdViewControllerDelegate, UINavigationControllerDelegate, UIViewControllerTransitioningDelegate, FBAdVideoAdViewControllerDelegate, FBAdEndCardViewControllerDelegate, FBAdPlayableViewControllerDelegate>



@property (readonly, copy, nonatomic) NSString *placementID; // ivar: _placementID
@property (retain, nonatomic) FBRewardedVideoRewardData *internalRewardData; // ivar: _internalRewardData
@property (retain, nonatomic) UINavigationController *navigationController; // ivar: _navigationController
@property (retain, nonatomic) FBAdChooseYourOwnAdViewController *chooseYourOwnAdViewController; // ivar: _chooseYourOwnAdViewController
@property (retain, nonatomic) FBAdVideoAdViewController *videoAdViewController; // ivar: _videoAdViewController
@property (retain, nonatomic) FBAdEndCardViewController *endCardViewController; // ivar: _endCardViewController
@property (retain, nonatomic) FBAdPlayableViewController *playableController; // ivar: _playableController
@property (retain, nonatomic) FBAdPlacementDefinition *placementDefinition; // ivar: _placementDefinition
@property (copy, nonatomic) NSString *dataModelType; // ivar: _dataModelType
@property (retain, nonatomic) FBRewardedVideoAdDataModel *rewardedVideoDataModel; // ivar: _rewardedVideoDataModel
@property (retain, nonatomic) FBAdChooseYourOwnAdDataModel *chooseYourOwnAdDataModel; // ivar: _chooseYourOwnAdDataModel
@property (retain, nonatomic) FBAdExtraHint *extraHint; // ivar: _extraHint
@property (retain, nonatomic) FBAdCommandProcessor *commandProcessor; // ivar: _commandProcessor
@property (nonatomic) CGFloat firstImpressionTime; // ivar: _firstImpressionTime
@property (nonatomic) BOOL shouldProcessCommandOnSkippableOrEnd; // ivar: _shouldProcessCommandOnSkippableOrEnd
@property (copy, nonatomic) NSString *requestId; // ivar: _requestId
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)loadAdData:(id)arg0 forSize:(struct FBAdSize )arg1 forOrientation:(NSInteger)arg2 forPlacement:(id)arg3 placementDefinition:(id)arg4 dataModelType:(id)arg5 rewardData:(id)arg6 extraHint:(id)arg7 ;
-(void)mapCacheKeys:(id)arg0 ;
-(id)adDataModel;
-(BOOL)setRewardData:(id)arg0 ;
-(BOOL)startAdFromRootViewController:(id)arg0 ;
-(BOOL)startAdFromRootViewController:(id)arg0 animated:(BOOL)arg1 ;
-(struct ? )duration;
-(void)logAdapterLoaded;
-(void)rewardedVideoAdDidClick;
-(void)rewardedVideoAdDidClose;
-(void)rewardedVideoAdWillClose;
-(void)rewardedVideoAdDidLoad;
-(void)rewardedVideoAdDidFailWithError:(id)arg0 ;
-(void)rewardedVideoAdWillLogImpression;
-(void)rewardedVideoAdVideoComplete;
-(void)rewardedVideoAdServerSuccess;
-(void)rewardedVideoAdServerFailed;
-(void)setupViewControllerForDataModel:(id)arg0 ;
-(BOOL)isChooseYourOwnAd;
-(BOOL)isAdValid;
-(void)checkServerSideReward;
-(void)loadEndCard;
-(void)dismissControllerWithAdSuccess:(BOOL)arg0 ;
-(id)currentVideoController;
-(id)currentEndCardController;
-(void)processCommandURLfromDataModelExtraData:(id)arg0 openLinksFromDataModel:(BOOL)arg1 ;
-(void)processCommandURLIfWeShouldAtSkipOrEnd;
-(void)videoAdViewControllerDidLoad:(id)arg0 ;
-(void)videoAdViewController:(id)arg0 didFailWithError:(id)arg1 ;
-(void)videoAdViewControllerComplete:(id)arg0 ;
-(void)videoAdViewControllerSkipped:(id)arg0 ;
-(void)videoAdViewControllerWantsToLogImpression:(id)arg0 ;
-(void)videoAdViewControllerWillClose:(id)arg0 ;
-(void)videoAdViewControllerWantsToProcessCTA:(id)arg0 withEvent:(id)arg1 isDoneOrSkippable:(BOOL)arg2 ;
-(void)videoAdViewControllerDidBecomeSkippable:(id)arg0 ;
-(void)playableViewControllerDidLoad:(id)arg0 ;
-(void)playableViewController:(id)arg0 didFailWithError:(id)arg1 ;
-(void)playableViewControllerWillLogImpression:(id)arg0 ;
-(void)playableViewControllerDidClick:(id)arg0 ;
-(void)playableViewControllerComplete:(id)arg0 ;
-(void)playableViewControllerWillClose:(id)arg0 ;
-(void)playableViewControllerDidTerminate:(id)arg0 ;
-(void)endCardViewControllerDidClick:(id)arg0 ;
-(void)endCardViewControllerWillClose:(id)arg0 ;
-(void)endCardViewControllerDidTerminate:(id)arg0 ;
-(void)chooseYourOwnAdViewControllerDidLoad:(id)arg0 ;
-(void)chooseYourOwnAdViewController:(id)arg0 didSelectAd:(id)arg1 touchData:(id)arg2 ;
-(void)chooseYourOwnAdViewController:(id)arg0 didFailWithError:(id)arg1 ;
-(void)chooseYourOwnAdViewController:(id)arg0 wantsToFirePreviewImpressionForDataModel:(id)arg1 cardIndex:(NSInteger)arg2 ;
-(void)chooseYourOwnAdViewController:(id)arg0 offTargetTouch:(id)arg1 forModel:(id)arg2 ;
-(id)navigationController:(id)arg0 animationControllerForOperation:(NSInteger)arg1 fromViewController:(id)arg2 toViewController:(id)arg3 ;
-(id)animationControllerForPresentedController:(id)arg0 presentingController:(id)arg1 sourceController:(id)arg2 ;


@end


#endif