// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINTERSTITIALPLAYABLEADVIEWCONTROLLER_H
#define FBINTERSTITIALPLAYABLEADVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class FBInterstitialAdInternal;
@class FBAdPlayableViewController;
@class FBNativeAdDataModel;
@protocol FBAdPlayableViewControllerDelegate;
@protocol FBInterstitialAdInternalDelegate;

@interface FBInterstitialPlayableAdViewController : FBInterstitialAdInternal <FBAdPlayableViewControllerDelegate>



@property (retain, nonatomic) FBAdPlayableViewController *playableController; // ivar: _playableController
@property (retain, nonatomic) FBNativeAdDataModel *dataModel; // ivar: _dataModel
@property (retain, nonatomic) UIViewController *rootViewController; // ivar: _rootViewController
@property (weak, nonatomic) NSObject<FBInterstitialAdInternalDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(BOOL)isAdValid;
-(id)initWithPlacementID:(id)arg0 adData:(id)arg1 placementDefinition:(id)arg2 extraHint:(id)arg3 ;
-(void)loadAd;
-(BOOL)showAdFromRootViewController:(id)arg0 ;
-(BOOL)showAdFromRootViewController:(id)arg0 animated:(BOOL)arg1 ;
-(void)dismissViewController;
-(void)playableViewControllerDidLoad:(id)arg0 ;
-(void)playableViewController:(id)arg0 didFailWithError:(id)arg1 ;
-(void)playableViewControllerDidClick:(id)arg0 ;
-(void)playableViewControllerComplete:(id)arg0 ;
-(void)playableViewControllerWillLogImpression:(id)arg0 ;
-(void)playableViewControllerWillClose:(id)arg0 ;
-(void)playableViewControllerDidTerminate:(id)arg0 ;


@end


#endif