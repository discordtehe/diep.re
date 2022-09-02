// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCACTIONINTERVAL_H
#define CCACTIONINTERVAL_H



@class CCFiniteTimeAction;
@protocol NSCopying;

@interface CCActionInterval : CCFiniteTimeAction <NSCopying>

 {
    BOOL _firstTick;
}


@property (readonly, nonatomic) CGFloat elapsed; // ivar: _elapsed


-(void)setAmplitudeRate:(CGFloat)arg0 ;
-(CGFloat)getAmplitudeRate;
-(id)init;
-(id)initWithDuration:(CGFloat)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(BOOL)isDone;
-(void)step:(CGFloat)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(id)reverse;
+(id)actionWithDuration:(CGFloat)arg0 ;


@end


#endif