// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADCARDTOFULLSCREENTRANSITION_H
#define FBADCARDTOFULLSCREENTRANSITION_H


#import <Foundation/Foundation.h>

@protocol UIViewControllerAnimatedTransitioning;

@interface FBAdCardToFullscreenTransition : NSObject <UIViewControllerAnimatedTransitioning>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(CGFloat)transitionDuration:(id)arg0 ;
-(void)animateTransition:(id)arg0 ;


@end


#endif