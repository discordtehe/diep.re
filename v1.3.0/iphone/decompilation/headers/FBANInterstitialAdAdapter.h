// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBANINTERSTITIALADADAPTER_H
#define FBANINTERSTITIALADADAPTER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class FBDisplayAdAdapter;
@class FBAdEndCardViewController;
@class FBAdCommandProcessor;
@class FBAdExtraHint;
@class FBInterstitialAdInternal;
@protocol FBAdVideoAdViewControllerDelegate;
@protocol FBAdEndCardViewControllerDelegate;
@protocol FBAdDSLBridgeDelegate;
@protocol UINavigationControllerDelegate;
@protocol UIViewControllerTransitioningDelegate;
@protocol FBInterstitialAdInternalDelegate;

@interface FBANInterstitialAdAdapter : FBDisplayAdAdapter <FBAdVideoAdViewControllerDelegate, FBAdEndCardViewControllerDelegate, FBAdDSLBridgeDelegate, UINavigationControllerDelegate, UIViewControllerTransitioningDelegate, FBInterstitialAdInternalDelegate>



@property (copy, nonatomic) NSString *placementID; // ivar: _placementID
@property (retain, nonatomic) UINavigationController *navigationController; // ivar: _navigationController
@property (retain, nonatomic) FBAdEndCardViewController *endCardViewController; // ivar: _endCardViewController
@property (nonatomic) BOOL showEndCard; // ivar: _showEndCard
@property (retain, nonatomic) FBAdCommandProcessor *commandProcessor; // ivar: _commandProcessor
@property (nonatomic) CGFloat firstImpressionTime; // ivar: _firstImpressionTime
@property (retain, nonatomic) FBAdExtraHint *extraHint; // ivar: _extraHint
@property (copy, nonatomic) NSString *requestId; // ivar: _requestId
@property (retain, nonatomic) FBInterstitialAdInternal *target; // ivar: _target
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)loadAdData:(id)arg0 forSize:(struct FBAdSize )arg1 forOrientation:(NSInteger)arg2 forPlacement:(id)arg3 placementDefinition:(id)arg4 dataModelType:(id)arg5 rewardData:(id)arg6 extraHint:(id)arg7 ;
-(id)adDataModel;
-(BOOL)useNewToolbarInInterstitial;
-(BOOL)startAdFromRootViewController:(id)arg0 ;
-(BOOL)startAdFromRootViewController:(id)arg0 animated:(BOOL)arg1 ;
-(id)adView;
-(void)loadEndCard;
-(void)pushEndCardViewController;
-(void)dismissViewControllerAnimated;
-(void)logAdapterLoaded;
-(void)viewControllerWantToProcessCTAWithEvent:(id)arg0 ;
-(void)interstitialAdDidClick:(id)arg0 ;
-(void)interstitialAdDidClose:(id)arg0 ;
-(void)interstitialAdWillClose:(id)arg0 ;
-(void)interstitialAdDidLoad:(id)arg0 ;
-(void)interstitialAd:(id)arg0 didFailWithError:(id)arg1 ;
-(void)interstitialAdWillLogImpression:(id)arg0 ;
-(void)videoAdViewControllerDidLoad:(id)arg0 ;
-(void)videoAdViewController:(id)arg0 didFailWithError:(id)arg1 ;
-(void)videoAdViewControllerComplete:(id)arg0 ;
-(void)videoAdViewControllerSkipped:(id)arg0 ;
-(void)videoAdViewControllerWantsToLogImpression:(id)arg0 ;
-(void)videoAdViewControllerWillClose:(id)arg0 ;
-(void)videoAdViewControllerWantsToProcessCTA:(id)arg0 withEvent:(id)arg1 isDoneOrSkippable:(BOOL)arg2 ;
-(void)videoAdViewControllerDidBecomeSkippable:(id)arg0 ;
-(void)endCardViewControllerDidClick:(id)arg0 ;
-(void)endCardViewControllerWillClose:(id)arg0 ;
-(void)endCardViewControllerDidTerminate:(id)arg0 ;
-(id)navigationController:(id)arg0 animationControllerForOperation:(NSInteger)arg1 fromViewController:(id)arg2 toViewController:(id)arg3 ;
-(id)animationControllerForPresentedController:(id)arg0 presentingController:(id)arg1 sourceController:(id)arg2 ;
-(id)animationControllerForDismissedController:(id)arg0 ;
-(void)dynamicAdViewController:(id)arg0 didFailWithError:(id)arg1 ;
-(void)dynamicAdViewControllerDidLoad:(id)arg0 ;
-(void)dynamicAdViewControllerWantsToProcessCTA:(id)arg0 withEvent:(id)arg1 ;
-(void)dynamicAdViewControllerWillClose:(id)arg0 ;
+(void)initialize;


@end


#endif