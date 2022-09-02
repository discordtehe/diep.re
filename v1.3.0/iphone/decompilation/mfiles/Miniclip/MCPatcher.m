@implementation MCPatcher

+(void *)patcherWithDelegate:(void *)arg2 withBundlePath:(void *)arg3 andTempPath:(void *)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithDelegate:arg2 withBundlePath:arg3 andTempPath:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void)dealloc {
    [self detach];
    [[&var_20 super] dealloc];
    return;
}

-(void)detach {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(*(self + 0x20) + 0x8) = 0x0;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    return;
}

-(void *)initWithDelegate:(void *)arg2 withBundlePath:(void *)arg3 andTempPath:(void *)arg4 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r21 = arg3;
    r22 = arg2;
    r0 = [[&saved_fp - 0x40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [r22 retain];
            r0 = operator new();
            *(r0 + 0x10) = 0x0;
            *(int128_t *)r0 = *qword_100e609c8 + 0x10;
            *(int128_t *)(r0 + 0x8) = 0x0;
            r9 = *qword_100e60800 + 0x10;
            r8 = r0 + 0x18;
            *r8 = r9;
            *(r0 + 0x20) = r19;
            r22 = *(r19 + 0x28);
            *(int128_t *)(r19 + 0x20) = r8;
            *(int128_t *)(r19 + 0x28) = r0;
            if (r22 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            r10 = r9 - 0x1;
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r22 + 0x10))(r22);
                            std::__1::__shared_weak_count::__release_weak();
                    }
                    r0 = *(int128_t *)(r19 + 0x28);
                    r23 = &var_50;
                    var_58 = r0;
                    if (r0 != 0x0) {
                            do {
                                    asm { ldxr       x9, [x8] };
                                    r9 = r9 + 0x1;
                                    asm { stxr       w10, x9, [x8] };
                            } while (r10 != 0x0);
                    }
            }
            else {
                    r23 = &var_50;
                    var_58 = r0;
                    do {
                            asm { ldxr       x9, [x8] };
                            r9 = r9 + 0x1;
                            asm { stxr       w10, x9, [x8] };
                    } while (r10 != 0x0);
            }
            sub_10027f500(&var_78, [r21 UTF8String]);
            sub_10027f500(&var_90, [r20 UTF8String]);
            r0 = sub_100286430(&var_60, &var_78, &var_90);
            r9 = var_48;
            *(int128_t *)r23 = 0x0;
            *(int128_t *)(r23 + 0x8) = 0x0;
            r20 = *(r19 + 0x18);
            *(int128_t *)(r19 + 0x10) = var_50;
            *(int128_t *)(r19 + 0x18) = r9;
            if (r20 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r20 + 0x10))(r20);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
            r20 = var_48;
            if (r20 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r20 + 0x10))(r20);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
            if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_90);
            }
            if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_78);
            }
            if (var_58 != 0x0) {
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    r0 = r19;
    return r0;
}

-(void *)delegate {
    r0 = *(self + 0x8);
    return r0;
}

-(void)applyPatch:(void *)arg2 toOldFile:(void *)arg3 forNewFile:(void *)arg4 {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    sub_10027f500(&saved_fp - 0x38, [arg3 UTF8String]);
    sub_10027f500(&var_50, [arg2 UTF8String]);
    sub_10027f500(&var_68, [arg4 UTF8String]);
    sub_10027f500(&var_80, "");
    r0 = sub_1002868f4(r19, &saved_fp - 0x38, &var_50, &var_68, &var_80);
    if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
            operator delete(var_80);
    }
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(var_68);
    }
    if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
            operator delete(var_50);
    }
    if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
            operator delete(var_38);
    }
    return;
}

-(void *)patchesRemaining {
    r31 = r31 - 0x90;
    var_50 = r28;
    stack[-88] = r27;
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
    r19 = [NSMutableArray array];
    sub_100287270(*(self + 0x10));
    r20 = var_68;
    r25 = stack[-112];
    if (r20 != r25) {
            r27 = &var_80;
            do {
                    sub_100286330(r20);
                    r9 = var_80;
                    if (sign_extend_64(var_69) < 0x0) {
                            if (!CPU_FLAGS & L) {
                                    r2 = r27;
                            }
                            else {
                                    r2 = r9;
                            }
                    }
                    r23 = @selector(addObject:);
                    r2 = [[NSString stringWithUTF8String:r2] lastPathComponent];
                    objc_msgSend(r19, r23);
                    if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_80);
                    }
                    r20 = r20 + 0x48;
            } while (r25 != r20);
    }
    sub_10027ffa8(&var_68);
    r0 = r19;
    return r0;
}

-(void)applyPatch:(void *)arg2 toOldFile:(void *)arg3 forNewFile:(void *)arg4 withExpectedResultMD5:(void *)arg5 {
    r31 = r31 - 0xc0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg5;
    r20 = arg4;
    r23 = arg3;
    r22 = arg2;
    r21 = self;
    if (arg2 != 0x0 && r23 != 0x0) {
            if (r20 == 0x0) {
                    [*(r21 + 0x8) patcher:r21 failedToPatchFile:r20 fromPatch:r22 withError:[NSError errorWithDomain:@"MCPatcherErrorDomain" code:0x0 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[NSString stringWithFormat:@"Cannot apply patch -- provided empty filepath!\n - %@\n - %@\n - %@"]]]];
            }
    }
    else {
            [*(r21 + 0x8) patcher:r21 failedToPatchFile:r20 fromPatch:r22 withError:[NSError errorWithDomain:@"MCPatcherErrorDomain" code:0x0 userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[NSString stringWithFormat:@"Cannot apply patch -- provided empty filepath!\n - %@\n - %@\n - %@"]]]];
    }
    r21 = *(r21 + 0x10);
    sub_10027f500(r29 - 0x48, [r23 UTF8String]);
    sub_10027f500(&var_60, objc_msgSend(r22, r24));
    sub_10027f500(&var_78, objc_msgSend(r20, r24));
    if (r19 != 0x0) {
            r1 = [r19 UTF8String];
    }
    else {
            r1 = "";
    }
    sub_10027f500(&var_90, r1);
    r0 = sub_1002868f4(r21, r29 - 0x48, &var_60, &var_78, &var_90);
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
            operator delete(var_78);
    }
    if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
            operator delete(var_60);
    }
    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
            operator delete(var_48);
    }
    return;
}

-(void).cxx_destruct {
    sub_10027ff50(self + 0x20);
    sub_10027ff50(self + 0x10);
    return;
}

-(void *).cxx_construct {
    r0 = self;
    *(int128_t *)(r0 + 0x10) = q0;
    *(int128_t *)(r0 + 0x20) = q0;
    return r0;
}

@end