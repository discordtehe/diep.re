@implementation TJPlacementContentTracker

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 reset];
    }
    r0 = r19;
    return r0;
}

-(void)contentIsReady {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(contentReadyTracker));
    r19 = [*(r20 + r21) retain];
    if (r19 != 0x0) {
            *(r20 + r21) = 0x0;
            [r19 release];
            r0 = [r19 end];
            r0 = [r0 retain];
            [r0 track];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)didReceiveRequestForPlacement:(void *)arg2 withPlacementType:(void *)arg3 withContentType:(void *)arg4 {
    r31 = r31 - 0x70;
    var_50 = r28;
    stack[-88] = r27;
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
    r22 = self;
    r19 = [arg2 retain];
    var_58 = r19;
    r24 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [TJUsageTracking startUsage:@"PlacementContent.funnel"];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 addDimensionName:@"placement" value:r19];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 addDimensionName:@"placement_type" value:r24];
    r0 = [r0 retain];
    r27 = r0;
    r28 = [[r0 addDimensionName:@"content_type" value:r21] retain];
    r19 = [@(0x0) retain];
    r0 = [r28 addDimensionName:@"state" value:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(funnelTracker));
    r8 = *(r22 + r20);
    *(r22 + r20) = r0;
    [r8 release];
    [r19 release];
    [r28 release];
    [r27 release];
    r0 = r26;
    r26 = r24;
    [r0 release];
    [r25 release];
    r0 = *(r22 + r20);
    r20 = var_58;
    [r0 track];
    if (([r21 isEqualToString:r2] & 0x1) == 0x0) {
            r0 = [TJUsageTracking startUsage:r2];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 addDimensionName:@"placement" value:r20];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 addDimensionName:@"placement_type" value:r26];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 addDimensionName:@"content_type" value:r21];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(contentReadyTracker));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            [r25 release];
            [r24 release];
            [r19 release];
    }
    [r21 release];
    [r26 release];
    [r20 release];
    return;
}

-(void)didCallIsContentAvailable {
    [self trackWithStep:0x1];
    return;
}

-(void)didCallIsContentReady:(bool)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0 trackWithStep:r2];
    }
    else {
            [r0 trackWithStep:r2];
    }
    return;
}

-(void)didCallShow {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    [self trackWithStep:0x8];
    r0 = self->_contentTracker;
    if (r0 != 0x0) {
            [[[r0 startContentRenderTracking] retain] release];
    }
    return;
}

-(void)setShowContentTracker:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->showContentTracker, arg2);
    return;
}

-(void)didShowContent {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    [self trackWithStep:0x10];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(showContentTracker));
    r19 = [*(r20 + r21) retain];
    if (r19 != 0x0) {
            *(r20 + r21) = 0x0;
            [r19 release];
            r0 = [r19 end];
            r0 = [r0 retain];
            [r0 track];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)contentDidRender {
    r0 = self->_contentTracker;
    if (r0 != 0x0) {
            [[[r0 contentDidRender] retain] release];
    }
    return;
}

-(void)didDismissContent {
    r0 = self->_contentTracker;
    if (r0 != 0x0) {
            [r0 contentWasDismissed];
    }
    return;
}

-(void)trackWithStep:(unsigned int)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r20 = self;
    r19 = [r20->funnelTracker retain];
    if (r19 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(state));
            r9 = *(int32_t *)(r20 + r8);
            if (r9 < r21) {
                    *(int32_t *)(r20 + r8) = r9 | r21;
                    r20 = [[NSNumber numberWithUnsignedInt:r2] retain];
                    r0 = [r19 addDimensionName:@"state" value:r20];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 end];
                    r0 = [r0 retain];
                    [r0 track];
                    [r0 release];
                    [r21 release];
                    [r20 release];
            }
    }
    [r19 release];
    return;
}

-(void)reset {
    *(int32_t *)(int64_t *)&self->state = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(funnelTracker));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_contentTracker));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    return;
}

-(void)addDimension:(void *)arg2 withValue:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [r22->funnelTracker retain];
    if (r21 != 0x0) {
            r0 = [r21 addDimensionName:r19 value:r20];
            r29 = r29;
            [[r0 retain] release];
    }
    r0 = r22->contentReadyTracker;
    if (r0 != 0x0) {
            [[[r0 addDimensionName:r19 value:r20] retain] release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)contentTracker {
    r0 = self->_contentTracker;
    return r0;
}

-(void)setContentTracker:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_contentTracker, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_contentTracker, 0x0);
    objc_storeStrong((int64_t *)&self->contentReadyTracker, 0x0);
    objc_storeStrong((int64_t *)&self->showContentTracker, 0x0);
    objc_storeStrong((int64_t *)&self->funnelTracker, 0x0);
    return;
}

@end