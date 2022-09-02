// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCMOVECURVE_H
#define CCMOVECURVE_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCMoveCurve : CCActionInterval <NSCopying>

 {
    CGPoint controlPointBeforeCurve_;
    CGPoint startPosition_;
    CGPoint endPosition_;
    CGPoint controlPointAfterCurve_;
    CGPoint delta_;
    CGFloat tension_;
}




-(id)initWithDuration:(CGFloat)arg0 targetPosition:(struct CGPoint )arg1 firstControlPoint:(struct CGPoint )arg2 secondControlPoint:(struct CGPoint )arg3 tension:(CGFloat)arg4 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithDuration:(CGFloat)arg0 targetPosition:(struct CGPoint )arg1 firstControlPoint:(struct CGPoint )arg2 secondControlPoint:(struct CGPoint )arg3 ;


@end


#endif