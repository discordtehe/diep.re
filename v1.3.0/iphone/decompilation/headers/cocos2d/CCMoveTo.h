// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCMOVETO_H
#define CCMOVETO_H



@class CCMoveBy;

@interface CCMoveTo : CCMoveBy {
    CGPoint _endPosition;
}




-(id)initWithDuration:(CGFloat)arg0 position:(struct CGPoint )arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
+(id)actionWithDuration:(CGFloat)arg0 position:(struct CGPoint )arg1 ;


@end


#endif