@implementation TJContentTracker

-(void *)initWithPlacementName:(void *)arg2 placementType:(void *)arg3 contentType:(void *)arg4 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg4 retain];
    r0 = [[&var_78 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = @class(NSMutableDictionary);
            r0 = [r0 dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_eventTrackers));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r23 = @class(NSMutableDictionary);
            r24 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_68 count:0x3] retain];
            r0 = [r23 dictionaryWithDictionary:r24];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_dimensionDict));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r24 release];
    }
    var_38 = **___stack_chk_guard;
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)startTrackingEvent:(void *)arg2 {
    r0 = [self startTrackingEvent:arg2 dimensions:0x0 values:0x0];
    return r0;
}

-(void *)startTrackingEvent:(void *)arg2 dimensions:(void *)arg3 values:(void *)arg4 {
    r20 = [arg2 retain];
    r23 = [arg3 retain];
    r22 = [arg4 retain];
    r0 = [TJUsageTracking startUsage:r20];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 addDimensions:self->_dimensionDict];
    r0 = [r0 retain];
    r25 = [[r0 addDimensions:r23] retain];
    [r23 release];
    [[r25 addValues:r22] retain];
    [r22 release];
    [r25 release];
    [r0 release];
    [r24 release];
    [self->_eventTrackers setObject:r2 forKey:r3];
    [r20 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void *)endTrackingEvent:(void *)arg2 {
    r0 = [self endTrackingEvent:arg2 dimensions:0x0 values:0x0];
    return r0;
}

-(void *)endTrackingEvent:(void *)arg2 dimensions:(void *)arg3 values:(void *)arg4 {
    r31 = r31 - 0x60;
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
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [r24 removeEventTracker:r19];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r22 end];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 addDimensions:r24->_dimensionDict];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 addDimensions:r20];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 addValues:r21];
            r0 = [r0 retain];
            [r0 track];
            [r0 release];
            [r24 release];
            [r25 release];
            [r23 release];
    }
    else {
            [TJCLog logWithLevel:0x3 format:@"error when calling endTrackingEvent -- %@ tracking has not been started."];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)sendTrackingEvent:(void *)arg2 dimensions:(void *)arg3 values:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r25 = [arg4 retain];
    r19 = [TJUsageTracking newUsage:r22];
    [r22 release];
    r0 = [r19 addDimensions:self->_dimensionDict];
    r0 = [r0 retain];
    r21 = [[r0 addDimensions:r20] retain];
    [r20 release];
    r20 = [[r21 addValues:r25] retain];
    [r25 release];
    [r21 release];
    [r0 release];
    [r19 release];
    [r20 track];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)removeEventTracker:(void *)arg2 {
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_eventTrackers));
    r21 = *(self + r24);
    [arg2 retain];
    [[r21 objectForKey:arg2] retain];
    [*(self + r24) removeObjectForKey:r2];
    [r23 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)startContentRenderTracking {
    r0 = [self startTrackingEvent:@"Content.rendered"];
    return r0;
}

-(void *)contentDidRender {
    r0 = [self endTrackingEvent:@"Content.rendered"];
    return r0;
}

-(void)contentWasDismissed {
    [self->_eventTrackers removeAllObjects];
    return;
}

-(void)addDimension:(void *)arg2 value:(void *)arg3 {
    [arg2 retain];
    [self->_dimensionDict setObject:r2 forKey:r3];
    [r22 release];
    return;
}

-(void *)dimensionDict {
    r0 = self->_dimensionDict;
    return r0;
}

-(void)setDimensionDict:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dimensionDict, arg2);
    return;
}

-(void *)eventTrackers {
    r0 = self->_eventTrackers;
    return r0;
}

-(void)setEventTrackers:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_eventTrackers, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_eventTrackers, 0x0);
    objc_storeStrong((int64_t *)&self->_dimensionDict, 0x0);
    return;
}

@end