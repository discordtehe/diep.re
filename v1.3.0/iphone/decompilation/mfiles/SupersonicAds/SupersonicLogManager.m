@implementation SupersonicLogManager

+(void *)sharedManager {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dad30 != -0x1) {
            dispatch_once(0x1011dad30, &var_28);
    }
    r0 = *0x1011dad28;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)log:(void *)arg2 withLevel:(unsigned long long)arg3 withTag:(unsigned long long)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r22 = [r0 integerForKey:@"debugMode"];
    [r0 release];
    if (r22 != 0x0) {
            asm { ccmp       x8, x20, #0x2, ne };
    }
    if (!CPU_FLAGS & A) {
            NSLog(@"%@", @selector(integerForKey:));
    }
    [r19 release];
    return;
}

@end