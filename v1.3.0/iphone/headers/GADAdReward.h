// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADREWARD_H
#define GADADREWARD_H


#import <Foundation/Foundation.h>


@interface GADAdReward : NSObject

@property (readonly, nonatomic) NSString *type; // ivar: _type
@property (readonly, nonatomic) NSDecimalNumber *amount; // ivar: _amount


-(id)init;
-(id)initWithRewardDictionary:(id)arg0 ;
-(id)initWithRewardType:(id)arg0 rewardAmount:(id)arg1 ;


@end


#endif