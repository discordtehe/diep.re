@implementation TR_AFStreamingMultipartFormData

-(void *)initWithURLRequest:(void *)arg2 stringEncoding:(unsigned long long)arg3 {
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
    r21 = arg3;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setRequest:r19];
            [r20 setStringEncoding:r21];
            arc4random();
            arc4random();
            r22 = [[NSString stringWithFormat:@"Boundary+%08X%08X"] retain];
            [r20 setBoundary:r22];
            [r22 release];
            r21 = [[TR_AFMultipartBodyStream alloc] initWithStringEncoding:r21];
            [r20 setBodyStream:r21];
            [r21 release];
            r21 = [r20 retain];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(bool)appendPartWithFileURL:(void *)arg2 name:(void *)arg3 error:(void * *)arg4 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r20 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r23 = [[r19 lastPathComponent] retain];
    r24 = [[r19 pathExtension] retain];
    r0 = **_kUTTagClassFilenameExtension;
    r0 = UTTypeCreatePreferredIdentifierForTag(r0, r24, 0x0);
    r26 = r0;
    r27 = UTTypeCopyPreferredTagWithClass(r0, **_kUTTagClassMIMEType);
    if (r27 != 0x0) {
            r27 = [r27 retain];
            r25 = r27;
    }
    else {
            r25 = @"application/octet-stream";
            [r25 retain];
    }
    [r27 release];
    [r26 release];
    [r24 release];
    r20 = [r21 appendPartWithFileURL:r19 name:r22 fileName:r23 mimeType:r25 error:r20];
    [r22 release];
    [r25 release];
    [r23 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)appendPartWithFileData:(void *)arg2 name:(void *)arg3 fileName:(void *)arg4 mimeType:(void *)arg5 {
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r24 = [arg4 retain];
    r26 = [arg5 retain];
    r22 = [[NSMutableDictionary dictionary] retain];
    r25 = [[NSString stringWithFormat:@"form-data; name=\"%@\"; filename=\"%@\""] retain];
    [r24 release];
    [r23 release];
    [r22 setValue:r25 forKey:@"Content-Disposition"];
    [r25 release];
    [r22 setValue:arg5 forKey:@"Content-Type"];
    [r26 release];
    [self appendPartWithHeaders:r22 body:r19];
    [r19 release];
    [r22 release];
    return;
}

-(void)appendPartWithFormData:(void *)arg2 name:(void *)arg3 {
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [[NSMutableDictionary dictionary] retain];
    r23 = [[NSString stringWithFormat:@"form-data; name=\"%@\""] retain];
    [r21 release];
    [r22 setValue:r23 forKey:@"Content-Disposition"];
    [r23 release];
    [self appendPartWithHeaders:r22 body:r19];
    [r19 release];
    [r22 release];
    return;
}

-(void)appendPartWithInputStream:(void *)arg2 name:(void *)arg3 fileName:(void *)arg4 length:(long long)arg5 mimeType:(void *)arg6 {
    r23 = [arg2 retain];
    r25 = [arg3 retain];
    r26 = [arg4 retain];
    r28 = [arg6 retain];
    r21 = [[NSMutableDictionary dictionary] retain];
    r27 = [[NSString stringWithFormat:@"form-data; name=\"%@\"; filename=\"%@\""] retain];
    [r26 release];
    [r25 release];
    [r21 setValue:r27 forKey:@"Content-Disposition"];
    [r27 release];
    [r21 setValue:arg6 forKey:@"Content-Type"];
    [r28 release];
    r24 = [[TR_AFHTTPBodyPart alloc] init];
    [r24 setStringEncoding:[self stringEncoding]];
    [r24 setHeaders:r21];
    r25 = [[self boundary] retain];
    [r24 setBoundary:r25];
    [r25 release];
    [r24 setBody:arg2];
    [r23 release];
    [r24 setBodyContentLength:arg5];
    r0 = [self bodyStream];
    r0 = [r0 retain];
    [r0 appendHTTPBodyPart:r24];
    [r0 release];
    [r24 release];
    [r21 release];
    return;
}

-(bool)appendPartWithFileURL:(void *)arg2 name:(void *)arg3 fileName:(void *)arg4 mimeType:(void *)arg5 error:(void * *)arg6 {
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
    r23 = arg6;
    r24 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    if (([r19 isFileURL] & 0x1) == 0x0) goto loc_10040d05c;

loc_10040ce00:
    if (([r19 checkResourceIsReachableAndReturnError:r23] & 0x1) == 0x0) goto loc_10040d0e8;

loc_10040ce18:
    r25 = [[NSFileManager defaultManager] retain];
    r26 = [[r19 path] retain];
    r0 = [r25 attributesOfItemAtPath:r26 error:r23];
    r29 = r29;
    r23 = [r0 retain];
    [r26 release];
    [r25 release];
    if (r23 != 0x0) {
            r25 = [[NSMutableDictionary dictionary] retain];
            r26 = [[NSString stringWithFormat:@"form-data; name=\"%@\"; filename=\"%@\""] retain];
            [r25 setValue:r26 forKey:@"Content-Disposition"];
            [r26 release];
            [r25 setValue:r22 forKey:@"Content-Type"];
            r26 = [[TR_AFHTTPBodyPart alloc] init];
            [r26 setStringEncoding:[r24 stringEncoding]];
            [r26 setHeaders:r25];
            r27 = [[r24 boundary] retain];
            [r26 setBoundary:r27];
            [r27 release];
            [r26 setBody:r19];
            r0 = [r23 objectForKeyedSubscript:**_NSFileSize];
            r0 = [r0 retain];
            [r26 setBodyContentLength:[r0 unsignedLongLongValue]];
            [r0 release];
            r0 = [r24 bodyStream];
            r0 = [r0 retain];
            [r0 appendHTTPBodyPart:r26];
            [r0 release];
            [r26 release];
            [r25 release];
            r24 = 0x1;
    }
    else {
            r24 = 0x0;
    }
    [r23 release];
    goto loc_10040d1e0;

loc_10040d1e0:
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r24;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10040d0e8:
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 localizedStringForKey:@"File URL not reachable." value:@"" table:@"AFNetworking"] retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_10040d170;

loc_10040d170:
    r24 = [r0 retain];
    [r26 release];
    [r25 release];
    if (r23 != 0x0) {
            *r23 = [[[NSError alloc] initWithDomain:@"com.alamofire.error.serialization.request" code:0xfffffffffffffc18 userInfo:r24] autorelease];
    }
    [r24 release];
    r24 = 0x0;
    goto loc_10040d1e0;

loc_10040d05c:
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 localizedStringForKey:@"Expected URL to be a file URL" value:@"" table:@"AFNetworking"] retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_10040d170;
}

-(void)appendPartWithHeaders:(void *)arg2 body:(void *)arg3 {
    r23 = [arg2 retain];
    r22 = [arg3 retain];
    r20 = [[TR_AFHTTPBodyPart alloc] init];
    [r20 setStringEncoding:[self stringEncoding]];
    [r20 setHeaders:r23];
    [r23 release];
    r23 = [[self boundary] retain];
    [r20 setBoundary:r23];
    [r23 release];
    [r20 setBodyContentLength:[arg3 length]];
    [r20 setBody:arg3];
    [r22 release];
    r0 = [self bodyStream];
    r0 = [r0 retain];
    [r0 appendHTTPBodyPart:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void)throttleBandwidthWithPacketSize:(unsigned long long)arg2 delay:(double)arg3 {
    r0 = [self bodyStream];
    r0 = [r0 retain];
    [r0 setNumberOfBytesInPacket:arg2];
    [r0 release];
    r0 = [self bodyStream];
    r0 = [r0 retain];
    [r0 setDelay:arg2];
    [r0 release];
    return;
}

-(void *)requestByFinalizingMultipartFormData {
    r31 = r31 - 0x70;
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
    r19 = self;
    r0 = [self bodyStream];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isEmpty];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r19 request];
    }
    else {
            r0 = [r19 bodyStream];
            r0 = [r0 retain];
            [r0 setInitialAndFinalBoundaries];
            [r0 release];
            r22 = [[r19 request] retain];
            r23 = [[r19 bodyStream] retain];
            [r22 setHTTPBodyStream:r23];
            [r23 release];
            [r22 release];
            r24 = [[r19 request] retain];
            r23 = @class(NSString);
            r25 = [[r19 boundary] retain];
            r26 = [[r23 stringWithFormat:@"multipart/form-data; boundary=%@"] retain];
            [r24 setValue:r26 forHTTPHeaderField:@"Content-Type"];
            [r26 release];
            [r25 release];
            [r24 release];
            r24 = [[r19 request] retain];
            r25 = @class(NSString);
            r0 = [r19 bodyStream];
            r0 = [r0 retain];
            [r0 contentLength];
            r22 = [[r25 stringWithFormat:@"%llu"] retain];
            [r24 setValue:r22 forHTTPHeaderField:@"Content-Length"];
            [r22 release];
            [r0 release];
            [r24 release];
            r0 = [r19 request];
    }
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)request {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_request)), 0x0);
    return r0;
}

-(unsigned long long)stringEncoding {
    r0 = self->_stringEncoding;
    return r0;
}

-(void)setRequest:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setStringEncoding:(unsigned long long)arg2 {
    self->_stringEncoding = arg2;
    return;
}

-(void *)boundary {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_boundary)), 0x0);
    return r0;
}

-(void)setBoundary:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setBodyStream:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bodyStream, arg2);
    return;
}

-(void *)bodyStream {
    r0 = self->_bodyStream;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_bodyStream, 0x0);
    objc_storeStrong((int64_t *)&self->_boundary, 0x0);
    objc_storeStrong((int64_t *)&self->_request, 0x0);
    return;
}

@end