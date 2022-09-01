// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTIMERBLOCK_H
#define CCTIMERBLOCK_H


#import <Foundation/Foundation.h>

@class CCTimer;

@interface CCTimerBlock : CCTimer {
    id *_block;
}


@property (readonly, nonatomic) NSString *key; // ivar: _key
@property (readonly, nonatomic) id *target; // ivar: _target


-(id)initWithTarget:(id)arg0 interval:(CGFloat)arg1 repeat:(unsigned int)arg2 delay:(CGFloat)arg3 key:(id)arg4 block:(id)arg5 ;
-(id)description;
-(void)dealloc;
-(void)trigger;
-(void)cancel;
+(id)timerWithTarget:(id)arg0 interval:(CGFloat)arg1 key:(id)arg2 block:(id)arg3 ;


@end


#endif