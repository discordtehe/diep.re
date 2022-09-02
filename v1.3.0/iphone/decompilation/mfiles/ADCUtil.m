@implementation ADCUtil

+(void *)errorWithMessage:(void *)arg2 andCode:(unsigned long long)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r23 = [arg2 retain];
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    r19 = [[NSError errorWithDomain:@"com.adcolony.sdk" code:arg3 userInfo:r21] retain];
    [r23 release];
    [r21 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)errorWithMessage:(void *)arg2 {
    r0 = [self errorWithMessage:arg2 andCode:0x1];
    return r0;
}

+(void *)temporaryFileURLWithPrefix:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [NSUUID UUID];
    r0 = [r0 retain];
    r19 = [[r0 UUIDString] retain];
    [r0 release];
    r20 = [NSTemporaryDirectory() retain];
    r22 = [[NSString stringWithFormat:@"%@-%@"] retain];
    [r21 release];
    r21 = [[r20 stringByAppendingPathComponent:r22] retain];
    [r22 release];
    [r20 release];
    r20 = [[NSURL fileURLWithPath:r21] retain];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)JSONStringFromJSONObject:(void *)arg2 {
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
    r19 = [arg2 retain];
    if (([NSJSONSerialization isValidJSONObject:r19] & 0x1) != 0x0) {
            r0 = [NSJSONSerialization dataWithJSONObject:r19 options:0x0 error:&var_38];
            r29 = r29;
            r20 = [r0 retain];
            r21 = [var_38 retain];
            if (r20 != 0x0) {
                    asm { ccmp       x21, #0x0, #0x0, ne };
            }
            if (!CPU_FLAGS & E) {
                    r23 = [[r21 localizedDescription] retain];
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCUtil JSONStringFromJSONObject:]" line:0x31 withFormat:@"Invalid input: %@ resulted in serialization error: %@"];
                    [r23 release];
                    [r21 release];
                    r21 = 0x0;
            }
            else {
                    [r21 release];
                    r21 = [[NSString alloc] initWithData:r20 encoding:0x4];
            }
            [r20 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCUtil JSONStringFromJSONObject:]" line:0x28 withFormat:@"Input object isn't a valid JSON object: %@"];
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)JSONObjectFromJSONString:(void *)arg2 {
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
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r22 = [[r19 dataUsingEncoding:0x4] retain];
            r0 = [NSJSONSerialization JSONObjectWithData:r22 options:0x0 error:&var_38];
            r29 = r29;
            r20 = [r0 retain];
            r21 = [var_38 retain];
            [r22 release];
            if (r20 != 0x0) {
                    asm { ccmp       x21, #0x0, #0x0, ne };
            }
            if (!CPU_FLAGS & E) {
                    r23 = [[r21 localizedDescription] retain];
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"+[ADCUtil JSONObjectFromJSONString:]" line:0x48 withFormat:@"Invalid input string: \"%@\" resulted in JSON parse error: %@"];
                    [r23 release];
                    [r21 release];
                    r21 = 0x0;
            }
            else {
                    [r21 release];
                    r20 = [r20 retain];
                    r21 = r20;
            }
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)JSONObjectFromData:(void *)arg2 {
    r31 = r31 - 0x50;
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
    if (r19 != 0x0) {
            r0 = [NSJSONSerialization JSONObjectWithData:r19 options:0x0 error:&var_38];
            r29 = r29;
            r20 = [r0 retain];
            r21 = [var_38 retain];
            if (r20 != 0x0) {
                    asm { ccmp       x21, #0x0, #0x0, ne };
            }
            if (!CPU_FLAGS & E) {
                    r23 = [[r21 localizedDescription] retain];
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"+[ADCUtil JSONObjectFromData:]" line:0x5e withFormat:@"Data resulted in JSON parse error: %@"];
                    [r23 release];
                    r22 = 0x0;
            }
            else {
                    [NSDictionary class];
                    if ([r20 isKindOfClass:r2] != 0x0) {
                            r22 = [r20 retain];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"+[ADCUtil JSONObjectFromData:]" line:0x63 withFormat:@"Data must represent an NSDictionary, not an array or anything else"];
                            r22 = 0x0;
                    }
            }
            [r20 release];
            [r21 release];
    }
    else {
            r22 = 0x0;
    }
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)JSONObjectFromFilepath:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    if (arg2 != 0x0) {
            r0 = [NSData dataWithContentsOfFile:r2];
            r29 = r29;
            r19 = [r0 retain];
            if (r19 != 0x0) {
                    r20 = [[r20 JSONObjectFromData:r19] retain];
            }
            else {
                    r20 = 0x0;
            }
            [r19 release];
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

+(void *)dataFromJSONObject:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [NSJSONSerialization dataWithJSONObject:r19 options:0x0 error:&var_38];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [var_38 retain];
    if (r21 != 0x0) {
            r23 = [[r21 localizedDescription] retain];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCUtil dataFromJSONObject:]" line:0x7f withFormat:@"Error while serializing to JSON data: %@"];
            [r23 release];
    }
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)JSONArrayFromData:(void *)arg2 {
    r31 = r31 - 0x50;
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
    if (r19 != 0x0) {
            r0 = [NSJSONSerialization JSONObjectWithData:r19 options:0x0 error:&var_38];
            r29 = r29;
            r20 = [r0 retain];
            r21 = [var_38 retain];
            if (r20 != 0x0) {
                    asm { ccmp       x21, #0x0, #0x0, ne };
            }
            if (!CPU_FLAGS & E) {
                    r23 = [[r21 localizedDescription] retain];
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"+[ADCUtil JSONArrayFromData:]" line:0x92 withFormat:@"Data resulted in JSON parse error: %@"];
                    [r23 release];
                    r22 = 0x0;
            }
            else {
                    [NSArray class];
                    if ([r20 isKindOfClass:r2] != 0x0) {
                            r22 = [r20 retain];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"+[ADCUtil JSONArrayFromData:]" line:0x97 withFormat:@"Data must represent an NSArray, not an array or anything else"];
                            r22 = 0x0;
                    }
            }
            [r20 release];
            [r21 release];
    }
    else {
            r22 = 0x0;
    }
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)AES256DecryptData:(void *)arg2 withKey:(void *)arg3 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = [arg2 retain];
    [arg3 getCString:&var_60 maxLength:0x21 encoding:0x4];
    r22 = [arg2 length];
    r19 = malloc(r22 + 0x10);
    r20 = [objc_retainAutorelease(arg2) bytes];
    [r21 release];
    r0 = CCCrypt(0x1, 0x0, 0x1, &var_60, 0x20, 0x0, r20, r22, r19, r22 + 0x10, &var_68);
    if (r0 != 0x0) {
            free(r19);
            r0 = 0x0;
    }
    else {
            r0 = [NSData dataWithBytesNoCopy:r19 length:var_68];
            r0 = [r0 retain];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r0 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)AES256EncryptData:(void *)arg2 withKey:(void *)arg3 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = [arg2 retain];
    [arg3 getCString:&var_60 maxLength:0x21 encoding:0x4];
    r22 = [arg2 length];
    r19 = malloc(r22 + 0x10);
    r20 = [objc_retainAutorelease(arg2) bytes];
    [r21 release];
    r0 = CCCrypt(0x0, 0x0, 0x1, &var_60, 0x20, 0x0, r20, r22, r19, r22 + 0x10, &var_68);
    if (r0 != 0x0) {
            free(r19);
            r0 = 0x0;
    }
    else {
            r0 = [NSData dataWithBytesNoCopy:r19 length:var_68];
            r0 = [r0 retain];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r0 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)colorWithRGBHex:(unsigned int)arg2 {
    r2 = arg2;
    asm { ubfx       w8, w2, #0x10, #0x8 };
    asm { ubfx       w9, w2, #0x8, #0x8 };
    r0 = @class(UIColor);
    asm { scvtf      s0, w8 };
    asm { fdiv       s0, s0, s2 };
    asm { fcvt       d0, s0 };
    asm { scvtf      s1, w9 };
    asm { fdiv       s1, s1, s2 };
    asm { scvtf      s3, w10 };
    asm { fcvt       d1, s1 };
    asm { fdiv       s2, s3, s2 };
    asm { fcvt       d2, s2 };
    r0 = [r0 colorWithRed:r2 green:r3 blue:r4 alpha:r5];
    return r0;
}

+(void *)colorWithHexString:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [NSScanner scannerWithString:r19];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 scanHexInt:&var_24] != 0x0) {
                    r8 = [r19 length];
                    r2 = var_24;
                    if (r8 <= 0x7) {
                            r0 = [ADCUtil colorWithRGBHex:r2];
                    }
                    else {
                            r0 = [ADCUtil colorWithRGBAHex:r2];
                    }
                    r21 = [r0 retain];
            }
            else {
                    r21 = 0x0;
            }
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)colorWithRGBAHex:(unsigned int)arg2 {
    r2 = arg2;
    asm { ubfx       w9, w2, #0x10, #0x8 };
    asm { ubfx       w10, w2, #0x8, #0x8 };
    r0 = @class(UIColor);
    asm { scvtf      s0, w8 };
    asm { fdiv       s0, s0, s3 };
    asm { fcvt       d0, s0 };
    asm { scvtf      s1, w9 };
    asm { fdiv       s1, s1, s3 };
    asm { fcvt       d1, s1 };
    asm { scvtf      s2, w10 };
    asm { fdiv       s2, s2, s3 };
    asm { fcvt       d2, s2 };
    asm { scvtf      s4, w11 };
    asm { fdiv       s3, s4, s3 };
    asm { fcvt       d3, s3 };
    r0 = [r0 colorWithRed:r2 green:r3 blue:r4 alpha:r5];
    return r0;
}

+(void *)getUUID {
    r19 = **_kCFAllocatorDefault;
    r20 = CFUUIDCreate(r19);
    CFUUIDCreateString(r19, r20);
    CFRelease(r20);
    r0 = [r19 autorelease];
    return r0;
}

+(void *)sha1:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r0 = objc_retainAutorelease(arg2);
    r21 = [r0 cStringUsingEncoding:0x4];
    r19 = [r0 length];
    [r20 release];
    r0 = [NSData dataWithBytes:r21 length:r19];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    r20 = [r0 bytes];
    r0 = [r19 length];
    r23 = &stack[-92];
    CC_SHA1(r20, r0, &stack[-92]);
    r20 = [[NSMutableString stringWithCapacity:0x28] retain];
    r24 = 0x0;
    do {
            [r20 appendFormat:r2];
            r24 = r24 + 0x1;
    } while (r24 != 0x14);
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)appBundleInfo {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r19 = [[r0 pathForResource:@"Info" ofType:@"plist"] retain];
    [r0 release];
    if (r19 != 0x0) {
            r20 = [[NSDictionary alloc] initWithContentsOfFile:r19];
            if (r20 != 0x0) {
                    [NSDictionary class];
                    if ([r20 isKindOfClass:r2] != 0x0) {
                            r20 = [r20 retain];
                            r21 = r20;
                    }
                    else {
                            r21 = 0x0;
                    }
            }
            else {
                    r21 = 0x0;
            }
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(unsigned long long)appSupportedOrientations {
    r31 = r31 - 0x90;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_28 = r29 - 0x30;
    if ([NSThread isMainThread] != 0x0) {
            sub_100253014(&var_58);
    }
    else {
            dispatch_sync(*__dispatch_main_q, &var_80);
    }
    _Block_object_dispose(r29 - 0x30, 0x8);
    r0 = r19;
    return r0;
}

+(unsigned long long)getOrientationMaskFromAdColonyOrientation:(long long)arg2 {
    r2 = arg2;
    r0 = self;
    r8 = 0x6;
    if (r2 == 0x1) {
            if (!CPU_FLAGS & E) {
                    r8 = 0x6;
            }
            else {
                    r8 = 0x18;
            }
    }
    if (r2 == 0x2) {
            if (!CPU_FLAGS & E) {
                    r0 = r8;
            }
            else {
                    r0 = 0x1e;
            }
    }
    return r0;
}

+(long long)getAdColonyOrientationFromOrientationMask:(unsigned long long)arg2 {
    r8 = arg2 - 0x2;
    asm { ror        x8, x8, #0x1 };
    if (r8 <= 0x7) {
            r0 = *(0x100ba2b00 + r8 * 0x8);
    }
    else {
            r0 = 0x2;
    }
    return r0;
}

+(long long)getAdColonyOrientation:(long long)arg2 {
    r8 = arg2 - 0x1;
    if (r8 <= 0x3) {
            r0 = *(0x100ba2b40 + r8 * 0x8);
    }
    else {
            r0 = 0x2;
    }
    return r0;
}

+(bool)validateInterfaceOrientationOfFullscreenView:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [UIApplication sharedApplication];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 statusBarOrientation];
    [r0 release];
    if (r20 > 0x4) goto loc_1002534a0;

loc_100253428:
    [r19 bounds];
    objc_msgSend(r19, r20);
    if (d8 >= d3) goto loc_100253540;

loc_100253454:
    [r19 bounds];
    r20 = [NSStringFromCGRect() retain];
    goto loc_100253520;

loc_100253520:
    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
    [r20 release];
    r20 = 0x0;
    goto loc_100253544;

loc_100253544:
    [r19 release];
    r0 = r20;
    return r0;

loc_100253540:
    r20 = 0x1;
    goto loc_100253544;

loc_1002534a0:
    if (r20 > 0x2) goto loc_100253540;

loc_1002534ac:
    [r19 bounds];
    objc_msgSend(r19, r20);
    if (d8 <= d3) goto loc_100253540;

loc_1002534d8:
    [r19 bounds];
    r20 = [NSStringFromCGRect() retain];
    goto loc_100253520;
}

+(struct UIEdgeInsets)getSafeAreaInsets {
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 compare:@"11.0" options:0x40];
    [r0 release];
    r0 = [r19 release];
    if (r21 != -0x1) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 windows];
            r0 = [r0 retain];
            r21 = [[r0 firstObject] retain];
            [r0 release];
            [r19 release];
            [r21 safeAreaInsets];
            v8 = v0;
            v9 = v1;
            v10 = v2;
            v11 = v3;
            r0 = [r21 release];
    }
    return r0;
}

@end