// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADTWOFINGERSLONGPRESSGESTURERECOGNIZER_H
#define GADTWOFINGERSLONGPRESSGESTURERECOGNIZER_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADTwoFingersLongPressGestureRecognizer : UIGestureRecognizer {
    NSInteger _gestureState;
    CGFloat _startTimestamp;
    CGFloat _endTimestamp;
    NSTimer *_debugGestureTimer;
    NSTimer *_numberOfTouchesTimer;
}




-(void)reset;
-(void)touchesBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesCancelled:(id)arg0 withEvent:(id)arg1 ;
-(void)invalidateDebugGestureTimers;


@end


#endif