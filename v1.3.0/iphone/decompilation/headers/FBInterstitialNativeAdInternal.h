// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINTERSTITIALNATIVEADINTERNAL_H
#define FBINTERSTITIALNATIVEADINTERNAL_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBInterstitialAdInternal;
@class FBNativeAdDataModel;
@class FBAdPlacementDefinition;
@class FBAdCommandProcessor;
@class FBInterstitialAdNativeView;
@class FBAdExtraHint;
@protocol FBAdCommandProcessorDelegate;
@protocol FBInterstitialAdNativeViewDelegate;
@protocol FBInterstitialAdInternalDelegate;

@interface FBInterstitialNativeAdInternal : FBInterstitialAdInternal <FBAdCommandProcessorDelegate, FBInterstitialAdNativeViewDelegate>



@property (weak, nonatomic) NSObject<FBInterstitialAdInternalDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) FBNativeAdDataModel *dataModel; // ivar: _dataModel
@property (retain, nonatomic) FBAdPlacementDefinition *placementDefinition; // ivar: _placementDefinition
@property (retain, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (retain, nonatomic) FBAdCommandProcessor *commandProcessor; // ivar: _commandProcessor
@property (nonatomic) CGFloat firstImpressionTime; // ivar: _firstImpressionTime
@property (weak, nonatomic) FBInterstitialAdNativeView *nativeView; // ivar: _nativeView
@property (retain, nonatomic) FBAdExtraHint *extraHint; // ivar: _extraHint
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) UIViewController *viewControllerForPresentingModalView;


-(BOOL)isAdValid;
-(id)initWithPlacementID:(id)arg0 adData:(id)arg1 placementDefinition:(id)arg2 extraHint:(id)arg3 ;
-(id)adDataModel;
-(void)viewDidAppear:(BOOL)arg0 ;
-(void)viewWillDisappear:(BOOL)arg0 ;
-(BOOL)prefersStatusBarHidden;
-(void)loadAdFromMarkup:(id)arg0 activationCommand:(id)arg1 orientation:(NSInteger)arg2 ;
-(void)loadAd;
-(BOOL)showAdFromRootViewController:(id)arg0 ;
-(BOOL)showAdFromRootViewController:(id)arg0 animated:(BOOL)arg1 ;
-(NSUInteger)supportedInterfaceOrientations;
-(NSInteger)preferredInterfaceOrientationForPresentation;
-(void)setupCommandProcessorIfNeeded;
-(void)willPresentViewController:(id)arg0 ;
-(void)viewControllerDismissed:(id)arg0 ;
-(id)commandProcessorTouchInformation:(id)arg0 ;
-(id)interstitialAdNativeViewRootViewController:(id)arg0 ;
-(void)interstitialAdNativeViewDidLoad:(id)arg0 ;
-(void)interstitialAdNativeViewDidLogImpression:(id)arg0 withViewabilityValidator:(id)arg1 withPageNumber:(id)arg2 withPageTotal:(id)arg3 ;
-(void)interstitialAdNativeViewDidClick:(id)arg0 withEvent:(id)arg1 withCommand:(id)arg2 skipAppStore:(BOOL)arg3 withPageNumber:(id)arg4 withPageTotal:(id)arg5 ;
-(void)interstitialAdNativeViewDidInteract:(id)arg0 withTouchData:(id)arg1 touchType:(id)arg2 withCommand:(id)arg3 skipAppStore:(BOOL)arg4 withPageNumber:(id)arg5 withPageTotal:(id)arg6 completionHandler:(id)arg7 ;
-(void)interstitialAdNativeViewDidClick:(id)arg0 withEvent:(id)arg1 withCommand:(id)arg2 skipAppStore:(BOOL)arg3 withPageNumber:(id)arg4 withPageTotal:(id)arg5 completionHandler:(id)arg6 ;
-(void)processCommand:(id)arg0 withExtraData:(id)arg1 skipAppStore:(BOOL)arg2 completionHandler:(id)arg3 ;
-(void)interstitialAdNativeViewDidClose:(id)arg0 ;
-(void)interstitialAdNativeView:(id)arg0 didFailWithError:(id)arg1 ;


@end


#endif