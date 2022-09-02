@implementation ADCColorViewAPI

+(bool)createWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = [arg2 retain];
    r19 = [[ADCViewContext alloc] initWithDict:r22 moduleID:arg3 andType:[ADCColorView class] viewExists:0x0];
    [r22 release];
    r0 = [r19 isValid:0x0];
    r21 = 0x0;
    if (r0 != 0x0) {
            r20 = [ADCColorView alloc];
            [r19 rect];
            r20 = [r20 initWithFrame:0x0];
            r22 = [[r19 container] retain];
            [r20 setTouchDelegate:r22];
            [r22 release];
            r21 = [[r19 container] retain];
            r0 = [r19 viewID];
            r0 = [r0 retain];
            [r21 bindObject:r20 withIdentifier:[r0 unsignedIntegerValue]];
            [r0 release];
            [r21 release];
            var_40 = [r19 retain];
            var_38 = r20;
            [r20 retain];
            dispatch_async(*__dispatch_main_q, &var_60);
            [var_38 release];
            [var_40 release];
            [r20 release];
            r21 = 0x1;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

+(bool)setBoundsWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r19 = [[ADCViewContext alloc] initWithDict:r22 moduleID:arg3 andType:[ADCColorView class] viewExists:0x1];
    [r22 release];
    if ([r19 isValid:0x1] != 0x0) {
            var_28 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_48);
            [var_28 release];
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)destroyWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = [arg2 retain];
    r19 = [[ADCViewContext alloc] initWithDict:r22 moduleID:arg3 andType:[ADCColorView class] viewExists:0x1];
    [r22 release];
    if ([r19 isValid:0x1] != 0x0) {
            r20 = [[r19 container] retain];
            r0 = [r19 viewID];
            r0 = [r0 retain];
            [r20 unbindObjectWithIdentifier:[r0 unsignedIntegerValue]];
            [r0 release];
            [r20 release];
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)setVisibleWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCColorView class] viewExists:0x1];
    r20 = r0;
    if ([r0 isValid:0x1] != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"visible"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    [r21 boolValue];
                    [[[r20 view] retain] retain];
                    dispatch_async(*__dispatch_main_q, &var_50);
                    [r0 release];
                    [r22 release];
                    r22 = 0x1;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCColorViewAPI setVisibleWithDict:andModuleID:]" line:0x45 withFormat:@"Visible parameter not supplied"];
                    r22 = 0x0;
            }
            [r21 release];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

+(bool)setColorWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x70;
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
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCColorView class] viewExists:0x1];
    r20 = r0;
    if ([r0 isValid:0x1] != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"color"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [ADCUtil colorWithHexString:r21];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            [[[r20 view] retain] retain];
                            var_38 = [r22 retain];
                            dispatch_async(*__dispatch_main_q, &var_60);
                            [var_38 release];
                            [r0 release];
                            [r23 release];
                    }
                    [r22 release];
                    r22 = 0x1;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCColorViewAPI setColorWithDict:andModuleID:]" line:0x5a withFormat:@"Color parameter not supplied"];
                    r22 = 0x0;
            }
            [r21 release];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

@end