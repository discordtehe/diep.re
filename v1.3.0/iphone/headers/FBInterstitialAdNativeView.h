// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINTERSTITIALADNATIVEVIEW_H
#define FBINTERSTITIALADNATIVEVIEW_H

@class UIView<FBAdDisplayable>;

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBAdReportingCoordinator;
@class FBNativeAdDataModel;
@class FBInterstitialAdToolbarView;
@protocol FBAdDisplayableViewDelegate;
@protocol FBInterstitialAdToolbarViewDelegate;
@protocol FBAdReportingCoordinatorDelegate;
@protocol FBAdDisplayable;
@protocol FBInterstitialAdNativeViewDelegate;

@interface FBInterstitialAdNativeView : UIView <FBAdDisplayableViewDelegate, FBInterstitialAdToolbarViewDelegate, FBAdReportingCoordinatorDelegate, FBAdDisplayable>



@property (retain, nonatomic) FBAdReportingCoordinator *reportingCoordinator; // ivar: _reportingCoordinator
@property (weak, nonatomic) NSObject<FBInterstitialAdNativeViewDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) FBNativeAdDataModel *dataModel; // ivar: _dataModel
@property (weak, nonatomic) FBInterstitialAdToolbarView *toolbarView; // ivar: _toolbarView
@property (weak, nonatomic) UIView<FBAdDisplayable> *adContentView; // ivar: _adContentView
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (nonatomic) BOOL canPlayVideo;
@property (readonly, nonatomic) ? currentTime;


-(void)loadAdFromDataModel:(id)arg0 placementDefinition:(id)arg1 carouselPageNumber:(id)arg2 totalPages:(id)arg3 ;
-(void)loadAdFromDataModel:(id)arg0 placementDefinition:(id)arg1 ;
-(BOOL)shouldShowWatchAndInstall;
-(BOOL)shouldShowWatchAndBrowse;
-(void)layoutSubviews;
-(void)showAd;
-(void)destroyAd;
-(void)setPlaying:(BOOL)arg0 forced:(BOOL)arg1 ;
-(void)configureVolume:(CGFloat)arg0 ;
-(void)adDisplayableViewDidLoad:(id)arg0 ;
-(void)adDisplayableViewDidLogImpression:(id)arg0 withViewabilityValidator:(id)arg1 withPageNumber:(id)arg2 withPageTotal:(id)arg3 ;
-(void)adDisplayableViewDidClick:(id)arg0 withEvent:(id)arg1 withCommand:(id)arg2 skipAppStore:(BOOL)arg3 withPageNumber:(id)arg4 withPageTotal:(id)arg5 ;
-(void)adDisplayableViewDidClick:(id)arg0 withEvent:(id)arg1 withCommand:(id)arg2 skipAppStore:(BOOL)arg3 withPageNumber:(id)arg4 withPageTotal:(id)arg5 completionHandler:(id)arg6 ;
-(void)adDisplayableViewDidInteract:(id)arg0 withTouchData:(id)arg1 touchType:(id)arg2 withCommand:(id)arg3 skipAppStore:(BOOL)arg4 withPageNumber:(id)arg5 withPageTotal:(id)arg6 completionHandler:(id)arg7 ;
-(void)adDisplayableViewDidProgress:(id)arg0 ;
-(void)adDisplayableViewDidEnd:(id)arg0 ;
-(void)adDisplayableView:(id)arg0 didFailWithError:(id)arg1 ;
-(id)interstitialAdToolbarRootViewControllerForAdChoicesPresentation:(id)arg0 ;
-(void)interstitialAdToolbarDidClose:(id)arg0 withTouchData:(id)arg1 ;
-(void)interstitialAdToolbarDidTapAdChoices:(id)arg0 ;
-(void)interstitialAdToolbarDidCloseAdChoices:(id)arg0 ;
-(void)interstitialAdToolbarDidTapAdInfo:(id)arg0 ;
-(void)adReportingCoordinatorDidCompleteFlow:(id)arg0 reason:(id)arg1 flowType:(NSInteger)arg2 ;
-(void)adReportingCoordinatorDidCancelFlow:(id)arg0 ;
-(void)adReportingCoordinatorDidCloseWhyAmISeeingThis:(id)arg0 ;


@end


#endif