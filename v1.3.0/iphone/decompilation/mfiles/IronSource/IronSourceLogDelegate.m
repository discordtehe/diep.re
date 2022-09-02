@implementation IronSourceLogDelegate

-(void)sendLog:(void *)arg2 level:(int)arg3 tag:(int)arg4 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [arg2 retain];
    sub_100989b40(0x64);
    r0 = objc_retainAutorelease(r19);
    r20 = r0;
    r0 = [r0 UTF8String];
    r21 = &var_38;
    r0 = sub_100514fe4(&var_38, r0);
    r8 = sign_extend_64(var_21);
    r9 = var_38;
    if (r8 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r8 = r21;
            }
            else {
                    r8 = r9;
            }
    }
    loc_10098a5e8(0x0);
    if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
            operator delete(var_38);
    }
    [r20 release];
    return;
}

@end