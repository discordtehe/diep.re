// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISPLACEMENTCAPPINGMANAGER_H
#define ISPLACEMENTCAPPINGMANAGER_H


#import <Foundation/Foundation.h>


@interface ISPlacementCappingManager : NSObject



-(void)addCappingInfoPlacementRV:(id)arg0 ;
-(void)addCappingInfoPlacementIS:(id)arg0 ;
-(void)addCappingInfoPlacementBN:(id)arg0 ;
-(NSInteger)isPlacementCappedRV:(id)arg0 ;
-(NSInteger)isPlacementCappedIS:(id)arg0 ;
-(NSInteger)isPlacementCappedBN:(id)arg0 ;
-(void)incrementShowCounterRV:(id)arg0 ;
-(void)incrementShowCounterIS:(id)arg0 ;
-(void)incrementShowCounterBN:(id)arg0 ;
-(void)addCappingInfoPlacement:(id)arg0 adUnit:(id)arg1 ;
-(id)constructUserDefaultsKeyAdUnit:(id)arg0 baseConst:(id)arg1 placementName:(id)arg2 ;
-(NSInteger)isPlacementCappedAdUnit:(id)arg0 placementName:(id)arg1 ;
-(void)incrementShowCounter:(id)arg0 placementName:(id)arg1 ;
-(CGFloat)initTimeThreshold:(id)arg0 ;
+(id)sharedManager;


@end


#endif