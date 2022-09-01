// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGADREQUESTCOORDINATOR_H
#define VNGADREQUESTCOORDINATOR_H


#import <Foundation/Foundation.h>

@class VunglePlacementsCoordinator;
@class VunglePlayabilityCoordinator;

@interface VNGAdRequestCoordinator : NSObject

@property (retain, nonatomic) VunglePlacementsCoordinator *placementsCoordinator; // ivar: _placementsCoordinator
@property (retain, nonatomic) VunglePlayabilityCoordinator *playabilityCoordinator; // ivar: _playabilityCoordinator
@property (nonatomic) BOOL adPlaying; // ivar: _adPlaying


-(id)initWithPlacementsCoordinator:(id)arg0 playabilityCoordinator:(id)arg1 ;
-(void)requestAutocacheablePlacementOnInitialization:(BOOL)arg0 ;
-(BOOL)loadPlacementWithID:(id)arg0 error:(*id)arg1 ;
-(void)requestAutoCacheablePlacementWithID:(id)arg0 ;
-(id)cachedPlacementWithID:(id)arg0 ;
-(id)adRequestErrorWithPlacementID:(id)arg0 code:(NSInteger)arg1 message:(id)arg2 ;


@end


#endif