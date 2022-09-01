// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCREPEAT_H
#define CCREPEAT_H



@class CCActionInterval;
@class CCFiniteTimeAction;
@protocol NSCopying;

@interface CCRepeat : CCActionInterval <NSCopying>

 {
    NSUInteger _times;
    NSUInteger _total;
    CGFloat _nextDt;
    BOOL _isActionInstant;
}


@property (retain, nonatomic) CCFiniteTimeAction *innerAction; // ivar: _innerAction


-(id)initWithAction:(id)arg0 times:(NSUInteger)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)dealloc;
-(void)startWithTarget:(id)arg0 ;
-(void)stop;
-(void)update:(CGFloat)arg0 ;
-(BOOL)isDone;
-(id)reverse;
+(id)actionWithAction:(id)arg0 times:(NSUInteger)arg1 ;


@end


#endif