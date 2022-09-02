@implementation NSFileManager

-(bool)fb_getSizeOfDirectory:(unsigned long long *)arg2 atURL:(void *)arg3 error:(void * *)arg4 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1c0;
    var_1B0 = arg4;
    r21 = arg2;
    r0 = [arg3 retain];
    r19 = 0x0;
    if (r21 == 0x0) goto loc_100aa32d0;

loc_100aa2fb0:
    r19 = 0x0;
    if (r0 == 0x0) goto loc_100aa32d0;

loc_100aa2fb4:
    var_1E8 = r0;
    r8 = *_NSURLIsRegularFileKey;
    r9 = *_NSURLFileAllocatedSizeKey;
    r25 = *r8;
    var_1F0 = *r9;
    var_1D8 = **_NSURLTotalFileAllocatedSizeKey;
    r22 = [[NSArray arrayWithObjects:r29 - 0x78 count:0x3] retain];
    var_110 = &var_118;
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 enumeratorAtURL:var_1E8 includingPropertiesForKeys:r22 options:0x0 errorHandler:&var_148];
    var_1F8 = r22;
    r29 = r29;
    r20 = [r0 retain];
    [r19 release];
    var_180 = q0;
    r0 = [r20 retain];
    var_1D0 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r24 = r0;
    if (r0 == 0x0) goto loc_100aa3268;

loc_100aa30f0:
    var_208 = r21;
    var_200 = @selector(countByEnumeratingWithState:objects:count:);
    r19 = 0x0;
    r27 = *var_180;
    goto loc_100aa310c;

loc_100aa310c:
    r23 = 0x0;
    var_1C8 = r19;
    goto loc_100aa3128;

loc_100aa3128:
    if (*var_180 != r27) {
            objc_enumerationMutation(var_1D0);
    }
    if (*(int8_t *)(var_110 + 0x18) != 0x0) goto loc_100aa32a0;

loc_100aa314c:
    r19 = *(var_188 + r23 * 0x8);
    r26 = r25;
    r25 = [r19 getResourceValue:r2 forKey:r3 error:r4];
    r21 = [0x0 retain];
    if ((r25 & 0x1) == 0x0) goto loc_100aa3298;

loc_100aa3184:
    if ([r21 boolValue] == 0x0) goto loc_100aa3224;

loc_100aa3194:
    r20 = r24;
    r24 = [r19 getResourceValue:r2 forKey:r3 error:r4];
    r25 = [0x0 retain];
    if ((r24 & 0x1) == 0x0) goto loc_100aa3290;

loc_100aa31c4:
    if (r25 != 0x0) goto loc_100aa31f4;

loc_100aa31c8:
    r19 = [r19 getResourceValue:r2 forKey:r3 error:r4];
    r25 = [0x0 retain];
    if (r19 == 0x0) goto loc_100aa3290;

loc_100aa31f4:
    var_1C8 = [r25 unsignedLongLongValue] + var_1C8;
    [r25 release];
    r25 = r26;
    r24 = r20;
    goto loc_100aa3228;

loc_100aa3228:
    [r21 release];
    r23 = r23 + 0x1;
    if (r23 < r24) goto loc_100aa3128;

loc_100aa323c:
    r0 = objc_msgSend(var_1D0, var_200);
    r24 = r0;
    r21 = var_208;
    r19 = var_1C8;
    if (r0 != 0x0) goto loc_100aa310c;

loc_100aa326c:
    r20 = var_1D0;
    [r20 release];
    if (*(int8_t *)(var_110 + 0x18) == 0x0) {
            *r21 = r19;
            r19 = 0x1;
    }
    else {
            r19 = 0x0;
    }
    goto loc_100aa32b0;

loc_100aa32b0:
    [r20 release];
    _Block_object_dispose(&var_118, 0x8);
    [var_1F8 release];
    r0 = var_1E8;
    goto loc_100aa32d0;

loc_100aa32d0:
    var_60 = **___stack_chk_guard;
    [r0 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100aa3290:
    [r25 release];
    goto loc_100aa3298;

loc_100aa3298:
    [r21 release];
    goto loc_100aa32a0;

loc_100aa32a0:
    r20 = var_1D0;
    [r20 release];
    r19 = 0x0;
    goto loc_100aa32b0;

loc_100aa3224:
    r25 = r26;
    goto loc_100aa3228;

loc_100aa3268:
    r19 = 0x0;
    goto loc_100aa326c;
}

@end