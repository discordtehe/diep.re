@implementation CCTextureCache

+(void *)alloc {
    r0 = [[&var_10 super] alloc];
    return r0;
}

+(void *)sharedTextureCache {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = *0x1011d4258;
    if (r8 == 0x0) {
            r0 = [r0 alloc];
            r0 = [r0 init];
            r8 = r0;
            *0x1011d4258 = r0;
    }
    r0 = r8;
    return r0;
}

+(void)purgeSharedTextureCache {
    [*0x1011d4258 release];
    *0x1011d4258 = 0x0;
    return;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [[NSMutableDictionary dictionaryWithCapacity:0xa] retain];
            *(r19 + 0x10) = dispatch_queue_create("org.cocos2d.texturecacheloading", 0x0);
            *(r19 + 0x18) = dispatch_queue_create("org.cocos2d.texturecachedict", 0x0);
            *0x1011d4260 = [[EAGLContext alloc] initWithAPI:0x2 sharegroup:[[[[CCDirector sharedDirector] view] context] sharegroup]];
    }
    r0 = r19;
    return r0;
}

-(void *)description {
    dispatch_sync(*(self + 0x18), &var_70);
    _Block_object_dispose(&var_40, 0x8);
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    dispatch_sync(*(self + 0x18), &var_38);
    if (*0x1011d4260 != 0x0) {
            [*0x1011d4260 release];
            *0x1011d4260 = 0x0;
    }
    *0x1011d4258 = 0x0;
    dispatch_release(*(r19 + 0x10));
    dispatch_release(*(r19 + 0x18));
    [[&var_48 super] dealloc];
    return;
}

-(void)addImage:(struct shared_ptr<mc::Renderer::Texture>)arg2 path:(void *)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = r2;
    r19 = self;
    if (r3 != 0x0) {
            r1 = [r3 UTF8String];
    }
    else {
            r1 = "";
    }
    r0 = sub_10030bd80(&var_40, r1);
    r8 = var_29;
    r10 = var_38;
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r8 = r8;
            }
            else {
                    r8 = r10;
            }
    }
    if (r8 != 0x0) {
            r0 = sub_10042ccfc(&var_40);
            if ((sign_extend_64(var_29) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_40);
            }
            var_40 = var_58;
            r9 = var_40;
            r8 = &var_40;
            if (sign_extend_64(var_29) < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r2 = r8;
                    }
                    else {
                            r2 = r9;
                    }
            }
            r20 = [NSString stringWithUTF8String:r2];
            if ([*(r19 + 0x8) objectForKey:r2] == 0x0) {
                    if (*r21 != 0x0) {
                            r22 = [CCTexture2D alloc];
                            r0 = *(int128_t *)r21;
                            r8 = *(int128_t *)(r21 + 0x8);
                            var_60 = r8;
                            if (r8 != 0x0) {
                                    do {
                                            asm { ldxr       x9, [x8] };
                                            r9 = r9 + 0x1;
                                            asm { stxr       w10, x9, [x8] };
                                    } while (r10 != 0x0);
                                    r0 = *r21;
                            }
                            sub_10037eef8(r0);
                            r21 = [r22 initFromMCTexture:&var_68 textureScale:r3];
                            r22 = var_60;
                            if (r22 != 0x0) {
                                    do {
                                            asm { ldaxr      x9, [x8] };
                                            asm { stlxr      w11, x10, [x8] };
                                    } while (r11 != 0x0);
                                    if (r9 == 0x0) {
                                            (*(*r22 + 0x10))(r22);
                                            std::__1::__shared_weak_count::__release_weak();
                                    }
                            }
                            *(int8_t *)(int64_t *)&r21->_hasPremultipliedAlpha = 0x1;
                            *(int32_t *)(int64_t *)&r21->_resolutionType = 0x0;
                            if (r21 != 0x0) {
                                    [*(r19 + 0x8) setObject:r21 forKey:r20];
                                    [r21 autorelease];
                            }
                    }
            }
    }
    if ((sign_extend_64(var_29) & 0xffffffff80000000) != 0x0) {
            operator delete(var_40);
    }
    return;
}

-(void)addImageAsync:(void *)arg2 target:(void *)arg3 selector:(void *)arg4 {
    r31 = r31 - 0x110;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg4;
    r20 = arg3;
    r22 = arg2;
    r21 = self;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
            sub_10030bd80(r29 - 0x58, [r22 UTF8String]);
            r22 = &var_88;
            sub_10042ccfc(r29 - 0x58);
            r9 = var_88;
            if (sign_extend_64(var_71) < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r2 = r22;
                    }
                    else {
                            r2 = r9;
                    }
            }
            r22 = [NSString stringWithUTF8String:r2];
            if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_88);
            }
            if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_58);
            }
    }
    else {
            r0 = [CCFileUtils sharedFileUtils];
            r22 = [r0 removeSuffixFromFile:[r0 standarizePath:r22]];
    }
    dispatch_sync(*(r21 + 0x18), &var_C0);
    if (*(&var_88 + 0x28) != 0x0) {
            [r20 performSelector:r2 withObject:r3];
    }
    else {
            dispatch_async(*(r21 + 0x10), &var_100);
    }
    _Block_object_dispose(&var_88, 0x8);
    return;
}

-(void)addImageAsync:(void *)arg2 withBlock:(void *)arg3 {
    r31 = r31 - 0x110;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r28;
    stack[-56] = r27;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg3;
    r21 = arg2;
    r20 = self;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
            sub_10030bd80(r29 - 0x58, [r21 UTF8String]);
            r21 = &var_88;
            sub_10042ccfc(r29 - 0x58);
            r9 = var_88;
            if (sign_extend_64(var_71) < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r2 = r21;
                    }
                    else {
                            r2 = r9;
                    }
            }
            r21 = [NSString stringWithUTF8String:r2];
            if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_88);
            }
            if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_58);
            }
    }
    else {
            r0 = [CCFileUtils sharedFileUtils];
            r21 = [r0 removeSuffixFromFile:[r0 standarizePath:r21]];
    }
    dispatch_sync(*(r20 + 0x18), &var_C0);
    if (*(&var_88 + 0x28) != 0x0) {
            (*(r19 + 0x10))(r19);
    }
    else {
            dispatch_async(*(r20 + 0x10), &var_F8);
    }
    _Block_object_dispose(&var_88, 0x8);
    return;
}

-(void *)addImage:(void *)arg2 {
    r0 = [self addImage:arg2 assumeSD:0x0];
    return r0;
}

-(void)removeAllTextures {
    dispatch_sync(*(self + 0x18), &var_28);
    sub_100383238(sub_100383410());
    return;
}

-(void)removeUnusedTextures {
    dispatch_sync(*(self + 0x18), &var_28);
    return;
}

-(void *)addEncodedImage:(void *)arg2 resolutionType:(int)arg3 textureScale:(float)arg4 name:(void *)arg5 {
    r31 = r31 - 0xf0;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg4;
    v8 = v0;
    r22 = arg3;
    r21 = arg2;
    r20 = self;
    if (([[CCConfiguration sharedConfiguration] UseNewTextureLoadingCode] & 0x1) == 0x0) goto loc_10030d404;

loc_10030d378:
    sub_100383410();
    sub_10030bd80(&var_90, [r19 UTF8String]);
    r23 = [r21 bytes];
    r0 = [r21 length];
    r21 = r29 - 0x68;
    r0 = sub_1003838b4(r22, &var_90, r23, r0, 0x1, r29 - 0x68);
    if (r21 == 0x0) goto loc_10030d438;

loc_10030d3f4:
    if (0x0 == 0x0) goto loc_10030d444;

loc_10030d3f8:
    r8 = *0x0;
    r8 = *(r8 + 0x28);
    goto loc_10030d440;

loc_10030d440:
    (r8)();
    goto loc_10030d444;

loc_10030d444:
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    if (var_78 != 0x0) {
            r0 = [CCTexture2D alloc];
            r9 = var_78;
            r8 = var_70;
            var_98 = r8;
            if (r8 != 0x0) {
                    do {
                            asm { ldxr       x9, [x8] };
                            r9 = r9 + 0x1;
                            asm { stxr       w10, x9, [x8] };
                    } while (r10 != 0x0);
            }
            r21 = [r0 initFromMCTexture:&var_A0 textureScale:r3];
            r22 = var_98;
            if (r22 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r22 + 0x10))(r22);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
            r23 = 0x1;
    }
    else {
            r23 = 0x0;
    }
    r22 = var_70;
    if (r22 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 != 0x0) {
                    if ((r23 & 0x1) != 0x0) {
                            if (r21 != 0x0) {
                                    dispatch_sync(*(r20 + 0x18), &var_D8);
                            }
                            [r21 autorelease];
                    }
                    else {
                            r21 = 0x0;
                    }
            }
            else {
                    (*(*r22 + 0x10))(r22);
                    std::__1::__shared_weak_count::__release_weak();
                    if ((r23 & 0x1) == 0x0) {
                            r21 = 0x0;
                    }
                    else {
                            if (r21 != 0x0) {
                                    dispatch_sync(*(r20 + 0x18), &var_D8);
                            }
                            [r21 autorelease];
                    }
            }
    }
    else {
            if ((r23 & 0x1) != 0x0) {
                    if (r21 != 0x0) {
                            dispatch_sync(*(r20 + 0x18), &var_D8);
                    }
                    [r21 autorelease];
            }
            else {
                    r21 = 0x0;
            }
    }
    goto loc_10030d588;

loc_10030d588:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10030d438:
    r8 = *0x0;
    r8 = *(r8 + 0x20);
    goto loc_10030d440;

loc_10030d404:
    r21 = [[CCTexture2D alloc] initWithEncodedImageData:r21 resolutionType:r22 textureScale:r4];
    if (r21 != 0x0) {
            dispatch_sync(*(r20 + 0x18), &var_D8);
    }
    [r21 autorelease];
    goto loc_10030d588;
}

-(void *)addImageNew:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x1a0;
    var_50 = d9;
    stack[-88] = d8;
    var_40 = r28;
    stack[-72] = r27;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r2 != 0x0) {
            r1 = [r2 UTF8String];
    }
    else {
            r1 = "";
    }
    sub_10030bd80(r29 - 0x90, r1);
    r9 = var_79;
    r8 = sign_extend_64(r9);
    r10 = var_88;
    if (r8 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r9 = r9;
            }
            else {
                    r9 = r10;
            }
    }
    if (r9 == 0x0) goto loc_10030c804;

loc_10030c6a0:
    sub_10042ccfc(r29 - 0x90);
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    var_90 = var_C0;
    r21 = r29 - 0xc0;
    sub_10098f664(r29 - 0x90);
    r9 = var_C0;
    if (sign_extend_64(var_A9) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r21;
            }
            else {
                    r2 = r9;
            }
    }
    r20 = [NSString stringWithUTF8String:r2];
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    var_B8 = r29 - 0xc0;
    dispatch_sync(*(r19 + 0x18), &var_F8);
    r21 = *(var_B8 + 0x28);
    if (r21 != 0x0) goto loc_10030ca5c;

loc_10030c790:
    if ([[CCConfiguration sharedConfiguration] UseNewTextureLoadingCode] == 0x0) goto loc_10030c80c;

loc_10030c7b4:
    sub_100383410();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = sub_100384270(r21, &var_110, 0x1, r29 - 0x78);
    if (r29 == 0x78) goto loc_10030c8bc;

loc_10030c7f4:
    if (0x0 == 0x0) goto loc_10030c8c8;

loc_10030c7f8:
    r8 = *0x0;
    r8 = *(r8 + 0x28);
    goto loc_10030c8c4;

loc_10030c8c4:
    (r8)();
    goto loc_10030c8c8;

loc_10030c8c8:
    if ((sign_extend_64(var_F9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_110);
    }
    sub_10037eef8(var_140);
    v8 = v0;
    if (sub_10032c03c() != 0x0) {
            sub_10042cc74();
            asm { fdiv       s0, s8, s0 };
    }
    r9 = 0x10030cbe8;
    if (var_140 != 0x0) {
            r0 = [CCTexture2D alloc];
            r9 = var_140;
            r8 = var_138;
            var_118 = r8;
            if (r8 != 0x0) {
                    do {
                            r10 = 0x10030b958;
                            asm { ldxr       x9, [x8] };
                            r9 = r9 + 0x1;
                            asm { stxr       w10, x9, [x8] };
                    } while (r10 != 0x0);
            }
            *(var_B8 + 0x28) = [r0 initFromMCTexture:&var_120 textureScale:r3];
            r21 = var_118;
            if (r21 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r21 + 0x10))(r21);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
            *(int8_t *)(*(var_B8 + 0x28) + sign_extend_64(*(int32_t *)ivar_offset(_hasPremultipliedAlpha))) = 0x1;
            r8 = *(var_B8 + 0x28);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_resolutionType));
            *(int32_t *)(r8 + r9) = 0x0;
    }
    r21 = var_138;
    if (r21 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r21 + 0x10))(r21);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    goto loc_10030ca00;

loc_10030ca00:
    if (*(var_B8 + 0x28) != 0x0) {
            dispatch_sync(*(r19 + 0x18), &var_190);
            [*(var_B8 + 0x28) autorelease];
            r21 = *(var_B8 + 0x28);
    }
    else {
            r21 = 0x0;
    }
    goto loc_10030ca5c;

loc_10030ca5c:
    _Block_object_dispose(r29 - 0xc0, 0x8);
    r8 = var_79;
    goto loc_10030ca6c;

loc_10030ca6c:
    if ((sign_extend_64(r8) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10030c8bc:
    r8 = *0x0;
    r8 = *(r8 + 0x20);
    goto loc_10030c8c4;

loc_10030c80c:
    sub_1009d0950(&var_140);
    r0 = sub_10042cbac(r29 - 0x90, &var_140, &var_158);
    if (var_130 != 0x0 && r0 != 0x0 && var_138 != 0x0) {
            r21 = [CCTexture2D alloc];
            r22 = [NSData dataWithBytesNoCopy:var_138 length:var_130 freeWhenDone:0x0];
            r0 = sub_10042cc50(&var_158);
            *(var_B8 + 0x28) = [r21 initWithEncodedImageData:r22 resolutionType:0x0 textureScale:0x0];
    }
    if ((sign_extend_64(var_141) & 0xffffffff80000000) != 0x0) {
            operator delete(var_158);
    }
    sub_1009d0b44(&var_140);
    goto loc_10030ca00;

loc_10030c804:
    r21 = 0x0;
    goto loc_10030ca6c;
}

-(void)removeTexture:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            dispatch_sync(*(r0 + 0x18), &var_40);
            r0 = sub_100383410();
            r8 = sign_extend_64(*(int32_t *)ivar_offset(MCTexturePointer));
            r9 = *(int128_t *)(r2 + r8);
            r8 = *(int128_t *)(0x8 + r2 + r8);
            var_48 = r8;
            if (r8 != 0x0) {
                    do {
                            r10 = 0x100e645e8;
                            asm { ldxr       x9, [x8] };
                            r9 = r9 + 0x1;
                            asm { stxr       w10, x9, [x8] };
                    } while (r10 != 0x0);
            }
            sub_1003858b8(r0, &var_50);
            r19 = var_48;
            if (r19 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r19 + 0x10))(r19);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    return;
}

-(void *)addImage:(void *)arg2 assumeSD:(bool)arg3 {
    r31 = r31 - 0x190;
    var_60 = d9;
    stack[-104] = d8;
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
    r29 = &saved_fp;
    r22 = arg3;
    r23 = arg2;
    r19 = self;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] == 0x0) goto loc_10030ccfc;

loc_10030ccb0:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r19 addImageNew:r23];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10030ccfc:
    r0 = [CCFileUtils sharedFileUtils];
    r24 = r0;
    r20 = [r24 removeSuffixFromFile:[r24 fullPathToRelativePath:[r0 fullPathForFilename:r23]]];
    var_B8 = &var_C0;
    dispatch_sync(*(r19 + 0x18), &var_F8);
    r25 = *(var_B8 + 0x28);
    if (r25 != 0x0) goto loc_10030d0e8;

loc_10030cdc8:
    if ([r23 isAbsolutePath] != 0x0) {
            r3 = &var_FC;
            r4 = &var_108;
            r0 = [r24 fullPathForFilename:r2 resolutionType:r3 andResourcePack:r4];
    }
    else {
            r3 = &var_FC;
            r4 = &var_108;
            r0 = [r24 fullPathForFilename:r2 resolutionType:r3 andResourcePack:r4];
    }
    r23 = r0;
    if (r0 == 0x0) goto loc_10030d08c;

loc_10030ce1c:
    if (([[CCConfiguration sharedConfiguration] UseNewTextureLoadingCode] & 0x1) == 0x0) goto loc_10030ce98;

loc_10030ce38:
    sub_100383410();
    sub_10030bd80(&var_130, [r20 UTF8String]);
    r0 = sub_100384270(r21, &var_130, 0x1, r29 - 0x90);
    if (r29 == 0x90) goto loc_10030cf58;

loc_10030ce88:
    if (0x0 == 0x0) goto loc_10030cf64;

loc_10030ce8c:
    r8 = *0x0;
    r8 = *(r8 + 0x28);
    goto loc_10030cf60;

loc_10030cf60:
    (r8)();
    goto loc_10030cf64;

loc_10030cf64:
    if ((sign_extend_64(var_119) & 0xffffffff80000000) != 0x0) {
            operator delete(var_130);
    }
    if (var_118 != 0x0) {
            r9 = 0x10030d2b4;
            r21 = [CCTexture2D alloc];
            r0 = var_118;
            r8 = var_110;
            var_138 = r8;
            if (r8 != 0x0) {
                    r9 = 0x10030d2b4;
                    do {
                            r10 = 0x10030b958;
                            asm { ldxr       x9, [x8] };
                            r9 = r9 + 0x1;
                            asm { stxr       w10, x9, [x8] };
                    } while (r10 != 0x0);
            }
            sub_10037eef8(r0);
            *(var_B8 + 0x28) = [r21 initFromMCTexture:&var_140 textureScale:r3];
            r21 = var_138;
            if (r21 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r21 + 0x10))(r21);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
            r22 = 0x0;
            *(int8_t *)(*(var_B8 + 0x28) + sign_extend_64(*(int32_t *)ivar_offset(_hasPremultipliedAlpha))) = 0x1;
            r9 = *(var_B8 + 0x28);
            *(int32_t *)(int64_t *)&r9->_resolutionType = var_FC;
    }
    else {
            r9 = 0x10030d2b4;
            r22 = 0x1;
    }
    r21 = var_110;
    if (r21 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r21 + 0x10))(r21);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    if (r22 != 0x0) {
            r25 = 0x0;
    }
    else {
            r8 = var_B8;
            if (*(r8 + 0x28) != 0x0) {
                    dispatch_sync(*(r19 + 0x18), &var_178);
                    r8 = var_B8;
            }
            [*(r8 + 0x28) autorelease];
            r25 = *(var_B8 + 0x28);
    }
    goto loc_10030d0e8;

loc_10030d0e8:
    var_70 = **___stack_chk_guard;
    _Block_object_dispose(&var_C0, 0x8);
    if (**___stack_chk_guard == var_70) {
            r0 = r25;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10030cf58:
    r8 = *0x0;
    r8 = *(r8 + 0x20);
    goto loc_10030cf60;

loc_10030ce98:
    if (0x0 == 0x0) goto loc_10030cee8;

loc_10030cea0:
    if (var_FC == 0x0) goto loc_10030d134;

loc_10030ceac:
    r0 = [CCConfiguration sharedConfiguration];
    r0 = [r0 runningDevice];
    if (r0 < 0x5) {
            if (var_FC == 0x1) {
                    asm { fcsel      s8, s0, s8, eq };
            }
    }
    else {
            if (r0 == 0x5) {
                    r8 = var_FC;
                    if (r8 == 0x1) {
                            asm { fcsel      s0, s0, s8, eq };
                    }
                    if (r8 < 0x6) {
                            asm { fcsel      s8, s1, s0, lo };
                    }
            }
    }
    goto loc_10030cee8;

loc_10030cee8:
    r21 = [[NSData alloc] initWithContentsOfFile:r23];
    *(var_B8 + 0x28) = [[CCTexture2D alloc] initWithEncodedImageData:r21 resolutionType:var_FC textureScale:r4];
    [r21 release];
    r8 = var_B8;
    if (*(r8 + 0x28) != 0x0) {
            dispatch_sync(*(r19 + 0x18), &var_178);
            r8 = var_B8;
    }
    [*(r8 + 0x28) autorelease];
    r25 = *(var_B8 + 0x28);
    goto loc_10030d0e8;

loc_10030d134:
    if (([0x0 isEqualToString:r2] & 0x1) == 0x0) goto loc_10030d194;

loc_10030d14c:
    r8 = var_FC;
    if (r8 != 0x0 || r22 == 0x0) goto loc_10030d1c0;

loc_10030d15c:
    var_FC = 0x1;
    goto loc_10030ceac;

loc_10030d1c0:
    if (r8 != 0x0) {
            r0 = [CCConfiguration sharedConfiguration];
            r0 = [r0 runningDevice];
            if (r0 < 0x5) {
                    if (var_FC == 0x1) {
                            asm { fcsel      s8, s0, s8, eq };
                    }
            }
            else {
                    if (r0 == 0x5) {
                            r8 = var_FC;
                            if (r8 == 0x1) {
                                    asm { fcsel      s0, s0, s8, eq };
                            }
                            if (r8 < 0x6) {
                                    asm { fcsel      s8, s1, s0, lo };
                            }
                    }
            }
    }
    goto loc_10030cee8;

loc_10030d194:
    [[CCResourcePackManager sharedInstance] scaleForAssetOfPack:0x0];
    v8 = v0;
    r8 = var_FC;
    goto loc_10030d1c0;

loc_10030d08c:
    r25 = 0x0;
    goto loc_10030d0e8;
}

-(void)removeTextureForKey:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0xc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r2 != 0x0) {
            r21 = r2;
            r19 = r0;
            if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
                    sub_10030bd80(r29 - 0x50, [r21 UTF8String]);
                    r21 = r29 - 0x38;
                    sub_10042ccfc(r29 - 0x50);
                    r9 = var_38;
                    if (sign_extend_64(var_21) < 0x0) {
                            if (!CPU_FLAGS & L) {
                                    r2 = r21;
                            }
                            else {
                                    r2 = r9;
                            }
                    }
                    r21 = [NSString stringWithUTF8String:r2];
                    if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_38);
                    }
                    r20 = @selector(UTF8String);
                    if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
                            r20 = @selector(UTF8String);
                            operator delete(var_50);
                    }
            }
            else {
                    r21 = [[CCFileUtils sharedFileUtils] removeSuffixFromFile:r21];
                    r20 = @selector(UTF8String);
            }
            dispatch_sync(*(r19 + 0x18), &var_80);
            r19 = sub_100383410();
            sub_10030bd80(&var_98, objc_msgSend(r21, r20));
            r0 = sub_100385854(r19, &var_98);
            if ((sign_extend_64(var_81) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_98);
            }
            r9 = 0x100e645e8;
            r8 = var_38;
            if (r8 != 0x0) {
                    r9 = var_30;
                    var_A0 = r9;
                    if (r9 != 0x0) {
                            do {
                                    asm { ldxr       x9, [x8] };
                                    r9 = r9 + 0x1;
                                    asm { stxr       w10, x9, [x8] };
                            } while (r10 != 0x0);
                    }
                    sub_1003858b8(r19, &var_A8);
                    r19 = var_A0;
                    if (r19 != 0x0) {
                            do {
                                    asm { ldaxr      x9, [x8] };
                                    asm { stlxr      w11, x10, [x8] };
                            } while (r11 != 0x0);
                            if (r9 == 0x0) {
                                    (*(*r19 + 0x10))(r19);
                                    std::__1::__shared_weak_count::__release_weak();
                            }
                    }
            }
            r19 = var_30;
            if (r19 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r19 + 0x10))(r19);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    return;
}

-(void)dumpCachedTextureInfo {
    dispatch_sync(*(self + 0x18), &var_78);
    _Block_object_dispose(&var_40, 0x8);
    _Block_object_dispose(&saved_fp - 0x20, 0x8);
    return;
}

-(void *)textureForKey:(void *)arg2 {
    r31 = r31 - 0xd0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    var_48 = r29 - 0x50;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
            sub_10030bd80(&var_80, [r20 UTF8String]);
            r20 = &var_68;
            r0 = sub_10042ccfc(&var_80);
            r9 = var_68;
            if (sign_extend_64(var_51) < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r2 = r20;
                    }
                    else {
                            r2 = r9;
                    }
            }
            r20 = [NSString stringWithUTF8String:r2];
            if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_68);
            }
            if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_80);
            }
    }
    else {
            r20 = [[CCFileUtils sharedFileUtils] removeSuffixFromFile:r20];
    }
    dispatch_sync(*(r19 + 0x18), &var_B8);
    _Block_object_dispose(r29 - 0x50, 0x8);
    r0 = r19;
    return r0;
}

@end