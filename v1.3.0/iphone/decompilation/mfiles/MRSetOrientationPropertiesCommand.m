@implementation MRSetOrientationPropertiesCommand

+(void *)commandType {
    return @"setOrientationProperties";
}

-(bool)requiresUserInteractionForPlacementType:(unsigned long long)arg2 {
    return 0x0;
}

-(bool)executableWhileBlockingRequests {
    return 0x1;
}

-(bool)executeWithParams:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            r21 = [*0x100e7eb28 retain];
    }
    if (([r21 isEqualToString:r2] & 0x1) != 0x0) {
            r23 = 0x2;
    }
    else {
            r23 = @selector(isEqualToString:);
            if ((objc_msgSend(r21, r23) & 0x1) != 0x0) {
                    r23 = 0x18;
            }
            else {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if (r0 != 0x0 && ([r20 boolFromParameters:r19 forKey:@"allowOrientationChange"] & 0x1) == 0x0) {
                            r0 = sub_1004aec08();
                            r8 = r0 - 0x3;
                            r10 = 0x1e;
                            if (r0 == 0x2) {
                                    if (!CPU_FLAGS & E) {
                                            r10 = 0x1e;
                                    }
                                    else {
                                            r10 = 0x4;
                                    }
                            }
                            if (r0 == 0x1) {
                                    if (!CPU_FLAGS & E) {
                                            r10 = r10;
                                    }
                                    else {
                                            r10 = 0x2;
                                    }
                            }
                            if (r8 < 0x2) {
                                    if (!CPU_FLAGS & B) {
                                            r23 = r10;
                                    }
                                    else {
                                            r23 = 0x18;
                                    }
                            }
                    }
                    else {
                            r23 = 0x1e;
                    }
                    [r22 release];
            }
    }
    r0 = [r20 delegate];
    r0 = [r0 retain];
    [r0 mrCommand:r20 setOrientationPropertiesWithForceOrientation:r23];
    [r0 release];
    [r21 release];
    [r19 release];
    return 0x1;
}

@end