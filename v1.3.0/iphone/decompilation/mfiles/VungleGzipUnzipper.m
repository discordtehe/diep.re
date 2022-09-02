@implementation VungleGzipUnzipper

+(void *)gzipInflate:(void *)arg2 {
    r31 = r31 - 0xc0;
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
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r21 = @selector(length);
            r20 = objc_msgSend(r19, r21);
            r0 = objc_msgSend(r19, r21);
            r22 = r0;
            r0 = [NSMutableData dataWithLength:(r0 >> 0x1) + r20];
            r29 = r29;
            r20 = [r0 retain];
            r0 = objc_retainAutorelease(r19);
            [r0 bytes];
            objc_msgSend(r0, r21);
            r0 = inflateInit2_(&var_B0, 0x2f, "1.2.11", 0x70);
            r23 = 0x0;
            if (r0 == 0x0) {
                    asm { ubfx       x22, x22, #0x1, #0x20 };
                    do {
                            if (0x0 >= [r20 length]) {
                                    [r20 increaseLengthBy:r22];
                            }
                            r21 = @selector(length);
                            r0 = objc_retainAutorelease(r20);
                            r23 = r0;
                            [r0 mutableBytes] + 0x0;
                            objc_msgSend(r23, r21) - 0x0;
                            r0 = inflate(&var_B0, 0x2);
                    } while (r0 == 0x0);
                    if (r0 == 0x1) {
                            r0 = inflateEnd(&var_B0);
                            if (r0 == 0x0) {
                                    [r23 setLength:0x0];
                                    r23 = [[NSData dataWithData:r23] retain];
                            }
                            else {
                                    r23 = 0x0;
                            }
                    }
                    else {
                            inflateEnd(&var_B0);
                            r23 = 0x0;
                    }
            }
            [r20 release];
    }
    else {
            r23 = [r19 retain];
    }
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

@end