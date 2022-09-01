// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCANIMATE_H
#define CCANIMATE_H


#import <CoreFoundation/CoreFoundation.h>

@class CCActionInterval;
@class CCAnimation;
@protocol NSCopying;

@interface CCAnimate : CCActionInterval <NSCopying>

 {
    NSMutableArray *_splitTimes;
    NSInteger _nextFrame;
    id *_origFrame;
    NSUInteger _executedLoops;
}


@property (retain, nonatomic) CCAnimation *animation; // ivar: _animation


-(id)initWithAnimation:(id)arg0 restoreOriginalFrame:(BOOL)arg1 ;
-(id)initWithDuration:(CGFloat)arg0 animation:(id)arg1 restoreOriginalFrame:(BOOL)arg2 ;
-(id)initWithAnimation:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)dealloc;
-(void)startWithTarget:(id)arg0 ;
-(void)stop;
-(void)update:(CGFloat)arg0 ;
-(id)reverse;
+(id)actionWithAnimation:(id)arg0 restoreOriginalFrame:(BOOL)arg1 ;
+(id)actionWithDuration:(CGFloat)arg0 animation:(id)arg1 restoreOriginalFrame:(BOOL)arg2 ;
+(id)actionWithAnimation:(id)arg0 ;


@end


#endif