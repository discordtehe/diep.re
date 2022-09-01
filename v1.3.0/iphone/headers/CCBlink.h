// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCBLINK_H
#define CCBLINK_H



@class CCActionInterval;
@protocol NSCopying;

@interface CCBlink : CCActionInterval <NSCopying>

 {
    NSUInteger _times;
    BOOL _originalState;
}




-(id)initWithDuration:(CGFloat)arg0 blinks:(NSUInteger)arg1 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
-(void)stop;
-(id)reverse;
+(id)actionWithDuration:(CGFloat)arg0 blinks:(NSUInteger)arg1 ;


@end


#endif