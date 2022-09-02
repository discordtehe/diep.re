// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJBACKOFFSTRATEGY_H
#define ADJBACKOFFSTRATEGY_H


#import <Foundation/Foundation.h>


@interface ADJBackoffStrategy : NSObject

@property (nonatomic) CGFloat minRange; // ivar: _minRange
@property (nonatomic) CGFloat maxRange; // ivar: _maxRange
@property (nonatomic) NSInteger minRetries; // ivar: _minRetries
@property (nonatomic) CGFloat maxWait; // ivar: _maxWait
@property (nonatomic) CGFloat secondMultiplier; // ivar: _secondMultiplier


-(id)initWithType:(NSInteger)arg0 ;
-(void)saveStrategy:(NSInteger)arg0 secondMultiplier:(CGFloat)arg1 maxWait:(CGFloat)arg2 minRange:(CGFloat)arg3 maxRange:(CGFloat)arg4 ;
+(id)backoffStrategyWithType:(NSInteger)arg0 ;


@end


#endif