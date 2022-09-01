// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef INTERPOLATIONVALUE_H
#define INTERPOLATIONVALUE_H


#import <Foundation/Foundation.h>


@interface InterpolationValue : NSObject {
    float mLastValue;
    float mTime;
    float mTargetTime;
}


@property (readonly, nonatomic) float value; // ivar: mValue
@property (readonly, nonatomic) float originalTargetValue; // ivar: mTarget
@property (readonly, nonatomic) float targetValue; // ivar: mPredictedTarget


-(id)initWithValue:(float)arg0 ;
-(void)setTarget:(float)arg0 timeToReach:(float)arg1 ;
-(void)setTargetWithPerdiction:(float)arg0 timeToReach:(float)arg1 perdictionModifier:(float)arg2 ;
-(void)update:(CGFloat)arg0 ;


@end


#endif