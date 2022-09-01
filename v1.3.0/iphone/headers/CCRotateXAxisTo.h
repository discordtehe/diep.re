// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCROTATEXAXISTO_H
#define CCROTATEXAXISTO_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCRotateXAxisTo : CCActionInterval <NSCopying>

 {
    float dstAngle_;
    float startAngle_;
    float diffAngle_;
}




-(id)initWithDuration:(CGFloat)arg0 angle:(float)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithDuration:(CGFloat)arg0 angle:(float)arg1 ;


@end


#endif