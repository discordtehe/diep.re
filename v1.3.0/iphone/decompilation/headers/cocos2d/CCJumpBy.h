// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCJUMPBY_H
#define CCJUMPBY_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCJumpBy : CCActionInterval <NSCopying>

 {
    CGPoint _startPosition;
    CGPoint _delta;
    CGFloat _height;
    NSUInteger _jumps;
    CGPoint _previousPos;
}




-(id)initWithDuration:(CGFloat)arg0 position:(struct CGPoint )arg1 height:(CGFloat)arg2 jumps:(NSUInteger)arg3 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
-(id)reverse;
+(id)actionWithDuration:(CGFloat)arg0 position:(struct CGPoint )arg1 height:(CGFloat)arg2 jumps:(NSUInteger)arg3 ;


@end


#endif