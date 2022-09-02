@implementation AdColonyZone

-(void *)init {
    r0 = [NSException exceptionWithName:@"AdColonyUsageException" reason:@"AdColonyZone instance must not be created directly. You only need to use one when it is passed to you." userInfo:0x0];
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    r0 = objc_exception_throw(r0);
    return r0;
}

-(void)setReward:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[AdColony sharedInstance] retain];
    r19 = [[self identifier] retain];
    [r20 setRewardCallback:r22 forZone:r19];
    [r22 release];
    [r19 release];
    [r20 release];
    return;
}

-(void *)reward {
    r20 = [[AdColony sharedInstance] retain];
    r19 = [[self identifier] retain];
    r21 = [[r20 rewardCallbackForZone:r19] retain];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)identifier {
    r0 = self->_identifier;
    return r0;
}

-(unsigned long long)type {
    r0 = self->_type;
    return r0;
}

-(bool)rewarded {
    r0 = *(int8_t *)(int64_t *)&self->_rewarded;
    return r0;
}

-(bool)enabled {
    r0 = *(int8_t *)(int64_t *)&self->_enabled;
    return r0;
}

-(unsigned long long)viewsPerReward {
    r0 = self->_viewsPerReward;
    return r0;
}

-(unsigned long long)viewsUntilReward {
    r0 = self->_viewsUntilReward;
    return r0;
}

-(unsigned long long)rewardAmount {
    r0 = self->_rewardAmount;
    return r0;
}

-(void *)rewardName {
    r0 = self->_rewardName;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rewardPrompt, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardNamePlural, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardName, 0x0);
    objc_storeStrong((int64_t *)&self->_identifier, 0x0);
    return;
}

-(void *)initSafe {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            objc_storeStrong((int64_t *)&r19->_identifier, @"");
            *(int8_t *)(int64_t *)&r19->_enabled = 0x1;
            *(int8_t *)(int64_t *)&r19->_rewarded = 0x0;
            r19->_viewsPerReward = 0x0;
            r19->_viewsUntilReward = 0x0;
            r19->_rewardAmount = 0x0;
            objc_storeStrong((int64_t *)&r19->_rewardName, @"");
            objc_storeStrong((int64_t *)&r19->_rewardNamePlural, @"");
            objc_storeStrong((int64_t *)&r19->_rewardPrompt, @"");
            r19->_playInterval = 0x0;
            r19->_currentAttempt = 0x0;
            *(int8_t *)(int64_t *)&r19->_firstPlay = 0x1;
    }
    r0 = r19;
    return r0;
}

-(void)setIdentifier:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_identifier, arg2);
    return;
}

-(void)setEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_enabled = arg2;
    return;
}

-(void)setType:(unsigned long long)arg2 {
    self->_type = arg2;
    return;
}

-(void)setPlayInterval:(unsigned long long)arg2 {
    self->_playInterval = arg2;
    return;
}

-(void)setCurrentAttempt:(unsigned long long)arg2 {
    self->_currentAttempt = arg2;
    return;
}

-(void)setFirstPlay:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_firstPlay = arg2;
    return;
}

-(void)setRewarded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_rewarded = arg2;
    return;
}

-(void)setViewsPerReward:(unsigned long long)arg2 {
    self->_viewsPerReward = arg2;
    return;
}

-(void)setRewardAmount:(unsigned long long)arg2 {
    self->_rewardAmount = arg2;
    return;
}

-(void)setViewsUntilReward:(unsigned long long)arg2 {
    self->_viewsUntilReward = arg2;
    return;
}

-(void)setRewardName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardName, arg2);
    return;
}

-(void)setRewardPrompt:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardPrompt, arg2);
    return;
}

-(void)setRewardNamePlural:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardNamePlural, arg2);
    return;
}

-(unsigned long long)playInterval {
    r0 = self->_playInterval;
    return r0;
}

-(unsigned long long)currentAttempt {
    r0 = self->_currentAttempt;
    return r0;
}

-(bool)firstPlay {
    r0 = *(int8_t *)(int64_t *)&self->_firstPlay;
    return r0;
}

@end