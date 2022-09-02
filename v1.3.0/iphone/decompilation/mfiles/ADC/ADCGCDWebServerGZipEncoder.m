@implementation ADCGCDWebServerGZipEncoder

-(void *)initWithResponse:(void *)arg2 reader:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] initWithResponse:r19 reader:arg3];
    r20 = r0;
    if (r20 != 0x0) {
            [r19 setContentLength:0xffffffffffffffff];
            [r19 setValue:@"gzip" forAdditionalHeader:@"Content-Encoding"];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)open:(void * *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r21 = self;
    r20 = (int64_t *)&r21->_stream;
    if (deflateInit2_(r20, 0xffffffffffffffff, 0x8, 0x1f, 0x8, 0x0, "1.2.11", 0x70) != 0x0) {
            if (r19 != 0x0) {
                    r3 = 0x1f;
                    r8 = @class(NSError);
                    asm { sxtw       x3, w0 };
                    r8 = [[[r8 errorWithDomain:@"ZlibErrorDomain" code:r3 userInfo:0x0] retain] autorelease];
                    r0 = 0x0;
                    *r19 = r8;
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = [[&var_30 super] open:r19];
            if ((r0 & 0x1) != 0x0) {
                    r0 = 0x1;
            }
            else {
                    deflateEnd(r20);
                    r0 = 0x0;
            }
    }
    return r0;
}

-(void)close {
    deflateEnd((int64_t *)&self->_stream);
    [[&var_20 super] close];
    return;
}

-(void *)readData:(void * *)arg2 {
    r31 = r31 - 0xa0;
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
    r19 = arg2;
    r21 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_finished));
    r20 = *(int8_t *)(r21 + r22);
    r0 = [NSMutableData alloc];
    if (r20 == 0x0) goto loc_1002253e0;

loc_1002253bc:
    r23 = [r0 init];
    goto loc_1002253cc;

loc_1002253cc:
    r20 = [r23 retain];
    r19 = r20;
    goto loc_1002255c4;

loc_1002255c4:
    [r20 release];
    r0 = [r19 autorelease];
    return r0;

loc_1002253e0:
    r20 = [r0 initWithLength:0x40000];
    if (r20 == 0x0) goto loc_1002255c0;

loc_1002253f8:
    var_68 = r22;
    goto loc_10022541c;

loc_10022541c:
    r0 = [[&var_60 super] readData:r19];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_1002255bc;

loc_100225444:
    r24 = @selector(length);
    r0 = objc_retainAutorelease(r0);
    r26 = r0;
    r0 = [r0 bytes];
    r28 = r21;
    r22 = (int64_t *)&r21->_stream;
    *r22 = r0;
    r0 = objc_msgSend(r26, r24);
    r27 = 0x0;
    *(int32_t *)(r22 + 0x8) = r0;
    goto loc_10022549c;

loc_10022549c:
    r24 = @selector(length);
    r21 = objc_msgSend(r20, r24) - r27;
    r0 = objc_retainAutorelease(r20);
    r23 = r0;
    r8 = [r0 mutableBytes] + r27;
    *(r22 + 0x18) = r8;
    *(int32_t *)(r22 + 0x20) = r21;
    if (objc_msgSend(r26, r24) == 0x0) {
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    r0 = deflate(r22, r8 << 0x2);
    if (r0 == 0x0) goto loc_100225504;

loc_1002254f0:
    if (r0 != 0x1) goto loc_10022551c;

loc_1002254f8:
    *(int8_t *)(r28 + var_68) = 0x1;
    goto loc_100225504;

loc_100225504:
    r8 = *(int32_t *)(r22 + 0x20);
    r27 = (r21 - r8) + r27;
    if (r8 != 0x0) {
            r21 = 0x5;
    }
    else {
            [r23 length] << 0x1;
            [r23 setLength:r2];
            r21 = 0x0;
    }
    goto loc_10022557c;

loc_10022557c:
    r8 = r21 & 0x7;
    if (r8 == 0x0) goto loc_10022549c;

loc_100225584:
    r0 = r26;
    if (r8 != 0x5) goto loc_100225598;

loc_100225590:
    [r0 release];
    goto loc_1002255a0;

loc_1002255a0:
    r21 = r28;
    if (r27 == 0x0) goto loc_10022541c;

loc_1002255a8:
    [r23 setLength:r2];
    goto loc_1002253cc;

loc_100225598:
    [r0 release];
    if (r21 != 0x0) goto loc_1002255f0;
    goto loc_1002255a0;

loc_1002255f0:
    r19 = 0x0;
    r20 = r23;
    goto loc_1002255c4;

loc_10022551c:
    if (r19 != 0x0) {
            var_78 = @selector(errorWithDomain:code:userInfo:);
            r8 = @class(NSError);
            asm { sxtw       x3, w0 };
            r0 = objc_msgSend(r8, var_78);
            r29 = r29;
            *r19 = [[r0 retain] autorelease];
    }
    r21 = 0x1;
    goto loc_10022557c;

loc_1002255bc:
    [r0 release];
    goto loc_1002255c0;

loc_1002255c0:
    r19 = 0x0;
    goto loc_1002255c4;
}

@end