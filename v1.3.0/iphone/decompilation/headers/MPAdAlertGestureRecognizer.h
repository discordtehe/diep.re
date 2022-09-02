// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPADALERTGESTURERECOGNIZER_H
#define MPADALERTGESTURERECOGNIZER_H


#import <UIKit/UIKit.h>


@interface MPAdAlertGestureRecognizer : UIGestureRecognizer

@property (nonatomic) int currentAlertGestureState; // ivar: _currentAlertGestureState
@property (nonatomic) CGPoint inflectionPoint; // ivar: _inflectionPoint
@property (nonatomic) CGPoint startingPoint; // ivar: _startingPoint
@property (nonatomic) BOOL thresholdReached; // ivar: _thresholdReached
@property (nonatomic) NSInteger curNumZigZags; // ivar: _curNumZigZags
@property (nonatomic) NSInteger numZigZagsForRecognition; // ivar: _numZigZagsForRecognition
@property (nonatomic) CGFloat minTrackedDistanceForZigZag; // ivar: _minTrackedDistanceForZigZag


-(id)init;
-(id)initWithTarget:(id)arg0 action:(SEL)arg1 ;
-(void)commonInit;
-(void)touchesBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesCancelled:(id)arg0 withEvent:(id)arg1 ;
-(void)reset;
-(void)resetToInitialState;
-(void)handleZigRightGestureStateWithTouches:(id)arg0 ;
-(void)handleZagLeftGestureStateWithTouches:(id)arg0 ;
-(void)updateAlertGestureStateWithTouches:(id)arg0 ;
-(BOOL)validYAxisMovementForTouches:(id)arg0 ;
-(BOOL)touchIsWithinBoundsForTouches:(id)arg0 ;


@end


#endif