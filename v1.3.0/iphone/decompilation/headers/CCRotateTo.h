// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCROTATETO_H
#define CCROTATETO_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCRotateTo : CCActionInterval <NSCopying>

 {
    float _dstAngleX;
    float _startAngleX;
    float _diffAngleX;
    float _dstAngleY;
    float _startAngleY;
    float _diffAngleY;
}




-(id)initWithDuration:(CGFloat)arg0 angle:(float)arg1 ;
-(id)initWithDuration:(CGFloat)arg0 angleX:(float)arg1 angleY:(float)arg2 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithDuration:(CGFloat)arg0 angle:(float)arg1 ;
+(id)actionWithDuration:(CGFloat)arg0 angleX:(float)arg1 angleY:(float)arg2 ;


@end


#endif