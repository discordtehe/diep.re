@implementation VungleUploadOperation

-(void *)initWithURL:(void *)arg2 content:(void *)arg3 session:(void *)arg4 taskSetupCompletionBlock:(void *)arg5 taskCompletionBlock:(void *)arg6 {
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
    r19 = arg3;
    r25 = [arg2 retain];
    r20 = [r19 retain];
    r23 = [arg4 retain];
    r22 = [arg5 retain];
    r0 = [[&var_50 super] initWithURL:r25 requestType:0x1 parameters:0x0 session:r23 taskSetupCompletionBlock:r22 taskCompletionBlock:arg6];
    r21 = r0;
    [r22 release];
    [r23 release];
    [r25 release];
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_content, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)taskWithRequest:(void *)arg2 session:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isURLSessionValid];
    [r0 release];
    if (r23 != 0x0) {
            r22 = [[r21 compressed] retain];
            r21 = [[r20 uploadTaskWithRequest:r19 fromData:r22] retain];
            [r22 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)prepareRequest:(void *)arg2 {
    r20 = [arg2 retain];
    [[&var_40 super] prepareRequest:r20];
    r21 = [[self compressed] retain];
    [arg2 setHTTPBody:r21];
    [r21 length];
    r22 = [[NSString stringWithFormat:@"%lu"] retain];
    [arg2 setValue:r22 forHTTPHeaderField:@"Content-Length"];
    [arg2 setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
    [r20 release];
    [r22 release];
    [r21 release];
    return;
}

-(void *)getOperationContent {
    r0 = [self content];
    return r0;
}

-(void *)compressed {
    r31 = r31 - 0xd0;
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
    r21 = [[self content] retain];
    r0 = [NSJSONSerialization dataWithJSONObject:r21 options:0x0 error:&saved_fp - 0x48];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [0x0 retain];
    [r21 release];
    if ([r19 length] != 0x0) {
            r21 = @selector(length);
            r0 = objc_retainAutorelease(r19);
            [r0 bytes];
            objc_msgSend(r0, r21);
            r0 = deflateInit2_(&var_B8, 0xffffffffffffffff, 0x8, 0x1f, 0x8, 0x0, "1.2.11", 0x70);
            r23 = 0x0;
            if (r0 == 0x0) {
                    r0 = [NSMutableData dataWithLength:0x4000];
                    r29 = r29;
                    r23 = [r0 retain];
                    do {
                            if (0x0 >= [r23 length]) {
                                    [r23 increaseLengthBy:0x4000];
                            }
                            r21 = @selector(length);
                            r0 = objc_retainAutorelease(r23);
                            r22 = r0;
                            [r0 mutableBytes] + 0x0;
                            var_98 = objc_msgSend(r22, r21) - 0x0;
                            deflate(&var_B8, 0x4);
                    } while (var_98 == 0x0);
                    deflateEnd(&var_B8);
                    [r22 setLength:0x0];
                    r23 = [[NSData dataWithData:r22] retain];
                    [r22 release];
            }
    }
    else {
            r23 = [r19 retain];
    }
    [r19 release];
    [r20 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void *)content {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_content)), 0x0);
    return r0;
}

-(void)setContent:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_content, 0x0);
    return;
}

@end