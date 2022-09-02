@implementation TR_AFImageResponseSerializer

-(void *)init {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [[r29 - 0x20 super] init];
    if (r19 != 0x0) {
            r20 = [[NSSet alloc] initWithObjects:@"image/tiff"];
            [r19 setAcceptableContentTypes:r20];
            [r20 release];
            r0 = [UIScreen mainScreen];
            r0 = [r0 retain];
            [r0 scale];
            [r19 setImageScale:r20];
            [r0 release];
            [r19 setAutomaticallyInflatesResponseImage:0x1];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
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
    r0 = [[&var_40 super] initWithCoder:r19];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = [NSNumber class];
            r22 = [NSStringFromSelector(@selector(imageScale)) retain];
            r23 = [[r19 decodeObjectOfClass:r21 forKey:r22] retain];
            [r22 release];
            [r23 doubleValue];
            [r20 setImageScale:r21];
            r21 = [NSStringFromSelector(@selector(automaticallyInflatesResponseImage)) retain];
            [r20 setAutomaticallyInflatesResponseImage:[r19 decodeBoolForKey:r21]];
            [r21 release];
            r21 = [r20 retain];
            [r23 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    [[&var_40 super] encodeWithCoder:r20];
    [self imageScale];
    r22 = [[NSNumber numberWithDouble:r20] retain];
    r23 = [NSStringFromSelector(@selector(imageScale)) retain];
    [arg2 encodeObject:r22 forKey:r23];
    [r23 release];
    [r22 release];
    r21 = [self automaticallyInflatesResponseImage];
    r22 = [NSStringFromSelector(@selector(automaticallyInflatesResponseImage)) retain];
    [arg2 encodeBool:r21 forKey:r22];
    [r20 release];
    [r22 release];
    return;
}

-(double)imageScale {
    r0 = self;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[[self class] allocWithZone:arg2] init];
    [self imageScale];
    [r19 setImageScale:arg2];
    [r19 setAutomaticallyInflatesResponseImage:[self automaticallyInflatesResponseImage]];
    r0 = r19;
    return r0;
}

-(void)setImageScale:(double)arg2 {
    self->_imageScale = d0;
    return;
}

-(void *)responseObjectForResponse:(void *)arg2 data:(void *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0x80;
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
    r22 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (([r21 validateResponse:r19 data:r20 error:r22] & 0x1) != 0x0 || r22 != 0x0 && (sub_100411d0c() & 0x1) == 0x0) goto loc_100413154;

loc_10041314c:
    r25 = 0x0;
    goto loc_1004134ac;

loc_1004134ac:
    [r20 release];
    [r19 release];
    r0 = [r25 autorelease];
    return r0;

loc_100413154:
    r22 = [r21 automaticallyInflatesResponseImage];
    [r21 imageScale];
    v8 = v0;
    if (r22 == 0x0) goto loc_100413220;

loc_100413180:
    r21 = [r19 retain];
    r22 = [r20 retain];
    if (r22 == 0x0 || [r22 length] == 0x0) goto loc_10041323c;

loc_1004131b0:
    r23 = CGDataProviderCreateWithCFData(r22);
    r0 = [r21 MIMEType];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 isEqualToString:r2];
    [r0 release];
    if (r27 == 0x0) goto loc_100413244;

loc_100413204:
    r24 = CGImageCreateWithPNGDataProvider(r23, 0x0, 0x1, 0x0);
    goto loc_1004132b8;

loc_1004132b8:
    CGDataProviderRelease(r23);
    r0 = sub_1004134e4(r22);
    r29 = r29;
    r28 = [r0 retain];
    if (r24 == 0x0) goto loc_100413358;

loc_1004132dc:
    r25 = CGImageGetWidth(r24);
    r26 = CGImageGetHeight(r24);
    r27 = CGImageGetBitsPerComponent(r24);
    if (r26 * r25 > 0x100000 || r27 >= 0x9) goto loc_1004133a8;

loc_100413314:
    var_68 = r28;
    r0 = CGColorSpaceCreateDeviceRGB();
    r28 = r0;
    r23 = CGColorSpaceGetModel(r0);
    r0 = CGImageGetBitmapInfo(r24);
    if (r23 == 0x1) {
            r8 = r0 & 0x1f;
            if (r8 != 0x0) {
                    COND = r8 < 0x7;
                    r8 = r0 & 0xffffffe0 | 0x2;
                    if (COND) {
                            if (!CPU_FLAGS & B) {
                                    r0 = r8;
                            }
                            else {
                                    r0 = r0;
                            }
                    }
            }
            else {
                    r0 = r0 & 0xffffffe0 | 0x6;
            }
    }
    r2 = r26;
    r27 = CGBitmapContextCreate(0x0, r25, r2, r27, 0x0, r28, r0);
    CGColorSpaceRelease(r28);
    if (r27 == 0x0) goto loc_10041347c;

loc_1004133ec:
    asm { ucvtf      d2, x25 };
    asm { ucvtf      d3, x26 };
    CGContextDrawImage(r27, r24, r2);
    CGBitmapContextCreateImage(r27);
    CGContextRelease(r27);
    r25 = [UIImage alloc];
    r28 = var_68;
    r25 = [r25 initWithCGImage:r23 scale:[r28 imageOrientation] orientation:r4];
    CGImageRelease(r23);
    CGImageRelease(r24);
    goto loc_100413494;

loc_100413494:
    [r28 release];
    goto loc_10041349c;

loc_10041349c:
    [r22 release];
    [r21 release];
    goto loc_1004134ac;

loc_10041347c:
    CGImageRelease(r24);
    r28 = var_68;
    goto loc_100413488;

loc_100413488:
    r25 = [r28 retain];
    goto loc_100413494;

loc_1004133a8:
    CGImageRelease(r24);
    goto loc_100413488;

loc_100413358:
    r0 = [r28 images];
    r0 = [r0 retain];
    r24 = r0;
    [r0 release];
    if (r28 == 0x0 || r24 != 0x0) goto loc_100413488;

loc_100413380:
    r24 = CGImageCreateCopy([objc_retainAutorelease(r28) CGImage]);
    if (r24 != 0x0) goto loc_1004132dc;

loc_1004133a0:
    r25 = 0x0;
    goto loc_100413494;

loc_100413244:
    r25 = @selector(isEqualToString:);
    r0 = [r21 MIMEType];
    r29 = r29;
    r0 = [r0 retain];
    r25 = objc_msgSend(r0, r25);
    [r0 release];
    if (r25 == 0x0) goto loc_1004132b4;

loc_10041327c:
    r24 = CGImageCreateWithJPEGDataProvider(r23, 0x0, 0x1, 0x0);
    if (r24 == 0x0 || CGColorSpaceGetModel(CGImageGetColorSpace(r24)) != 0x2) goto loc_1004132b8;

loc_1004132ac:
    CGImageRelease(r24);
    goto loc_1004132b4;

loc_1004132b4:
    r24 = 0x0;
    goto loc_1004132b8;

loc_10041323c:
    r25 = 0x0;
    goto loc_10041349c;

loc_100413220:
    r25 = [sub_1004134e4(r20) retain];
    goto loc_1004134ac;
}

-(bool)automaticallyInflatesResponseImage {
    r0 = *(int8_t *)(int64_t *)&self->_automaticallyInflatesResponseImage;
    return r0;
}

-(void)setAutomaticallyInflatesResponseImage:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_automaticallyInflatesResponseImage = arg2;
    return;
}

@end