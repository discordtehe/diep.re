// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UMONREWARDABLEPLACEMENTCONTENT_H
#define UMONREWARDABLEPLACEMENTCONTENT_H


#import <Foundation/Foundation.h>

@class UMONPlacementContent;

@interface UMONRewardablePlacementContent : UMONPlacementContent

@property (nonatomic) BOOL rewarded; // ivar: _rewarded
@property (retain, nonatomic) NSString *rewardId; // ivar: _rewardId


-(id)initWithPlacementId:(id)arg0 params:(id)arg1 ;


@end


#endif