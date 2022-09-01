// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONYZONE_H
#define ADCOLONYZONE_H


#import <Foundation/Foundation.h>


@interface AdColonyZone : NSObject {
    BOOL _firstPlay;
    NSString *_rewardNamePlural;
    NSString *_rewardPrompt;
    NSUInteger _playInterval;
    NSUInteger _currentAttempt;
}


@property (nonatomic) NSUInteger playInterval;
@property (nonatomic) NSUInteger currentAttempt;
@property (nonatomic) BOOL firstPlay;
@property (copy, nonatomic) id *reward;
@property (readonly, nonatomic) NSString *identifier; // ivar: _identifier
@property (readonly, nonatomic) NSUInteger type; // ivar: _type
@property (readonly, nonatomic) BOOL enabled; // ivar: _enabled
@property (readonly, nonatomic) BOOL rewarded; // ivar: _rewarded
@property (readonly, nonatomic) NSUInteger viewsPerReward; // ivar: _viewsPerReward
@property (readonly, nonatomic) NSUInteger viewsUntilReward; // ivar: _viewsUntilReward
@property (readonly, nonatomic) NSUInteger rewardAmount; // ivar: _rewardAmount
@property (readonly, nonatomic) NSString *rewardName; // ivar: _rewardName


-(id)initSafe;
-(id)init;


@end


#endif