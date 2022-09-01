// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTIMER_H
#define CCTIMER_H


#import <Foundation/Foundation.h>


@interface CCTimer : NSObject {
    CGFloat _elapsed;
    BOOL _runForever;
    BOOL _useDelay;
    unsigned int _nTimesExecuted;
    unsigned int _repeat;
    CGFloat _delay;
}


@property (nonatomic) CGFloat interval; // ivar: _interval


-(void)setupTimerWithInterval:(CGFloat)arg0 repeat:(unsigned int)arg1 delay:(CGFloat)arg2 ;
-(void)dealloc;
-(void)trigger;
-(void)cancel;
-(void)update:(CGFloat)arg0 ;


@end


#endif