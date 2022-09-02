// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCBEZIERBY_H
#define CCBEZIERBY_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCBezierBy : CCActionInterval <NSCopying>

 {
    _ccBezierConfig _config;
    CGPoint _startPosition;
    CGPoint _previousPosition;
}




-(id)initWithDuration:(CGFloat)arg0 bezier:(struct _ccBezierConfig )arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
-(id)reverse;
+(id)actionWithDuration:(CGFloat)arg0 bezier:(struct _ccBezierConfig )arg1 ;


@end


#endif