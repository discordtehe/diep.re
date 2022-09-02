// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINTERSTITIALDISPLAYADINTERNAL_H
#define FBINTERSTITIALDISPLAYADINTERNAL_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class FBInterstitialAdInternal;
@class FBAdViewInternal;
@protocol FBAdViewInternalDelegate;
@protocol FBAdViewDelegate;
@protocol FBInterstitialAdInternalDelegate;

@interface FBInterstitialDisplayAdInternal : FBInterstitialAdInternal <FBAdViewInternalDelegate, FBAdViewDelegate>



@property (nonatomic) BOOL isStatusBarHidden; // ivar: _isStatusBarHidden
@property (retain, nonatomic) FBAdViewInternal *adView; // ivar: _adView
@property (copy, nonatomic) NSString *placementID; // ivar: _placementID
@property (weak, nonatomic) NSObject<FBInterstitialAdInternalDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) UIViewController *viewControllerForPresentingModalView;


-(id)initWithPlacementID:(id)arg0 adData:(id)arg1 placementDefinition:(id)arg2 extraHint:(id)arg3 ;
-(void)dealloc;
-(BOOL)prefersStatusBarHidden;
-(NSUInteger)supportedInterfaceOrientations;
-(NSInteger)preferredInterfaceOrientationForPresentation;
-(id)adDataModel;
-(BOOL)isAdValid;
-(void)loadAd;
-(BOOL)showAdFromRootViewController:(id)arg0 ;
-(BOOL)showAdFromRootViewController:(id)arg0 animated:(BOOL)arg1 ;
-(void)viewWillAppear:(BOOL)arg0 ;
-(void)viewDidLoad;
-(struct CGRect )frameForPresentationInWindow:(id)arg0 ;
-(void)adView:(id)arg0 didFailWithError:(id)arg1 ;
-(void)adViewDidLoad:(id)arg0 ;
-(void)adViewDidClick:(id)arg0 ;
-(void)adViewWillLogImpression:(id)arg0 ;
-(void)adViewWillClose:(id)arg0 ;
-(void)exitInterstitial;
+(void)initialize;


@end


#endif