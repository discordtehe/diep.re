// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADPLAYABLEVIEWCONTROLLER_H
#define FBADPLAYABLEVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdPlayableView;
@class FBPlayableIntroScreenView;
@class FBAdTimer;
@class FBAdReportingCoordinator;
@protocol FBAdReportingCoordinatorDelegate;
@protocol FBAdPlayableViewDelegate;
@protocol FBAdPlayableViewControllerDelegate;

@interface FBAdPlayableViewController : UIViewController <FBAdReportingCoordinatorDelegate, FBAdPlayableViewDelegate>



@property (weak, nonatomic) FBAdPlayableView *playableView; // ivar: _playableView
@property (weak, nonatomic) FBPlayableIntroScreenView *playableIntroScreenView; // ivar: _playableIntroScreenView
@property (retain, nonatomic) FBAdTimer *dismissIntroScreenTimer; // ivar: _dismissIntroScreenTimer
@property (nonatomic) BOOL hasAppearedBefore; // ivar: _hasAppearedBefore
@property (retain, nonatomic) FBAdReportingCoordinator *reportingCoordinator; // ivar: _reportingCoordinator
@property (copy, nonatomic) NSString *markup; // ivar: _markup
@property (readonly, nonatomic, getter=isTerminated) BOOL terminated;
@property (weak, nonatomic) NSObject<FBAdPlayableViewControllerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithPlacementID:(id)arg0 adData:(id)arg1 placementDefinition:(id)arg2 rootViewController:(id)arg3 ;
-(BOOL)prefersStatusBarHidden;
-(BOOL)shouldAutorotate;
-(NSUInteger)supportedInterfaceOrientations;
-(void)dismissIntroCard;
-(void)loadPlayableAd;
-(void)fetchMarkup;
-(void)viewWillLayoutSubviews;
-(void)viewWillAppear:(BOOL)arg0 ;
-(void)viewDidAppear:(BOOL)arg0 ;
-(void)notifyDelegateOfSuccess;
-(void)notifyDelegateOfFailureWithError:(id)arg0 ;
-(void)playableViewDidLoad:(id)arg0 ;
-(void)playableView:(id)arg0 didFailWithError:(id)arg1 ;
-(void)playableViewWillLogImpression:(id)arg0 ;
-(void)playableViewDidCompleteForcedView:(id)arg0 ;
-(void)playableViewClicked:(id)arg0 ;
-(void)playableViewWillClose:(id)arg0 ;
-(void)playableViewDidTerminate:(id)arg0 ;
-(void)adReportingCoordinatorDidCompleteFlow:(id)arg0 reason:(id)arg1 flowType:(NSInteger)arg2 ;
-(void)adReportingCoordinatorDidCloseWhyAmISeeingThis:(id)arg0 ;
-(void)adReportingCoordinatorDidCancelFlow:(id)arg0 ;
+(void)initialize;


@end


#endif