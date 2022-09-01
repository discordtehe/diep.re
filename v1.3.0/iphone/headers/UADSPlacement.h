// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSPLACEMENT_H
#define UADSPLACEMENT_H


#import <Foundation/Foundation.h>


@interface UADSPlacement : NSObject



+(BOOL)isReady:(id)arg0 ;
+(BOOL)isReady;
+(void)setDefaultPlacement:(id)arg0 ;
+(id)getDefaultPlacement;
+(void)setDefaultBannerPlacement:(id)arg0 ;
+(id)getDefaultBannerPlacement;
+(void)setPlacementState:(id)arg0 placementState:(id)arg1 ;
+(NSInteger)getPlacementState;
+(NSInteger)getPlacementState:(id)arg0 ;
+(void)reset;
+(NSInteger)currentState:(id)arg0 ;
+(NSInteger)formatStringToPlacementState:(id)arg0 ;


@end


#endif