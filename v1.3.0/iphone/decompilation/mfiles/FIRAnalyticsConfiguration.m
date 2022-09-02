@implementation FIRAnalyticsConfiguration

+(void *)sharedInstance {
    if (*qword_1011d1d60 != -0x1) {
            dispatch_once(0x1011d1d60, 0x100e6a800);
    }
    r0 = *0x1011d1d58;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setAnalyticsCollectionEnabled:(bool)arg2 {
    [self setAnalyticsCollectionEnabled:arg2 persistSetting:0x1];
    return;
}

-(void)postNotificationName:(void *)arg2 value:(void *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 length];
    if (r20 != 0x0 && r0 != 0x0) {
            r22 = [[NSNotificationCenter defaultCenter] retain];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1];
            r23 = [r0 retain];
            [r22 postNotificationName:r19 object:r21 userInfo:r23];
            [r23 release];
            [r22 release];
    }
    var_38 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)setAnalyticsCollectionEnabled:(bool)arg2 persistSetting:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    if (arg3 != 0x0) {
            if (r20 == 0x0) {
                    asm { cinc       x21, x8, eq };
            }
            r22 = [[NSUserDefaults standardUserDefaults] retain];
            r0 = [NSNumber numberWithLongLong:r21];
            r29 = r29;
            r21 = [r0 retain];
            [r22 setObject:r21 forKey:@"/google/measurement/measurement_enabled_state"];
            [r21 release];
            [r22 synchronize];
            [r22 release];
    }
    r20 = [[NSNumber numberWithBool:r20] retain];
    [r19 postNotificationName:@"FIRAnalyticsConfigurationSetEnabledNotification" value:r20];
    [r20 release];
    return;
}

@end