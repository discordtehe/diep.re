@implementation FBAdFingerprinter

+(void)performFingerprint {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*qword_1011dda78 != -0x1) {
            dispatch_once(0x1011dda78, 0x100ea9da8);
    }
    [*0x1011dda80 lock];
    r0 = sub_100a5578c();
    r0 = [r0 retain];
    r8 = *0x1011dda88;
    *0x1011dda88 = r0;
    [r8 release];
    [*0x1011dda80 unlock];
    return;
}

+(void *)fingerprint {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*qword_1011dda78 != -0x1) {
            dispatch_once(0x1011dda78, 0x100ea9da8);
    }
    [*0x1011dda80 lock];
    if (*0x1011dda88 == 0x0) {
            r0 = sub_100a5578c();
            r0 = [r0 retain];
            r8 = *0x1011dda88;
            *0x1011dda88 = r0;
            [r8 release];
    }
    r19 = [*0x1011dda88 retain];
    [*0x1011dda80 unlock];
    r0 = [r19 autorelease];
    return r0;
}

@end