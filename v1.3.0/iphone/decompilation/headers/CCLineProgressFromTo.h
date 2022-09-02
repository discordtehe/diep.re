// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCLINEPROGRESSFROMTO_H
#define CCLINEPROGRESSFROMTO_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCLineProgressFromTo : CCActionInterval <NSCopying>

 {
    float to_;
    float from_;
}




-(id)initWithDuration:(CGFloat)arg0 from:(float)arg1 to:(float)arg2 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(id)reverse;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithDuration:(CGFloat)arg0 from:(float)arg1 to:(float)arg2 ;


@end


#endif