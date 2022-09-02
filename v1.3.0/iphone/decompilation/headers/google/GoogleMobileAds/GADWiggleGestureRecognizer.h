// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADWIGGLEGESTURERECOGNIZER_H
#define GADWIGGLEGESTURERECOGNIZER_H


#import <UIKit/UIKit.h>


@interface GADWiggleGestureRecognizer : UIGestureRecognizer {
    CGFloat _distanceMoved;
    NSInteger _gestureState;
}




-(void)reset;
-(BOOL)isMovementInYAxisWithCurrentPoint:(struct CGPoint )arg0 previousPoint:(struct CGPoint )arg1 ;
-(void)touchesBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesCancelled:(id)arg0 withEvent:(id)arg1 ;


@end


#endif