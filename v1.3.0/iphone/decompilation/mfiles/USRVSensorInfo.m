@implementation USRVSensorInfo

+(bool)startAccelerometerUpdates:(double)arg2 {
    r2 = arg2;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    if (*0x1011d1b78 == 0x0) {
            r0 = [CMMotionManager alloc];
            r0 = [r0 init];
            r8 = *0x1011d1b78;
            *0x1011d1b78 = r0;
            [r8 release];
    }
    r0 = *0x1011d1b78;
    r0 = [r0 isAccelerometerAvailable];
    if (r0 != 0x0) {
            [*0x1011d1b78 setAccelerometerUpdateInterval:r2];
            [*0x1011d1b78 startAccelerometerUpdates];
            r0 = 0x1;
    }
    return r0;
}

+(void)stopAccelerometerUpdates {
    if (*0x1011d1b78 != 0x0) {
            [*0x1011d1b78 stopAccelerometerUpdates];
    }
    return;
}

+(bool)isAccelerometerActive {
    if (*0x1011d1b78 != 0x0 && ([*0x1011d1b78 isAccelerometerActive] & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

+(void *)getAccelerometerData {
    r31 = r31 - 0x90;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*0x1011d1b78 != 0x0 && [*0x1011d1b78 isAccelerometerActive] != 0x0) {
            r0 = *0x1011d1b78;
            r0 = [r0 accelerometerData];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            [r0 release];
            if (r20 != 0x0) {
                    r0 = *0x1011d1b78;
                    r0 = [r0 accelerometerData];
                    r0 = [r0 retain];
                    [r0 acceleration];
                    [r0 release];
                    r0 = *0x1011d1b78;
                    r0 = [r0 accelerometerData];
                    r0 = [r0 retain];
                    [r0 acceleration];
                    [r0 release];
                    r0 = *0x1011d1b78;
                    r0 = [r0 accelerometerData];
                    r0 = [r0 retain];
                    [r0 acceleration];
                    [r0 release];
                    r19 = [[NSNumber numberWithDouble:r2] retain];
                    r21 = [[NSNumber numberWithDouble:r2] retain];
                    r22 = [[NSNumber numberWithDouble:r2] retain];
                    r20 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
                    [r22 release];
                    [r21 release];
                    [r19 release];
            }
    }
    else {
            r20 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end