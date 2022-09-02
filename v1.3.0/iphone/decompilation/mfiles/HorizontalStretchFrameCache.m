@implementation HorizontalStretchFrameCache

+(void *)sharedInstance {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = self;
    r0 = *0x1011d42c8;
    if (r0 == 0x0) {
            r0 = [[&var_20 super] allocWithZone:0x0];
            r0 = [r0 init];
            *0x1011d42c8 = r0;
    }
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            *(r20 + 0x8) = [[NSMutableDictionary alloc] init];
    }
    r0 = r20;
    return r0;
}

+(void)clearCache {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011d42c8 != 0x0) {
            [*0x1011d42c8 release];
            *0x1011d42c8 = 0x0;
    }
    return;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

+(void *)getFrameFromHSFDescription:(void *)arg2 {
    r0 = [arg2 objectForKey:r2];
    return r0;
}

+(void *)getTextureFromHSFDescription:(void *)arg2 {
    r0 = [arg2 objectForKey:r2];
    return r0;
}

-(void *)descriptionWithName:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0xe0;
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
    if (r2 == 0x0) goto loc_100310190;

loc_100310168:
    r19 = r2;
    r20 = r0;
    if (([r19 isEqualToString:r2] & 0x1) == 0x0) goto loc_1003101bc;

loc_100310190:
    r22 = 0x0;
    goto loc_100310194;

loc_100310194:
    r0 = r22;
    return r0;

loc_1003101bc:
    r22 = [*(r20 + 0x8) objectForKey:r19];
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] == 0x0) goto loc_1003102a0;

loc_1003101fc:
    if (r22 != 0x0) goto loc_100310194;

loc_100310200:
    sub_100310724(&var_80, [r19 UTF8String]);
    r0 = sub_10042ccfc(&var_80);
    if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
            operator delete(var_80);
    }
    sub_10098f1a4(&var_80);
    r9 = var_89;
    r8 = sign_extend_64(r9);
    r10 = var_98;
    if (r8 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r9 = r9;
            }
            else {
                    r9 = r10;
            }
    }
    if (r9 == 0x5) {
            if (std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare() != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r22 = 0x1;
                    }
            }
            r4 = 0x5;
            r3 = "plist";
            r8 = var_89;
    }
    else {
            r22 = 0x1;
    }
    if ((sign_extend_64(r8) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A0);
    }
    if (r22 != 0x0) {
            sub_100310724(&var_B8, "plist");
            r0 = sub_10098f2e8(&var_80, &var_B8);
            if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_80);
            }
            var_89 = 0x0;
            if ((sign_extend_64(var_A1) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_B8);
            }
    }
    r0 = sub_100316658(&var_80, 0x0);
    r22 = r0;
    r0 = [r0 objectForKey:@"texture"];
    if (r0 != 0x0) {
            r1 = [r0 UTF8String];
    }
    else {
            r1 = "";
    }
    sub_100310724(&var_A0, r1);
    r0 = sub_10042ccfc(&var_A0);
    if ((sign_extend_64(var_89) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A0);
    }
    r2 = @"texture";
    r24 = [CCTextureCache sharedTextureCache];
    sub_100310724(&var_D0, "png");
    r23 = &var_B8;
    r0 = sub_10098f2e8(&var_A0, &var_D0);
    r9 = var_B8;
    if (sign_extend_64(var_A1) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r23;
            }
            else {
                    r2 = r9;
            }
    }
    r24 = [r24 addImage:[NSString stringWithUTF8String:r2]];
    if ((sign_extend_64(var_A1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_B8);
    }
    if ((sign_extend_64(var_B9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_D0);
    }
    r25 = [CCSpriteFrameCache sharedSpriteFrameCache];
    sub_100310724(&var_D0, "plist");
    r27 = &var_B8;
    r0 = sub_10098f2e8(&var_A0, &var_D0);
    r9 = var_B8;
    if (sign_extend_64(var_A1) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r27;
            }
            else {
                    r2 = r9;
            }
    }
    [r25 addSpriteFramesWithFile:[NSString stringWithUTF8String:r2] texture:r24];
    if ((sign_extend_64(var_A1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_B8);
    }
    if ((sign_extend_64(var_B9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_D0);
    }
    if ((sign_extend_64(var_89) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A0);
    }
    if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
            operator delete(var_80);
    }
    goto loc_100310600;

loc_100310600:
    r23 = [r22 objectForKey:@"imageFrameName"];
    [[r22 objectForKey:@"leftX"] floatValue];
    [[r22 objectForKey:@"rightX"] floatValue];
    [HorizontalStretchFrame splitFrame:r23 leftX:r3 rightX:r4];
    [*(r20 + 0x8) setObject:r2 forKey:r3];
    goto loc_100310194;

loc_1003102a0:
    if (r22 != 0x0) goto loc_100310194;

loc_1003102a4:
    r0 = [NSDictionary dictionaryWithContentsOfFile:[[CCFileUtils sharedFileUtils] fullPathForFilename:[[r19 stringByDeletingPathExtension] stringByAppendingPathExtension:@"plist"]]];
    r22 = r0;
    if (r0 == 0x0) goto loc_100310194;

loc_100310314:
    r23 = @selector(isEqualToString:);
    r0 = [r22 objectForKey:@"texture"];
    r0 = [r0 stringByAppendingString:@".png"];
    objc_msgSend(r0, r23);
    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:[[r22 objectForKey:@"texture"] stringByAppendingString:@".plist"] texture:[[CCTextureCache sharedTextureCache] addImage:r26]];
    goto loc_100310600;
}

@end