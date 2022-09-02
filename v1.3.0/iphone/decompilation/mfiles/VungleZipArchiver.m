@implementation VungleZipArchiver

+(void *)errorWithCode:(long long)arg2 description:(void *)arg3 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r22 = [arg3 retain];
    r20 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r19 = [[NSError errorWithDomain:@"VungleZipArchiverErrorDomain" code:arg2 userInfo:r20] retain];
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(bool)unzipFileAtPath:(void *)arg2 toDestination:(void *)arg3 overwrite:(bool)arg4 error:(void * *)arg5 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1110;
    r21 = arg5;
    r20 = [arg2 retain];
    r28 = [arg3 retain];
    r0 = objc_retainAutorelease(r20);
    r19 = r0;
    r0 = [r0 UTF8String];
    r0 = sub_10065ee80(r0);
    if (r0 == 0x0) goto loc_10064b4a8;

loc_10064b45c:
    r22 = r0;
    sub_10065ef94(r0, &var_79);
    if (sub_10065fee4() == 0x0) goto loc_10064b4ec;

loc_10064b47c:
    if (r21 == 0x0) goto loc_10064b4e4;

loc_10064b480:
    r0 = [VungleZipArchiver errorWithCode:0xfffffffffffffffe description:@"failed to open first file in zip file"];
    goto loc_10064b4d0;

loc_10064b4d0:
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    r23 = 0x0;
    *r21 = r0;
    goto loc_10064b888;

loc_10064b888:
    var_60 = **___stack_chk_guard;
    [r28 release];
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r23 & 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10064b4e4:
    r23 = 0x0;
    goto loc_10064b888;

loc_10064b4ec:
    var_141 = @selector(UTF8String);
    var_151 = r19;
    bzero(&stack[-113], 0x1000);
    r23 = 0x1;
    goto loc_10064b570;

loc_10064b570:
    r26 = objc_autoreleasePoolPush();
    if (sub_10065fafc(r22) != 0x0) goto loc_10064b870;

loc_10064b584:
    var_C1 = q0;
    r0 = sub_10065efbc(r22, &var_101, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0);
    if (r0 == 0x0) goto loc_10064b5dc;

loc_10064b5c4:
    r25 = r0;
    sub_10065ef00();
    goto loc_10064b5d0;

loc_10064b5d0:
    r23 = 0x0;
    r19 = 0x2;
    goto loc_10064b85c;

loc_10064b85c:
    objc_autoreleasePoolPop(r26);
    if ((r19 | r25) == 0x0) goto loc_10064b570;

loc_10064b87c:
    sub_10065ee88();
    r19 = var_151;
    goto loc_10064b888;

loc_10064b5dc:
    r24 = var_C1 + 0x1;
    r0 = malloc(r24);
    if (r0 == 0x0) goto loc_10064b7e4;

loc_10064b5f0:
    sub_10065efbc(r22, &var_101, r0, r24, 0x0, 0x0, 0x0, 0x0);
    *(int8_t *)(r19 + var_C1) = 0x0;
    r27 = [[NSString stringWithUTF8String:r19] retain];
    free(r19);
    r20 = r28;
    r0 = [r28 stringByAppendingPathComponent:r27];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 stringByDeletingLastPathComponent];
    r29 = r29;
    r24 = [r0 retain];
    [r27 length] - 0x1;
    if ([r27 characterAtIndex:r2] == 0x2f) {
            r19 = [r28 retain];
            [r24 release];
            r24 = r19;
    }
    r0 = [NSFileManager defaultManager];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 createDirectoryAtPath:r2 withIntermediateDirectories:r3 attributes:r4 error:r5];
    [r0 release];
    if ((r25 & 0x1) == 0x0) goto loc_10064b7ec;

loc_10064b6fc:
    r0 = objc_retainAutorelease(r28);
    r25 = r0;
    r0 = objc_msgSend(r0, var_141);
    r0 = fopen(r0, "wb");
    if (r0 != 0x0) {
            r19 = r0;
            r1 = &stack[-113];
            if (sub_10065fb10(r22, r1) >= 0x1) {
                    do {
                            asm { sxtw       x1, w0 };
                            fwrite(&stack[-113], r1, 0x1, r19);
                            r1 = &stack[-113];
                    } while (sub_10065fb10(r22, r1) > 0x0);
            }
            fclose(r19);
    }
    if (sub_10065ef00() != -0x69) goto loc_10064b824;

loc_10064b780:
    if (r21 != 0x0) {
            r25 = [[@"CRC check failed on close for file: " stringByAppendingString:r2] retain];
            r0 = [VungleZipArchiver errorWithCode:r2 description:r3];
            r29 = r29;
            *r21 = [[r0 retain] autorelease];
            [r25 release];
    }
    r23 = 0x0;
    goto loc_10064b83c;

loc_10064b83c:
    r25 = 0x0;
    r19 = 0x2;
    goto loc_10064b840;

loc_10064b840:
    [r24 release];
    [r28 release];
    [r27 release];
    r28 = r20;
    goto loc_10064b85c;

loc_10064b824:
    r25 = sub_100660048(r22);
    r19 = 0x0;
    goto loc_10064b840;

loc_10064b7ec:
    if (r21 != 0x0) {
            r0 = [VungleZipArchiver errorWithCode:r2 description:r3];
            r29 = r29;
            *r21 = [[r0 retain] autorelease];
    }
    goto loc_10064b83c;

loc_10064b7e4:
    r25 = 0x0;
    goto loc_10064b5d0;

loc_10064b870:
    objc_autoreleasePoolPop(r26);
    r23 = 0x0;
    goto loc_10064b87c;

loc_10064b4a8:
    if (r21 == 0x0) goto loc_10064b4e4;

loc_10064b4ac:
    r0 = [VungleZipArchiver errorWithCode:0xffffffffffffffff description:@"failed to open zip file"];
    goto loc_10064b4d0;
}

@end