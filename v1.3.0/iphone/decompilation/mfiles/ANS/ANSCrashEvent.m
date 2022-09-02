@implementation ANSCrashEvent

-(void *)initWithTimestamp:(void *)arg2 crashState:(unsigned long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = arg2;
    r20 = [r21 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_crashTimestamp, r21);
            r22->_crashState = r19;
    }
    [r20 release];
    r0 = r22;
    return r0;
}

-(void *)name {
    r0 = objc_retainAutoreleaseReturnValue(*0x100e6be80);
    return r0;
}

-(void *)timestamp {
    r0 = [self crashTimestamp];
    return r0;
}

-(void *)dictionaryRepresentation {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r20 = [[self identifier] retain];
    r21 = [[self payloadStringForCrashState:[self crashState]] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-72] forKeys:&var_48 count:0x2];
    r19 = [r0 retain];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)payloadStringForCrashState:(unsigned long long)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x1) {
            if (r2 == 0x2) {
                    r19 = @"background";
            }
            else {
                    r19 = @"unknown";
            }
    }
    else {
            r19 = @"foreground";
    }
    [r19 retain];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)crashTimestamp {
    r0 = self->_crashTimestamp;
    return r0;
}

-(void)setCrashTimestamp:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_crashTimestamp, arg2);
    return;
}

-(unsigned long long)crashState {
    r0 = self->_crashState;
    return r0;
}

-(void)setCrashState:(unsigned long long)arg2 {
    self->_crashState = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_crashTimestamp, 0x0);
    return;
}

@end