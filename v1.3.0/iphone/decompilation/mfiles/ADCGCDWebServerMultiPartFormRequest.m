@implementation ADCGCDWebServerMultiPartFormRequest

+(void *)mimeType {
    objc_retainAutorelease(@"multipart/form-data");
    return @"multipart/form-data";
}

-(void *)initWithMethod:(void *)arg2 url:(void *)arg3 headers:(void *)arg4 path:(void *)arg5 query:(void *)arg6 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r24 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    r0 = [[&var_40 super] initWithMethod:r24 url:r22 headers:r21 path:r20 query:arg6];
    r19 = r0;
    [r20 release];
    [r21 release];
    [r22 release];
    [r24 release];
    if (r19 != 0x0) {
            r0 = @class(NSMutableArray);
            r0 = [r0 alloc];
            r0 = [r0 init];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_arguments));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableArray);
            r0 = [r0 alloc];
            r0 = [r0 init];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_files));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(bool)writeData:(void *)arg2 error:(void * *)arg3 {
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
    r19 = arg3;
    r21 = self->_parser;
    r22 = [arg2 retain];
    r0 = objc_retainAutorelease(arg2);
    r23 = [r0 bytes];
    r20 = [r0 length];
    [r22 release];
    if (([r21 appendBytes:r23 length:r20] & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            if (r19 != 0x0) {
                    r21 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
                    *r19 = [[[NSError errorWithDomain:@"ADCGCDWebServerErrorDomain" code:0xffffffffffffffff userInfo:r21] retain] autorelease];
                    [r21 release];
            }
            r0 = 0x0;
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)open:(void * *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [self contentType];
    r0 = [r0 retain];
    r22 = r0;
    r0 = sub_100222e30(r0, @"boundary");
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    r0 = [ADCGCDWebServerMIMEStreamParser alloc];
    r0 = [r0 initWithBoundary:r20 defaultControlName:0x0 arguments:self->_arguments files:self->_files];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_parser));
    r8 = *(self + r22);
    *(self + r22) = r0;
    [r8 release];
    if (*(self + r22) != 0x0) {
            r19 = 0x1;
    }
    else {
            if (r19 != 0x0) {
                    r22 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
                    *r19 = [[[NSError errorWithDomain:@"ADCGCDWebServerErrorDomain" code:0xffffffffffffffff userInfo:r22] retain] autorelease];
                    [r22 release];
                    r19 = 0x0;
            }
    }
    var_28 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_28) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)close:(void * *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_parser));
    r21 = [*(self + r22) isAtEnd];
    r0 = *(self + r22);
    *(self + r22) = 0x0;
    [r0 release];
    if ((r21 & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            if (r19 != 0x0) {
                    r21 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
                    *r19 = [[[NSError errorWithDomain:@"ADCGCDWebServerErrorDomain" code:0xffffffffffffffff userInfo:r21] retain] autorelease];
                    [r21 release];
            }
            r0 = 0x0;
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)firstFileForControlName:(void *)arg2 {
    r31 = r31 - 0x140;
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
    r19 = [arg2 retain];
    r0 = self->_files;
    r0 = [r0 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 == 0x0) goto loc_100228bec;

loc_100228b58:
    r21 = 0x0;
    goto loc_100228b64;

loc_100228b64:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r20);
    }
    r24 = @selector(isEqualToString:);
    r25 = *(0x0 + r21 * 0x8);
    r0 = [r25 controlName];
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r24);
    [r0 release];
    if ((r27 & 0x1) != 0x0) goto loc_100228bfc;

loc_100228bb8:
    r21 = r21 + 0x1;
    if (r21 < r22) goto loc_100228b64;

loc_100228bc4:
    r22 = objc_msgSend(r20, var_120);
    if (r22 != 0x0) goto loc_100228b58;

loc_100228bec:
    [r20 release];
    r21 = 0x0;
    goto loc_100228c10;

loc_100228c10:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100228bfc:
    r21 = [r25 retain];
    [r20 release];
    goto loc_100228c10;
}

-(void *)firstArgumentForControlName:(void *)arg2 {
    r31 = r31 - 0x140;
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
    r19 = [arg2 retain];
    r0 = self->_arguments;
    r0 = [r0 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 == 0x0) goto loc_100228a54;

loc_1002289c0:
    r21 = 0x0;
    goto loc_1002289cc;

loc_1002289cc:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r20);
    }
    r24 = @selector(isEqualToString:);
    r25 = *(0x0 + r21 * 0x8);
    r0 = [r25 controlName];
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r24);
    [r0 release];
    if ((r27 & 0x1) != 0x0) goto loc_100228a64;

loc_100228a20:
    r21 = r21 + 0x1;
    if (r21 < r22) goto loc_1002289cc;

loc_100228a2c:
    r22 = objc_msgSend(r20, var_120);
    if (r22 != 0x0) goto loc_1002289c0;

loc_100228a54:
    [r20 release];
    r21 = 0x0;
    goto loc_100228a78;

loc_100228a78:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100228a64:
    r21 = [r25 retain];
    [r20 release];
    goto loc_100228a78;
}

-(void *)files {
    r0 = self->_files;
    return r0;
}

-(void *)arguments {
    r0 = self->_arguments;
    return r0;
}

-(void *)description {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x200;
    r21 = self;
    r0 = [[&var_168 super] description];
    r20 = [r0 retain];
    r0 = [NSMutableString stringWithString:r20];
    r29 = &saved_fp;
    var_1F0 = [r0 retain];
    [r20 release];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_arguments));
    r0 = *(r21 + r19);
    r20 = @selector(count);
    if (objc_msgSend(r0, r20) != 0x0) {
            var_220 = @selector(count);
            [var_1F0 appendString:@"\n"];
            var_198 = q0;
            var_218 = r21;
            r0 = *(r21 + r19);
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_210 = r1;
            var_208 = r0;
            r25 = objc_msgSend(r0, r1);
            if (r25 != 0x0) {
                    var_200 = *var_198;
                    r19 = var_1F0;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_198 != var_200) {
                                            objc_enumerationMutation(var_208);
                                    }
                                    r24 = *(var_1A0 + r22 * 0x8);
                                    [[r24 controlName] retain];
                                    [[r24 contentType] retain];
                                    [r19 appendFormat:r2];
                                    [r26 release];
                                    [r23 release];
                                    r0 = sub_1002233d4([objc_msgSend(r24, r20) retain], [[r24 contentType] retain]);
                                    r29 = r29;
                                    [r0 retain];
                                    [r19 appendString:r2];
                                    [r26 release];
                                    [r24 release];
                                    [r23 release];
                                    r22 = r22 + 0x1;
                            } while (r22 < r25);
                            r25 = objc_msgSend(var_208, var_210);
                    } while (r25 != 0x0);
            }
            [var_208 release];
            r20 = var_220;
            r21 = var_218;
    }
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_files));
    if (objc_msgSend(*(r21 + r19), r20) != 0x0) {
            [var_1F0 appendString:@"\n"];
            var_1D8 = q0;
            r0 = *(r21 + r19);
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_210 = r1;
            var_208 = r0;
            r0 = objc_msgSend(r0, r1);
            var_1F8 = r0;
            if (r0 != 0x0) {
                    var_200 = *var_1D8;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_1D8 != var_200) {
                                            objc_enumerationMutation(var_208);
                                    }
                                    r21 = *(var_1E0 + r22 * 0x8);
                                    [[r21 controlName] retain];
                                    [[r21 contentType] retain];
                                    [[r21 fileName] retain];
                                    r0 = [r21 temporaryPath];
                                    r29 = r29;
                                    [r0 retain];
                                    [var_1F0 appendFormat:r2];
                                    [r21 release];
                                    [r19 release];
                                    [r23 release];
                                    [r20 release];
                                    r22 = r22 + 0x1;
                            } while (r22 < var_1F8);
                            r0 = objc_msgSend(var_208, var_210);
                            var_1F8 = r0;
                    } while (r0 != 0x0);
            }
            [var_208 release];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [var_1F0 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_files, 0x0);
    objc_storeStrong((int64_t *)&self->_arguments, 0x0);
    objc_storeStrong((int64_t *)&self->_parser, 0x0);
    return;
}

@end