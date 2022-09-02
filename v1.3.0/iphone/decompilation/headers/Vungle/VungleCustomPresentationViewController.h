// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLECUSTOMPRESENTATIONVIEWCONTROLLER_H
#define VUNGLECUSTOMPRESENTATIONVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class VungleTapPassingView;
@class VungleMRAIDController;

@interface VungleCustomPresentationViewController : UIViewController

@property (retain, nonatomic) NSMutableArray *adViewConstraints; // ivar: _adViewConstraints
@property (retain, nonatomic) UIView *adContainer; // ivar: _adContainer
@property (retain, nonatomic) VungleTapPassingView *tapPassingView; // ivar: _tapPassingView
@property (retain, nonatomic) VungleMRAIDController *MRAIDController; // ivar: _MRAIDController


-(id)init;
-(void)viewWillAppear:(BOOL)arg0 ;
-(void)updateViewConstraints;
-(BOOL)prefersStatusBarHidden;
-(void)deviceOrientationChangeNotification:(id)arg0 ;
-(void)viewWillTransitionToSize:(struct CGSize )arg0 withTransitionCoordinator:(id)arg1 ;
-(NSInteger)currentOrientation;
-(void)rotate;
-(void)addConstraintsToView:(id)arg0 fromParentView:(id)arg1 withOrientation:(NSInteger)arg2 isAdView:(BOOL)arg3 ;


@end


#endif