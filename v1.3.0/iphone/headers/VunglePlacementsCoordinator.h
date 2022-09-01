// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEPLACEMENTSCOORDINATOR_H
#define VUNGLEPLACEMENTSCOORDINATOR_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VungleRequestAdController;
@class VungleBackoffCalculator;
@protocol VungleRequestAdManagerDelegate;
@protocol VungleConfigurable;
@protocol VunglePlacementsCoordinatorDelegate;

@interface VunglePlacementsCoordinator : NSObject <VungleRequestAdManagerDelegate, VungleConfigurable>



@property (retain) NSSet *placements; // ivar: _placements
@property (retain, nonatomic) VungleRequestAdController *adController; // ivar: _adController
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *queue; // ivar: _queue
@property (retain, nonatomic) VungleBackoffCalculator *backoffCalculator; // ivar: _backoffCalculator
@property (retain, nonatomic) NSMutableDictionary *placementsSleep; // ivar: _placementsSleep
@property (weak, nonatomic) NSObject<VunglePlacementsCoordinatorDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithRequestAdController:(id)arg0 ;
-(void)loadPlacement:(id)arg0 ;
-(void)retrieveCachedPlacements;
-(id)placementWithReferenceID:(id)arg0 ;
-(id)allAutocacheablePlacements;
-(void)fetchAutoCacheablePlacementWithPlacementID:(id)arg0 ;
-(void)cleanupCache;
-(id)loadedPlacements;
-(void)refreshPlacementState:(id)arg0 completionBlock:(id)arg1 ;
-(void)resetPlacement:(id)arg0 completionBlock:(id)arg1 ;
-(BOOL)updateConfiguration:(id)arg0 error:(*id)arg1 ;
-(void)updateSleepWithDate:(id)arg0 forPlacement:(id)arg1 ;
-(void)adControllerDidFinishPlacementRequest:(id)arg0 error:(id)arg1 ;
-(void)loadPlacement:(id)arg0 withDelaySeconds:(NSUInteger)arg1 ;
-(id)getValidPlacmentIds;
-(BOOL)placementIsSleeping:(id)arg0 ;
-(id)sleepExpirationForPlacement:(id)arg0 ;
-(CGFloat)sleepDiffFromNowForPlacement:(id)arg0 ;
-(void)updateSleep:(id)arg0 forPlacement:(id)arg1 ;
-(void)clearSleep;
-(void)archivePlacementsSleep;
-(void)retrieveArchivedPlacementsSleep;
-(void)appWillEnterBackground;
-(void)asynchronouslyNotifyDelegatePlacementLoad:(id)arg0 error:(id)arg1 ;
-(id)internalPlacement:(id)arg0 ;
-(id)updateConfigPlacements:(id)arg0 withOldPlacements:(id)arg1 ;
-(id)parsePlacementsWithConfiguration:(id)arg0 error:(*id)arg1 ;
-(id)readyPlacements;
-(id)allStoredPlacements;
-(id)cleanupCachedPlacementCreatives;
-(BOOL)removeCreativesForAdUnit:(id)arg0 error:(*id)arg1 ;
-(id)cleanupOrphanPlacementsWithActivePlacements:(id)arg0 ;
-(void)removeOrphanedCreatives;
+(id)filterReadyPlacementsWithPlacements:(id)arg0 ;
+(id)filterExpiredAndInvalidPlacementsWithPlacements:(id)arg0 ;
+(id)serialQueueWithName:(id)arg0 ;
+(id)missingPlacementInfoError;
+(id)invalidPlacementDescriptionError;
+(id)unknownPlacementError;
+(id)unableToResetPlacementError;
+(id)unableToLoadPlacementError;
+(id)unknownError;


@end


#endif