@implementation VNGMoatJSUpdateTimer

+(void *)sharedJSUpdateTimer {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011da9b8 != -0x1) {
            dispatch_once(0x1011da9b8, &var_28);
    }
    r0 = *0x1011da9b0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r21 = [[NSHashTable weakObjectsHashTable] retain];
            [r19 setSetupNeededBridges:r21];
            [r21 release];
            r20 = [[NSHashTable weakObjectsHashTable] retain];
            [r19 setActiveTrackers:r20];
            [r20 release];
            [r19 setViewabilityTimerDuration:r20];
    }
    r0 = r19;
    return r0;
}

-(void)addSetupNeededBridge:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 setupNeededBridges];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    [r0 release];
    if (r19 != 0x0 && r22 != 0x0) {
            r0 = [r20 setupNeededBridges];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 containsObject:r2];
            [r0 release];
            if ((r23 & 0x1) == 0x0) {
                    r0 = [r20 setupNeededBridges];
                    r0 = [r0 retain];
                    [r0 addObject:r19];
                    [r0 release];
                    [r20 startMetadataTimer];
            }
    }
    [r19 release];
    return;
}

-(void)removeSetupNeededBridge:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 setupNeededBridges];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    [r0 release];
    if (r19 != 0x0 && r22 != 0x0) {
            r0 = [r20 setupNeededBridges];
            r0 = [r0 retain];
            [r0 removeObject:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)addActiveTracker:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [VNGMoatLogging reportDevLogWithObject:r20 format:@"Adding active tracker %@"];
    r0 = [r20 activeTrackers];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    [r0 release];
    if (r19 != 0x0 && r22 != 0x0) {
            r0 = [r20 activeTrackers];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 containsObject:r2];
            [r0 release];
            if ((r23 & 0x1) == 0x0) {
                    r0 = [r20 activeTrackers];
                    r0 = [r0 retain];
                    [r0 addObject:r19];
                    [r0 release];
                    [r20 startViewabilityTimer];
            }
    }
    [r19 release];
    return;
}

-(void)removeActiveTracker:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 activeTrackers];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    [r0 release];
    if (r19 != 0x0 && r22 != 0x0) {
            r0 = [r20 activeTrackers];
            r0 = [r0 retain];
            [r0 removeObject:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)startMetadataTimer {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self metadataTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 isValid];
    [r0 release];
    if ((r21 & 0x1) == 0x0) {
            r20 = [[NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(metadataLoopEnded:) selector:0x0 userInfo:0x1 repeats:r6] retain];
            [r19 setMetadataTimer:r20];
            [r20 release];
    }
    return;
}

-(void)startViewabilityTimer {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self viewabilityTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 isValid];
    [r0 release];
    if ((r21 & 0x1) == 0x0) {
            [r19 viewabilityTimerDuration];
            r20 = [[NSTimer scheduledTimerWithTimeInterval:r19 target:@selector(viewabilityLoopEnded:) selector:0x0 userInfo:0x1 repeats:r6] retain];
            [r19 setViewabilityTimer:r20];
            [r20 release];
    }
    return;
}

-(void)metadataLoopEnded:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 postNotificationName:@"MOAT_JS_METADATA_NOTIFICATION" object:0x0];
    [r0 release];
    r0 = [r19 setupNeededBridges];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 == 0x0) {
            r0 = [r19 setupNeededBridges];
            r0 = [r0 retain];
            [r0 removeAllObjects];
            [r0 release];
            r0 = [r19 metadataTimer];
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
    }
    return;
}

-(void)viewabilityLoopEnded:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 postNotificationName:@"MOAT_JS_SEND_INFO_NOTIFICATION" object:0x0];
    [r0 release];
    r0 = [r19 activeTrackers];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 count];
    [r0 release];
    if (r21 == 0x0) {
            r0 = [r19 viewabilityTimer];
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
    }
    return;
}

-(void)dealloc {
    r0 = [self metadataTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    r0 = [self viewabilityTimer];
    r0 = [r0 retain];
    [r0 invalidate];
    [r0 release];
    [[&var_30 super] dealloc];
    return;
}

-(void *)viewabilityTimer {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_viewabilityTimer)), 0x1);
    return r0;
}

-(void)setViewabilityTimer:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)metadataTimer {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_metadataTimer)), 0x1);
    return r0;
}

-(void)setMetadataTimer:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)setupNeededBridges {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_setupNeededBridges)), 0x1);
    return r0;
}

-(void)setSetupNeededBridges:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)activeTrackers {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_activeTrackers)), 0x1);
    return r0;
}

-(void)setActiveTrackers:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(double)viewabilityTimerDuration {
    r0 = self;
    return r0;
}

-(void)setViewabilityTimerDuration:(double)arg2 {
    self->_viewabilityTimerDuration = d0;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_activeTrackers, 0x0);
    objc_storeStrong((int64_t *)&self->_setupNeededBridges, 0x0);
    objc_storeStrong((int64_t *)&self->_metadataTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_viewabilityTimer, 0x0);
    return;
}

@end