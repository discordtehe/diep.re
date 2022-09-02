// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCSCALETO_H
#define CCSCALETO_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCScaleTo : CCActionInterval <NSCopying>

 {
    float _scaleX;
    float _scaleY;
    float _startScaleX;
    float _startScaleY;
    float _endScaleX;
    float _endScaleY;
    float _deltaX;
    float _deltaY;
}




-(id)initWithDuration:(CGFloat)arg0 scale:(float)arg1 ;
-(id)initWithDuration:(CGFloat)arg0 scaleX:(float)arg1 scaleY:(float)arg2 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithDuration:(CGFloat)arg0 scale:(float)arg1 ;
+(id)actionWithDuration:(CGFloat)arg0 scaleX:(float)arg1 scaleY:(float)arg2 ;


@end


#endif