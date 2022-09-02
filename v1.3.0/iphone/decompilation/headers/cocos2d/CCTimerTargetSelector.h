// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTIMERTARGETSELECTOR_H
#define CCTIMERTARGETSELECTOR_H



@class CCTimer;

@interface CCTimerTargetSelector : CCTimer {
    id *_target;
    *unk _impMethod;
}


@property (readonly, nonatomic) SEL selector; // ivar: _selector


-(id)initWithTarget:(id)arg0 selector:(SEL)arg1 ;
-(id)initWithTarget:(id)arg0 selector:(SEL)arg1 interval:(CGFloat)arg2 repeat:(unsigned int)arg3 delay:(CGFloat)arg4 ;
-(id)description;
-(void)trigger;
-(void)cancel;
+(id)timerWithTarget:(id)arg0 selector:(SEL)arg1 ;
+(id)timerWithTarget:(id)arg0 selector:(SEL)arg1 interval:(CGFloat)arg2 ;


@end


#endif