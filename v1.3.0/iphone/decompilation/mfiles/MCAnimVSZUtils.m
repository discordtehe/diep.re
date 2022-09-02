@implementation MCAnimVSZUtils

+(void *)getFinalFilename:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = *0x1011d2610;
    if (r0 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            *0x1011d2610 = r0;
    }
    r0 = [r0 objectForKey:r2];
    if (r0 != 0x0) {
            r20 = r0;
    }
    else {
            r0 = [MCAnimVSZUtils _getFinalFilename:r19];
            r20 = r0;
            if (r0 != 0x0) {
                    [*0x1011d2610 setObject:r2 forKey:r3];
            }
    }
    r0 = r20;
    return r0;
}

+(void)addVSZTextureSearchFolder:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if (([sub_10029030c() containsObject:r2] & 0x1) == 0x0) {
            [sub_10029030c() addObject:r2];
    }
    return;
}

+(void)addVSZTextureSearchSpritesheet:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if (([sub_100290394() containsObject:r2] & 0x1) == 0x0) {
            [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:r19];
            [sub_100290394() addObject:r2];
    }
    return;
}

+(void *)getSpriteFrameWithName:(void *)arg2 {
    r0 = [CCSpriteFrameCache sharedSpriteFrameCache];
    r0 = [r0 spriteFrameByName:arg2];
    return r0;
}

+(void *)_getFinalFilename:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r0 = [CCFileUtils sharedFileUtils];
            r0 = [r0 fullPathFromRelativePath:r2];
    }
    else {
            r0 = sub_100290830();
    }
    return r0;
}

+(void *)getVSZTexture:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x150;
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
    if (r2 == 0x0) goto loc_100290768;

loc_100290514:
    r19 = r2;
    r0 = sub_10029076c();
    r0 = [r0 objectForKey:r19];
    if (r0 == 0x0) goto loc_100290574;

loc_100290538:
    r0 = [CCTextureCache sharedTextureCache];
    r0 = [r0 textureForKey:r2];
    r21 = r0;
    if (r0 != 0x0) goto loc_100290728;

loc_100290560:
    [sub_10029076c() removeObjectForKey:r2];
    goto loc_100290574;

loc_100290574:
    var_128 = r19;
    var_110 = q0;
    r0 = sub_10029030c();
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r0;
    var_140 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1002906cc;

loc_1002905b0:
    r22 = r0;
    r19 = *var_110;
    goto loc_1002905cc;

loc_1002905cc:
    r26 = 0x0;
    goto loc_1002905ec;

loc_1002905ec:
    if (*var_110 != r19) {
            objc_enumerationMutation(var_130);
    }
    r20 = *(var_118 + r26 * 0x8);
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
            r0 = r20;
            r1 = @selector(stringByAppendingPathComponent:);
    }
    else {
            [r20 stringByAppendingPathComponent:r2];
            r0 = @class(MCAnimVSZUtils);
            r1 = @selector(getFinalFilename:);
    }
    r0 = objc_msgSend(r0, r1);
    r20 = r0;
    if (r0 == 0x0) goto loc_100290688;

loc_100290668:
    r0 = [CCTextureCache sharedTextureCache];
    r0 = [r0 addImage:r2];
    if (r0 != 0x0) goto loc_10029070c;

loc_100290688:
    r26 = r26 + 0x1;
    if (r26 < r22) goto loc_1002905ec;

loc_100290694:
    r0 = objc_msgSend(var_130, var_140);
    r22 = r0;
    if (r0 != 0x0) goto loc_1002905cc;

loc_1002906cc:
    r0 = [CCTextureCache sharedTextureCache];
    r19 = var_128;
    r0 = [r0 addImage:r2];
    r21 = r0;
    if (r0 == 0x0) goto loc_100290728;

loc_1002906f4:
    r0 = sub_10029076c();
    goto loc_100290724;

loc_100290724:
    [r0 setObject:r2 forKey:r3];
    goto loc_100290728;

loc_100290728:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10029070c:
    r21 = r0;
    r0 = sub_10029076c();
    goto loc_100290724;

loc_100290768:
    r0 = sub_100290858();
    return r0;
}

@end