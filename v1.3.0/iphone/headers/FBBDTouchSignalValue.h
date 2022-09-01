// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBBDTOUCHSIGNALVALUE_H
#define FBBDTOUCHSIGNALVALUE_H


#import <Foundation/Foundation.h>


@interface FBBDTouchSignalValue : NSObject {
    CGFloat _minDistanceBetweenTouches;
}


@property (readonly, copy, nonatomic) NSNumber *touchId; // ivar: _touchId
@property (readonly, nonatomic) CGPoint location; // ivar: _location
@property (readonly, nonatomic) int touchEventAction; // ivar: _touchEventAction
@property (readonly, nonatomic) CGFloat majorRadius; // ivar: _majorRadius
@property (readonly, nonatomic) CGFloat majorRadiusTolerance; // ivar: _majorRadiusTolerance
@property (readonly, nonatomic) CGFloat force; // ivar: _force
@property (readonly, nonatomic) CGFloat maxForce; // ivar: _maxForce
@property (readonly, nonatomic) NSInteger touchType; // ivar: _touchType
@property (readonly, nonatomic) CGFloat azimuthAngle; // ivar: _azimuthAngle


-(id)initWithTouchId:(id)arg0 withTouchEventAction:(int)arg1 withTouchType:(NSInteger)arg2 withLocation:(struct CGPoint )arg3 withForce:(CGFloat)arg4 withMaxForce:(CGFloat)arg5 withMajorRadius:(CGFloat)arg6 withMajorRadiusTolerance:(CGFloat)arg7 withAzimuthAngle:(CGFloat)arg8 withMinDistanceBetweenTouches:(CGFloat)arg9 ;
-(id)touchValueDict;
-(BOOL)isEqualToTouch:(id)arg0 ;
-(BOOL)isDistanceWithValue:(id)arg0 lessThan:(CGFloat)arg1 ;


@end


#endif