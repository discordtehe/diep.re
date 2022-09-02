// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPCOUNTDOWNTIMERVIEW_H
#define MPCOUNTDOWNTIMERVIEW_H


#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <Foundation/Foundation.h>

@class MPTimer;

@interface MPCountdownTimerView : UIView

@property (copy, nonatomic) id *completionBlock; // ivar: _completionBlock
@property (nonatomic) CGFloat remainingSeconds; // ivar: _remainingSeconds
@property (retain, nonatomic) MPTimer *timer; // ivar: _timer
@property (retain, nonatomic) CAShapeLayer *backgroundRingLayer; // ivar: _backgroundRingLayer
@property (retain, nonatomic) CAShapeLayer *animatingRingLayer; // ivar: _animatingRingLayer
@property (retain, nonatomic) UILabel *countdownLabel; // ivar: _countdownLabel
@property (retain, nonatomic) NSNotificationCenter *notificationCenter; // ivar: _notificationCenter


-(id)initWithDuration:(CGFloat)arg0 timerCompletion:(id)arg1 ;
-(void)dealloc;
-(struct CGSize )intrinsicContentSize;
-(BOOL)hasStarted;
-(void)start;
-(void)stopAndSignalCompletion:(BOOL)arg0 ;
-(void)pause;
-(void)resume;
-(void)onTimerUpdate:(id)arg0 ;
+(CGFloat)intrinsicContentDimension;


@end


#endif