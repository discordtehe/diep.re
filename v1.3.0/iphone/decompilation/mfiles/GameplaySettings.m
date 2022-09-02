@implementation GameplaySettings

+(void *)sharedGameplaySettings {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011cbbd8;
    if (r0 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            *0x1011cbbd8 = r0;
    }
    return r0;
}

+(bool)isGameplaySettingsInitialized {
    r0 = self;
    if (*qword_1011cbbd8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void)releaseSharedGameplaySettings {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011cbbd8 != 0x0) {
            [*0x1011cbbd8 release];
            *0x1011cbbd8 = 0x0;
    }
    return;
}

-(float)minDPadRadiusFactor {
    r0 = self;
    return r0;
}

-(void)dealloc {
    [self->mSkins release];
    [[&var_20 super] dealloc];
    return;
}

-(float)maxDPadDetectionRadiusFactor {
    r0 = self;
    return r0;
}

-(void)reload {
    sub_1005d83f0([[[MCConfigurationData sharedMCConfigurationData] recordFromTable:@"Default Settings - Controls" searchByField:@"key" withValue:@"minDPadRadiusFactor"] objectForKey:@"value"]);
    *(int32_t *)(int64_t *)&self->mMinDPadRadiusFactor = 0x402e000000000000;
    sub_1005d83f0([[[MCConfigurationData sharedMCConfigurationData] recordFromTable:@"Default Settings - Controls" searchByField:@"key" withValue:@"maxDPadDetectionRadiusFactor"] objectForKey:@"value"]);
    *(int32_t *)(int64_t *)&self->mMaxDPadDetectionRadiusFactor = *(int32_t *)0x100b9b1ec;
    sub_1005d83f0([[[MCConfigurationData sharedMCConfigurationData] recordFromTable:@"Default Settings - Controls" searchByField:@"key" withValue:@"cellSnapRate"] objectForKey:@"value"]);
    *(int32_t *)(int64_t *)&self->mCellSnapRate = 0x4018000000000000;
    sub_1005d83f0([[[MCConfigurationData sharedMCConfigurationData] recordFromTable:@"Default Settings - Controls" searchByField:@"key" withValue:@"cameraPositionSnapRate"] objectForKey:@"value"]);
    *(int32_t *)(int64_t *)&self->mCameraPositionSnapRate = 0x4014000000000000;
    sub_1005d83f0([[[MCConfigurationData sharedMCConfigurationData] recordFromTable:@"Default Settings - Controls" searchByField:@"key" withValue:@"cameraScaleSnapRate"] objectForKey:@"value"]);
    *(int32_t *)(int64_t *)&self->mCameraScaleSnapRate = 0x4000000000000000;
    sub_1005d83f0([[[MCConfigurationData sharedMCConfigurationData] recordFromTable:@"Default Settings - Controls" searchByField:@"key" withValue:@"aimSnapRate"] objectForKey:@"value"]);
    *(int32_t *)(int64_t *)&self->mAimSnapRate = 0x4010000000000000;
    sub_1005d83f0([[[MCConfigurationData sharedMCConfigurationData] recordFromTable:@"Default Settings - Controls" searchByField:@"key" withValue:@"aimMinVariationStep"] objectForKey:@"value"]);
    *(int32_t *)(int64_t *)&self->mAimMinVariationStep = 0x4010000000000000;
    sub_1005d83f0([[[MCConfigurationData sharedMCConfigurationData] recordFromTable:@"Default Settings - Controls" searchByField:@"key" withValue:@"aimMinAngleVariationStep"] objectForKey:@"value"]);
    *(int32_t *)(int64_t *)&self->mAimMinAngleVariationStep = 0x4010000000000000;
    sub_1005d83f0([[[MCConfigurationData sharedMCConfigurationData] recordFromTable:@"Default Settings - Controls" searchByField:@"key" withValue:@"camAheadDistance"] objectForKey:@"value"]);
    *(int32_t *)(int64_t *)&self->mCamAheadDistance = 0x0;
    sub_1005d83f0([[[MCConfigurationData sharedMCConfigurationData] recordFromTable:@"Default Settings - Controls" searchByField:@"key" withValue:@"camAheadVelFactor"] objectForKey:@"value"]);
    *(int32_t *)(int64_t *)&self->mCamAheadVelocityFactor = 0x0;
    sub_1005d83f0([[[MCConfigurationData sharedMCConfigurationData] recordFromTable:@"Default Settings - Controls" searchByField:@"key" withValue:@"camBoundaries"] objectForKey:@"value"]);
    *(int32_t *)(int64_t *)&self->mCamBoundaries = 0x42960000;
    sub_1005d83f0([[[MCConfigurationData sharedMCConfigurationData] recordFromTable:@"Default Settings - Controls" searchByField:@"key" withValue:@"interpolationModifier"] objectForKey:@"value"]);
    *(int32_t *)(int64_t *)&self->mInterpolationModifier = 0x3ff0000000000000;
    sub_1005d83f0([[[MCConfigurationData sharedMCConfigurationData] recordFromTable:@"Default Settings - Controls" searchByField:@"key" withValue:@"softTouchDistance"] objectForKey:@"value"]);
    *(int32_t *)(int64_t *)&self->mSoftBodiesTouchDistance = 0x4024000000000000;
    return;
}

-(float)cameraPositionSnapRate {
    r0 = self;
    return r0;
}

-(float)cellSnapRate {
    r0 = self;
    return r0;
}

-(float)cameraScaleSnapRate {
    r0 = self;
    return r0;
}

-(float)aimSnapRate {
    r0 = self;
    return r0;
}

-(struct CGSize)arenaSize {
    r0 = self;
    return r0;
}

-(float)aimMinVariationStep {
    r0 = self;
    return r0;
}

-(float)softBodiesTouchDistance {
    r0 = self;
    return r0;
}

-(float)minMassToShoot {
    r0 = self;
    return r0;
}

-(unsigned int)maxPlayerCells {
    r0 = *(int32_t *)(int64_t *)&self->mMaxPlayerCells;
    return r0;
}

-(float)minMassToSplit {
    r0 = self;
    return r0;
}

-(float)aimMinAngleVariationStep {
    r0 = self;
    return r0;
}

-(float)timeToSendTCPAxis {
    r0 = self;
    return r0;
}

-(float)cameraAheadVelocityFactor {
    r0 = self;
    return r0;
}

-(float)cameraAheadDistance {
    r0 = self;
    return r0;
}

-(float)cameraBoundaries {
    r0 = self;
    return r0;
}

-(float)interpolationModifier {
    r0 = self;
    return r0;
}

@end