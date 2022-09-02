@implementation FABMultipartMimeStreamEncoder

+(void)populateRequest:(void *)arg2 withDataFromEncoder:(void *)arg3 {
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    r19 = [[self generateBoundary] retain];
    r22 = [[NSOutputStream outputStreamToMemory] retain];
    r24 = [[FABMultipartMimeStreamEncoder alloc] initWithStream:r22 andBoundary:r19];
    var_50 = r23;
    r23 = [r23 retain];
    r0 = [r24 retain];
    [r0 encode:&var_70];
    r25 = [[r0 contentTypeHTTPHeaderValue] retain];
    [arg2 setValue:r25 forHTTPHeaderField:@"Content-Type"];
    [r25 release];
    r25 = [[r0 contentLengthHTTPHeaderValue] retain];
    [arg2 setValue:r25 forHTTPHeaderField:@"Content-Length"];
    [r25 release];
    r25 = [[r22 propertyForKey:**_NSStreamDataWrittenToMemoryStreamKey] retain];
    [arg2 setHTTPBody:r25];
    [r21 release];
    [r25 release];
    [r24 release];
    [var_50 release];
    [r0 release];
    [r23 release];
    [r22 release];
    [r19 release];
    return;
}

+(void *)encoderWithStream:(void *)arg2 andBoundary:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[self alloc] initWithStream:r21 andBoundary:r19];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)contentTypeHTTPHeaderValueWithBoundary:(void *)arg2 {
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void *)initWithStream:(void *)arg2 andBoundary:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setOutputStream:r19];
            if (r20 == 0x0) {
                    r22 = [[FABMultipartMimeStreamEncoder generateBoundary] retain];
                    [r20 release];
                    r20 = r22;
            }
            objc_storeStrong((int64_t *)&r21->_boundary, r20);
            r22 = [r21 retain];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;
}

+(void *)generateBoundary {
    r0 = sub_100096bfc();
    return r0;
}

-(void)encode:(void *)arg2 {
    r22 = [arg2 retain];
    [self beginEncoding];
    (*(r22 + 0x10))(arg2);
    [r22 release];
    [self endEncoding];
    return;
}

-(void *)contentTypeHTTPHeaderValue {
    r20 = [self class];
    r19 = [[self boundary] retain];
    r20 = [[r20 contentTypeHTTPHeaderValueWithBoundary:r19] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)beginEncoding {
    self->_length = 0x0;
    r0 = [self outputStream];
    r0 = [r0 retain];
    [r0 open];
    [r0 release];
    r20 = [[self headerData] retain];
    [self writeData:r20];
    [r20 release];
    return;
}

-(void *)contentLengthHTTPHeaderValue {
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)endEncoding {
    r20 = [[self footerData] retain];
    [self writeData:r20];
    [r20 release];
    r0 = [self outputStream];
    r0 = [r0 retain];
    [r0 close];
    [r0 release];
    return;
}

-(void *)headerData {
    r0 = [@"MIME-Version: 1.0\r\n" dataUsingEncoding:0x4];
    return r0;
}

-(void *)footerData {
    r20 = [[self boundary] retain];
    r0 = [NSString stringWithFormat:@"--%@--\r\n"];
    r0 = [r0 retain];
    r21 = [[r0 dataUsingEncoding:0x4] retain];
    [r0 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)addValue:(void *)arg2 fieldName:(void *)arg3 {
    r2 = arg2;
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
    r21 = self;
    r19 = [r2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r1 = @selector(length);
    r0 = objc_msgSend(r0, r1);
    if (r19 != 0x0 && r0 != 0x0) {
            r1 = @selector(null);
            r0 = objc_msgSend(@class(NSNull), r1);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != r19) {
                    r23 = [[r21 boundary] retain];
                    r22 = [[NSMutableString stringWithFormat:@"--%@\r\nContent-Disposition: form-data; name=\"%@\"\r\n"] retain];
                    [r23 release];
                    [r22 appendString:@"Content-Type: text/plain\r\n\r\n"];
                    [r22 appendFormat:@"%@\r\n"];
                    r23 = [[r22 dataUsingEncoding:0x4] retain];
                    [r21 writeData:r23];
                    [r23 release];
                    [r22 release];
            }
            else {
                    NSLog(@"[Fabric] name (%@) or value (%@) is invalid", r1, r2);
            }
    }
    else {
            NSLog(@"[Fabric] name (%@) or value (%@) is invalid", r1, r2);
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)addFileData:(void *)arg2 fileName:(void *)arg3 mimeType:(void *)arg4 fieldName:(void *)arg5 {
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    if ([r19 length] == 0x0) goto loc_10009c174;

loc_10009c0b8:
    if ([r22 length] == 0x0 || [r20 length] == 0x0) goto loc_10009c164;

loc_10009c0d8:
    r25 = [[r23 boundary] retain];
    r0 = [NSMutableString stringWithFormat:r2];
    r29 = r29;
    r24 = [r0 retain];
    [r25 release];
    if (r21 != 0x0) {
            [r24 appendFormat:@"Content-Type: %@\r\n"];
    }
    [r24 appendString:r2];
    r26 = [[r24 dataUsingEncoding:0x4] retain];
    [r23 writeData:r26];
    [r26 release];
    [r23 writeData:r19];
    r25 = [[@"\r\n" dataUsingEncoding:0x4] retain];
    [r23 writeData:r25];
    [r25 release];
    [r24 release];
    goto loc_10009c234;

loc_10009c234:
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10009c164:
    r0 = @"[Fabric] name (%@) or fieldname (%@) is invalid";
    goto loc_10009c180;

loc_10009c180:
    NSLog(r0);
    goto loc_10009c234;

loc_10009c174:
    r0 = @"[Fabric] Unable to MIME encode data with zero length (%@)";
    goto loc_10009c180;
}

-(void)addFile:(void *)arg2 fileName:(void *)arg3 mimeType:(void *)arg4 fieldName:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [arg5 retain];
    r24 = [[NSData dataWithContentsOfURL:r23] retain];
    [r23 release];
    [self addFileData:r24 fileName:r21 mimeType:r20 fieldName:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    [r24 release];
    return;
}

-(bool)writeBytes:(void *)arg2 ofLength:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = self;
    r0 = [self outputStream];
    r0 = [r0 retain];
    r21 = [r0 write:arg2 maxLength:r19];
    [r0 release];
    if (r21 == r19) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_length));
            *(r20 + r8) = *(r20 + r8) + r19;
            r0 = 0x1;
    }
    else {
            NSLog(@"[Fabric] Failed to write bytes to stream");
            r0 = 0x0;
    }
    return r0;
}

-(void)writeData:(void *)arg2 {
    sub_100096ac4(arg2, &var_28);
    return;
}

-(unsigned long long)length {
    r0 = self->_length;
    return r0;
}

-(void)setLength:(unsigned long long)arg2 {
    self->_length = arg2;
    return;
}

-(void *)boundary {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_boundary)), 0x0);
    return r0;
}

-(void *)outputStream {
    r0 = self->_outputStream;
    return r0;
}

-(void)setBoundary:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setOutputStream:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_outputStream, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_outputStream, 0x0);
    objc_storeStrong((int64_t *)&self->_boundary, 0x0);
    return;
}

@end