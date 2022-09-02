// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADPUSHTRANSITIONVIEW_H
#define GADPUSHTRANSITIONVIEW_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADPushTransitionView : UIView {
    NSArray *_views;
    UIView *_clippingView;
    UIView *_currentView;
    NSUInteger _currentViewIndex;
    CGFloat _presentationDuration;
    CGFloat _animationDuration;
    NSInteger _animationGroupIdentifier;
}




-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)setViews:(id)arg0 ;
-(void)setAnimationDuration:(CGFloat)arg0 ;
-(void)setPresentationDuration:(CGFloat)arg0 ;
-(void)setCurrentView:(id)arg0 ;
-(void)dispatchAnimation;
-(void)animate;


@end


#endif