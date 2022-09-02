// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADINTROCARDTRANSITION_H
#define FBADINTROCARDTRANSITION_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class FBAdIntroScreenView;
@protocol UIViewControllerAnimatedTransitioning;

@interface FBAdIntroCardTransition : NSObject <UIViewControllerAnimatedTransitioning>



@property (retain, nonatomic) FBAdIntroScreenView *introScreenView; // ivar: _introScreenView
@property (retain, nonatomic) UIVisualEffectView *blurEffectView; // ivar: _blurEffectView
@property (nonatomic) BOOL showIntroCardTransition; // ivar: _showIntroCardTransition
@property (copy, nonatomic) NSString *token; // ivar: _token
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithTitle:(id)arg0 subtitle:(id)arg1 iconURL:(id)arg2 iconStyle:(NSUInteger)arg3 shouldShowIntroCardTransition:(BOOL)arg4 token:(id)arg5 ;
-(void)animateTransition:(id)arg0 ;
-(void)blurInitialViewFromView:(id)arg0 toView:(id)arg1 topViewController:(id)arg2 transitionContext:(id)arg3 ;
-(void)introCardScaleUpFromView:(id)arg0 toView:(id)arg1 topViewController:(id)arg2 transitionContext:(id)arg3 ;
-(void)introCardScaleDownFromView:(id)arg0 toView:(id)arg1 introScreenView:(id)arg2 topViewController:(id)arg3 transitionContext:(id)arg4 ;
-(void)fadeInFinalViewFromView:(id)arg0 toView:(id)arg1 introScreenView:(id)arg2 topViewController:(id)arg3 transitionContext:(id)arg4 ;
-(CGFloat)transitionDuration:(id)arg0 ;


@end


#endif