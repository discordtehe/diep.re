// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISPLACEMENT_H
#define ISPLACEMENT_H


#import <Foundation/Foundation.h>

@class ISPlacementInfo;

@interface ISPlacement : NSObject

@property (copy, nonatomic) NSString *uid; // ivar: _uid
@property (copy, nonatomic) NSString *name; // ivar: _name
@property (copy, nonatomic) NSString *reward; // ivar: _reward
@property (retain, nonatomic) NSNumber *amount; // ivar: _amount
@property (nonatomic) BOOL isCappingEnable; // ivar: _isCappingEnable
@property (retain, nonatomic) NSNumber *cappingMaxImpressions; // ivar: _cappingMaxImpressions
@property (copy, nonatomic) NSString *cappingUnit; // ivar: _cappingUnit
@property (nonatomic) BOOL isPacingEnable; // ivar: _isPacingEnable
@property (copy, nonatomic) NSNumber *pacingNumOfSeconds; // ivar: _pacingNumOfSeconds
@property (nonatomic) BOOL isDelivery; // ivar: _isDelivery
@property (nonatomic) BOOL isDefault; // ivar: _isDefault
@property (retain, nonatomic) ISPlacementInfo *placementInfo; // ivar: _placementInfo


-(id)initWithUid:(id)arg0 name:(id)arg1 reward:(id)arg2 amount:(id)arg3 isCappingEnable:(BOOL)arg4 cappingMaxImpressions:(id)arg5 cappingUnit:(id)arg6 isPacingEnable:(BOOL)arg7 pacingNumOfSeconds:(id)arg8 delivery:(BOOL)arg9 isDefault:(BOOL)arg10 ;


@end


#endif