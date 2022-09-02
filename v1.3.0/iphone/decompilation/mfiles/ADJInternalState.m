@implementation ADJInternalState

-(bool)isEnabled {
    r0 = [self enabled];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isDisabled {
    r0 = [self enabled];
    r0 = r0 ^ 0x1;
    return r0;
}

-(bool)isOffline {
    r0 = [self offline];
    return r0;
}

-(bool)isBackground {
    r0 = [self background];
    return r0;
}

-(bool)isOnline {
    r0 = [self offline];
    r0 = r0 ^ 0x1;
    return r0;
}

-(bool)isForeground {
    r0 = [self background];
    r0 = r0 ^ 0x1;
    return r0;
}

-(bool)isDelayStart {
    r0 = [self delayStart];
    return r0;
}

-(bool)isToStartNow {
    r0 = [self delayStart];
    r0 = r0 ^ 0x1;
    return r0;
}

-(bool)isToUpdatePackages {
    r0 = [self updatePackages];
    return r0;
}

-(bool)isFirstLaunch {
    r0 = [self firstLaunch];
    return r0;
}

-(bool)hasSessionResponseNotProcessed {
    r0 = [self sessionResponseProcessed];
    r0 = r0 ^ 0x1;
    return r0;
}

-(bool)enabled {
    r0 = *(int8_t *)(int64_t *)&self->_enabled;
    return r0;
}

-(void)setEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_enabled = arg2;
    return;
}

-(bool)offline {
    r0 = *(int8_t *)(int64_t *)&self->_offline;
    return r0;
}

-(void)setOffline:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_offline = arg2;
    return;
}

-(bool)background {
    r0 = *(int8_t *)(int64_t *)&self->_background;
    return r0;
}

-(void)setBackground:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_background = arg2;
    return;
}

-(bool)delayStart {
    r0 = *(int8_t *)(int64_t *)&self->_delayStart;
    return r0;
}

-(void)setDelayStart:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_delayStart = arg2;
    return;
}

-(bool)updatePackages {
    r0 = *(int8_t *)(int64_t *)&self->_updatePackages;
    return r0;
}

-(void)setUpdatePackages:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_updatePackages = arg2;
    return;
}

-(bool)firstLaunch {
    r0 = *(int8_t *)(int64_t *)&self->_firstLaunch;
    return r0;
}

-(void)setFirstLaunch:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_firstLaunch = arg2;
    return;
}

-(bool)sessionResponseProcessed {
    r0 = *(int8_t *)(int64_t *)&self->_sessionResponseProcessed;
    return r0;
}

-(void)setSessionResponseProcessed:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_sessionResponseProcessed = arg2;
    return;
}

@end