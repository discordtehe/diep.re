@implementation ADCCryptoAPI

+(long long)crc32ForInput:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 length] != 0x0) {
            r20 = @selector(length);
            r0 = [r19 dataUsingEncoding:0x4];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r20 = crc32(0x0, [r0 bytes], objc_msgSend(r0, r20));
            [r0 release];
    }
    else {
            r20 = 0xffffffffffffffff;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)sha1ForInput:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 length] != 0x0) {
            r20 = [[ADCUtil sha1:r19] retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)uuid:(int)arg2 {
    r31 = r31 - 0x60;
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
    r19 = arg2;
    if ((r19 & 0xffffffff80000000) == 0x0) {
            r20 = [NSMutableArray new];
            if (r19 != 0x0) {
                    r24 = 0x0;
                    do {
                            r22 = @selector(addObject:);
                            r0 = [ADCUtil getUUID];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r20, r22);
                            [r23 release];
                            r24 = r24 + 0x1;
                    } while (r24 < r19);
            }
    }
    else {
            r0 = [NSArray arrayWithObjects:&stack[-88] count:0x0];
            r20 = [r0 retain];
    }
    r0 = [r20 autorelease];
    return r0;
}

@end