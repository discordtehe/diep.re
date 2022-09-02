// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADTOUCHRECORDINGVIEW_H
#define FBADTOUCHRECORDINGVIEW_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@protocol FBAdTouchGestureRecognizerDelegate;
@protocol FBAdTouchRecordingViewDelegate;

@interface FBAdTouchRecordingView : UIView <FBAdTouchGestureRecognizerDelegate>



@property (nonatomic) CGPoint lastTouchStartLocation; // ivar: _lastTouchStartLocation
@property (nonatomic) CGPoint lastTouchCurrentLocation; // ivar: _lastTouchCurrentLocation
@property (nonatomic) CGFloat lastTouchStartTimestamp; // ivar: _lastTouchStartTimestamp
@property (nonatomic) CGFloat lastTouchCurrentTimestamp; // ivar: _lastTouchCurrentTimestamp
@property (nonatomic) CGFloat lastTouchRadius; // ivar: _lastTouchRadius
@property (nonatomic) CGFloat lastTouchPressure; // ivar: _lastTouchPressure
@property (copy, nonatomic) NSDictionary *lastTouchData; // ivar: _lastTouchData
@property (nonatomic) CGFloat firstTimeVisible; // ivar: _firstTimeVisible
@property (weak, nonatomic) NSObject<FBAdTouchRecordingViewDelegate> *touchRecordingViewDelegate; // ivar: _touchRecordingViewDelegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)setup;
-(void)gestureRecognizer:(id)arg0 beganWithTouches:(id)arg1 andEvent:(id)arg2 ;
-(void)gestureRecognizer:(id)arg0 movedWithTouches:(id)arg1 andEvent:(id)arg2 ;
-(void)gestureRecognizer:(id)arg0 endedWithTouches:(id)arg1 andEvent:(id)arg2 ;
-(void)gestureRecognizer:(id)arg0 cancelledWithTouches:(id)arg1 andEvent:(id)arg2 ;
-(void)updateTouchDataWithTouches:(id)arg0 andEvent:(id)arg1 logTouch:(BOOL)arg2 ;
-(void)gestureRecognizerTapped:(id)arg0 ;
-(BOOL)gestureRecognizer:(id)arg0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg1 ;


@end


#endif