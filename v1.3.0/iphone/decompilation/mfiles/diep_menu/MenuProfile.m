@implementation MenuProfile

-(void)setupWithStateId:(unsigned long long)arg2 parameters:(void *)arg3 {
    r31 = r31 - 0x80;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_50 super] setupWithStateId:arg2 parameters:arg3];
    r0 = [LocalizedCCBReader reader];
    r0 = [r0 nodeGraphFromFile:@"MenuProfile.ccbi" owner:r19];
    r2 = r0;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mCCBRootNode));
    *(r19 + r24) = r0;
    [r19->mBaseNode addChild:r2];
    r23 = [[[[Application sharedApplication] userData] account] displayName];
    r22 = [[[[Application sharedApplication] userData] account] platformDisplayName];
    [*(r19 + r24) setupLayout];
    r0 = *(r19 + r24);
    if (r22 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r22;
            }
            else {
                    r2 = @"";
            }
    }
    if (r23 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r3 = r23;
            }
            else {
                    r3 = @"";
            }
    }
    [r0 setDisplayName:r2 userId:r3];
    r22 = *(r19 + r24);
    r20 = [[[Application sharedApplication] userData] wallet];
    r0 = sub_10004f734(&var_68, "coin");
    [r22 setCoinsValue:[r20 quantityOwnedOf:&var_68]];
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(var_68);
    }
    [r19 updateXPAndLevel];
    [r19 updateStats];
    return;
}

-(void)disableInput {
    [[&var_20 super] disableInput];
    [self->mCCBRootNode disableInput];
    return;
}

-(void)enableInput {
    [[&var_20 super] enableInput];
    [self->mCCBRootNode enableInput];
    return;
}

-(void)processContextEvent:(void *)arg2 withData:(void *)arg3 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if (([r20 isEqualToString:r2] & 0x1) == 0x0 && [r20 isEqualToString:r2] != 0x0) {
                    if ([r19 isBackButtonEnabled] != 0x0) {
                            [r19 backButtonCallback];
                    }
            }
    }
    return;
}

-(void)backButtonCallback {
    [[[Application sharedApplication] stateMachine] leaveApplicationStateFromTop:r2];
    return;
}

-(void)achievementsButtonCallback {
    return;
}

-(void)updateXPAndLevel {
    return;
}

-(void)updateStats {
    r24 = sign_extend_64(*(int32_t *)ivar_offset(mCCBRootNode));
    [*(self + r24) setTotalGames:[[[[Application sharedApplication] userData] stats] games_played]];
    [*(self + r24) setHighestMass:[[[[Application sharedApplication] userData] stats] highest_mass]];
    [*(self + r24) setTotalMass:[[[[Application sharedApplication] userData] stats] mass_consumed]];
    [*(self + r24) setLongestTimeAlive:[[[[Application sharedApplication] userData] stats] longest_time_alive]];
    [*(self + r24) setAverageMass:[[[[Application sharedApplication] userData] stats] average_mass]];
    [*(self + r24) setTotalCellsEaten:[[[[Application sharedApplication] userData] stats] normal_cells_eaten]];
    return;
}

-(double)enterWithPreviousState:(unsigned long long)arg2 fromStack:(bool)arg3 {
    r0 = self;
    if ((arg3 & 0x1) == 0x0) {
            r0 = r0->mCCBRootNode;
            r0 = [r0 onEnterWithPreviousState:r2 fromStack:r3];
    }
    return r0;
}

-(double)leaveWithNewState:(unsigned long long)arg2 toStack:(bool)arg3 {
    r0 = self;
    if ((arg3 & 0x1) == 0x0) {
            r0 = r0->mCCBRootNode;
            r0 = [r0 onLeaveWithNewState:r2 toStack:r3];
    }
    return r0;
}

-(bool)occupiesFullScreen {
    return 0x1;
}

-(double)refresh {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r23 = [[[[Application sharedApplication] userData] account] displayName];
    r0 = @class(Application);
    r0 = [r0 sharedApplication];
    r0 = [r0 userData];
    r0 = [r0 account];
    r0 = [r0 platformDisplayName];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mCCBRootNode));
    r8 = *(r19 + r8);
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r0;
            }
            else {
                    r2 = @"";
            }
    }
    if (r23 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r3 = r23;
            }
            else {
                    r3 = @"";
            }
    }
    [r8 setDisplayName:r2 userId:r3];
    [r19 updateStats];
    r0 = [[&var_40 super] refresh];
    return r0;
}

@end