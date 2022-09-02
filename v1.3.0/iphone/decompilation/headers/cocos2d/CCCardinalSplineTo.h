// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCCARDINALSPLINETO_H
#define CCCARDINALSPLINETO_H



@class CCActionInterval;
@class CCPointArray;

@interface CCCardinalSplineTo : CCActionInterval {
    CGFloat _deltaT;
    CGFloat _tension;
    CGPoint _previousPosition;
    CGPoint _accumulatedDiff;
}


@property (retain, nonatomic) CCPointArray *points; // ivar: _points


-(id)initWithDuration:(CGFloat)arg0 points:(id)arg1 tension:(CGFloat)arg2 ;
-(void)dealloc;
-(void)startWithTarget:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)update:(CGFloat)arg0 ;
-(void)updatePosition:(struct CGPoint )arg0 ;
-(id)reverse;
+(id)actionWithDuration:(CGFloat)arg0 points:(id)arg1 tension:(CGFloat)arg2 ;


@end


#endif