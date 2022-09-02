// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISPLACEMENTINFO_H
#define ISPLACEMENTINFO_H


#import <Foundation/Foundation.h>


@interface ISPlacementInfo : NSObject

@property (readonly) NSString *placementName; // ivar: _placementName
@property (readonly) NSString *rewardName; // ivar: _rewardName
@property (readonly) NSNumber *rewardAmount; // ivar: _rewardAmount


-(id)initWithPlacement:(id)arg0 reward:(id)arg1 rewardAmount:(id)arg2 ;
-(id)description;


@end


#endif