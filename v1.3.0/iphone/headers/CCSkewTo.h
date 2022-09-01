// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCSKEWTO_H
#define CCSKEWTO_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCSkewTo : CCActionInterval <NSCopying>

 {
    float _skewX;
    float _skewY;
    float _startSkewX;
    float _startSkewY;
    float _endSkewX;
    float _endSkewY;
    float _deltaX;
    float _deltaY;
}




-(id)initWithDuration:(CGFloat)arg0 skewX:(float)arg1 skewY:(float)arg2 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithDuration:(CGFloat)arg0 skewX:(float)arg1 skewY:(float)arg2 ;


@end


#endif