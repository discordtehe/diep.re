// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCJITTER_H
#define CCJITTER_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCJitter : CCActionInterval <NSCopying>

 {
    float maxJitter;
    CGPoint startPosition;
    RandomGenerator<std::__1::linear_congruential_engine<unsigned int, 48271, 0, 2147483647> > _generator;
}




-(id)initWithDuration:(CGFloat)arg0 maxJitter:(float)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithDuration:(CGFloat)arg0 maxJitter:(float)arg1 ;


@end


#endif