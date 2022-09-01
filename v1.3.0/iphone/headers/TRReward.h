// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TRREWARD_H
#define TRREWARD_H


#import <Foundation/Foundation.h>

@protocol NSCoding;

@interface TRReward : NSObject <NSCoding>



@property (retain, nonatomic) NSString *transactionIdentifier; // ivar: _transactionIdentifier
@property (nonatomic) NSInteger rewardAmount; // ivar: _rewardAmount
@property (retain, nonatomic) NSString *currencyName; // ivar: _currencyName
@property (nonatomic) NSInteger payoutEvent; // ivar: _payoutEvent
@property (retain, nonatomic) NSString *placementIdentifier; // ivar: _placementIdentifier


-(id)initWithRewardDictionary:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;


@end


#endif