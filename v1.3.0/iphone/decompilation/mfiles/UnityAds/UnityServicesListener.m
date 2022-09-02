@implementation UnityServicesListener

-(void)unityServicesDidError:(long long)arg2 withMessage:(void *)arg3 {
    r3 = arg3;
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if (r19 == 0x1) {
            if (CPU_FLAGS & E) {
                    r20 = 0x1;
            }
    }
    r0 = [r3 retain];
    r8 = r20 << 0x2;
    if (r19 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r8;
            }
            else {
                    r8 = 0x2;
            }
    }
    [r0 retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

@end