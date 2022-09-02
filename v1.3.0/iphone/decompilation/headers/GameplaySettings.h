// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GAMEPLAYSETTINGS_H
#define GAMEPLAYSETTINGS_H


#import <CoreFoundation/CoreFoundation.h>

@class BaseDataModel;

@interface GameplaySettings : BaseDataModel {
    NSDictionary *mSkins;
}


@property (readonly, nonatomic) float minDPadRadiusFactor; // ivar: mMinDPadRadiusFactor
@property (readonly, nonatomic) float maxDPadDetectionRadiusFactor; // ivar: mMaxDPadDetectionRadiusFactor
@property (readonly, nonatomic) float cellSnapRate; // ivar: mCellSnapRate
@property (readonly, nonatomic) float cameraPositionSnapRate; // ivar: mCameraPositionSnapRate
@property (readonly, nonatomic) float cameraScaleSnapRate; // ivar: mCameraScaleSnapRate
@property (readonly, nonatomic) float aimSnapRate; // ivar: mAimSnapRate
@property (readonly, nonatomic) float aimMinVariationStep; // ivar: mAimMinVariationStep
@property (readonly, nonatomic) float aimMinAngleVariationStep; // ivar: mAimMinAngleVariationStep
@property (readonly, nonatomic) float softBodiesTouchDistance; // ivar: mSoftBodiesTouchDistance
@property (readonly, nonatomic) float minMassToShoot; // ivar: mMinMassToShoot
@property (readonly, nonatomic) float minMassToSplit; // ivar: mMinMassToSplit
@property (readonly, nonatomic) CGSize arenaSize; // ivar: mArenaSize
@property (readonly, nonatomic) unsigned int maxPlayerCells; // ivar: mMaxPlayerCells
@property (readonly, nonatomic) float timeToSendTCPAxis; // ivar: mTimeToSendTCPAxis
@property (readonly, nonatomic) float cameraAheadDistance; // ivar: mCamAheadDistance
@property (readonly, nonatomic) float cameraAheadVelocityFactor; // ivar: mCamAheadVelocityFactor
@property (readonly, nonatomic) float cameraBoundaries; // ivar: mCamBoundaries
@property (readonly, nonatomic) float interpolationModifier; // ivar: mInterpolationModifier


-(void)reload;
-(void)dealloc;
+(id)sharedGameplaySettings;
+(BOOL)isGameplaySettingsInitialized;
+(void)releaseSharedGameplaySettings;


@end


#endif