// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPREWARDEDVIDEOREWARD_H
#define MPREWARDEDVIDEOREWARD_H


#import <Foundation/Foundation.h>


@interface MPRewardedVideoReward : NSObject

@property (readonly, nonatomic) NSString *currencyType; // ivar: _currencyType
@property (readonly, nonatomic) NSNumber *amount; // ivar: _amount


-(id)initWithCurrencyType:(id)arg0 amount:(id)arg1 ;
-(id)initWithCurrencyAmount:(id)arg0 ;
-(id)description;


@end


#endif