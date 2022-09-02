@implementation ADCGCDWebServerGZipDecoder

-(bool)close:(void * *)arg2 {
    inflateEnd((int64_t *)&self->_stream);
    r0 = [[&var_20 super] close:arg2];
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
    if (inflateInit2_(r20, 0x1f, "1.2.11", 0x70) != 0x0) {
            if (r19 != 0x0) {
                    r3 = 0x70;
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

-(bool)writeData:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x80;
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
    r20 = arg3;
    r22 = self;
    r0 = [arg2 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    r0 = [r0 bytes];
    r23 = (int64_t *)&r22->_stream;
    *r23 = r0;
    *(int32_t *)(r23 + 0x8) = [r19 length];
    r21 = [[NSMutableData alloc] initWithLength:0x40000];
    if (r21 == 0x0) goto loc_100224090;

loc_100223f84:
    var_68 = r20;
    r20 = [r21 length];
    r0 = objc_retainAutorelease(r21);
    r25 = r0;
    *(r23 + 0x18) = [r0 mutableBytes];
    *(int32_t *)(r23 + 0x20) = r20;
    r0 = inflate(r23, 0x0);
    if (r0 > 0x1) goto loc_100224048;

loc_100223fd8:
    r28 = 0x0;
    goto loc_100223fdc;

loc_100223fdc:
    r8 = *(int32_t *)(r23 + 0x20);
    r28 = (r20 - r8) + r28;
    if (r8 != 0x0) goto loc_1002240c8;

loc_100223fec:
    [r25 length] << 0x1;
    [r25 setLength:r2];
    r20 = [r25 length] - r28;
    *(r23 + 0x18) = [objc_retainAutorelease(r25) mutableBytes] + r28;
    *(int32_t *)(r23 + 0x20) = r20;
    r0 = inflate(r23, 0x0);
    if (r0 < 0x1) goto loc_100223fdc;

loc_100224048:
    r22 = var_68;
    if (r22 != 0x0) {
            r8 = @class(NSError);
            asm { sxtw       x3, w0 };
            r0 = [r8 errorWithDomain:@"ZlibErrorDomain" code:r3 userInfo:0x0];
            r0 = [r0 retain];
            r0 = [r0 autorelease];
            r20 = 0x0;
            *r22 = r0;
    }
    else {
            r20 = 0x0;
    }
    goto loc_100224094;

loc_100224094:
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;

loc_1002240c8:
    if (r0 == 0x1) {
            *(int8_t *)(int64_t *)&r22->_finished = 0x1;
    }
    [r25 setLength:r2];
    if (r28 != 0x0) {
            r0 = [[&var_60 super] writeData:r25 error:var_68];
            r20 = r0;
    }
    else {
            r20 = 0x1;
    }
    goto loc_100224094;

loc_100224090:
    r20 = 0x0;
    goto loc_100224094;
}

@end