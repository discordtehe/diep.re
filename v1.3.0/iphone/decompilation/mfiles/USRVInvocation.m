@implementation USRVInvocation

-(void *)init {
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
    r0 = [[&var_50 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = *0x1011d1ae0;
            r0 = [r0 retain];
            objc_sync_enter(r0);
            r0 = [NSNumber numberWithInt:[*0x1011d1ae0 intValue] + 0x1];
            r29 = r29;
            r0 = [r0 retain];
            r8 = *0x1011d1ae0;
            *0x1011d1ae0 = r0;
            [r8 release];
            [r19 setInvocationId:[*0x1011d1ae0 intValue]];
            objc_sync_exit(r22);
            [r22 release];
            if (*0x1011d1af8 == 0x0) {
                    r20 = @selector(init);
                    r0 = [NSMutableDictionary alloc];
                    r0 = objc_msgSend(r0, r20);
                    r8 = *0x1011d1af8;
                    *0x1011d1af8 = r0;
                    [r8 release];
            }
            r22 = *0x1011d1af8;
            [[NSNumber numberWithInt:[r19 invocationId]] retain];
            [r22 setObject:r2 forKey:r3];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(bool)nextInvocation {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self invocations];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 invocations];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 count];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r0 = [r19 invocations];
                    r0 = [r0 retain];
                    r22 = [[r0 objectAtIndex:0x0] retain];
                    [r0 release];
                    [USRVWebViewBridge handleInvocation:r22];
                    r0 = [r19 invocations];
                    r0 = [r0 retain];
                    [r0 removeObjectAtIndex:0x0];
                    [r0 release];
                    [r22 release];
                    r0 = 0x1;
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            [r21 release];
            r0 = 0x0;
    }
    return r0;
}

-(void)sendInvocationCallback {
    r20 = *0x1011d1af8;
    r21 = [[NSNumber numberWithInt:[self invocationId]] retain];
    [r20 removeObjectForKey:r21];
    [r21 release];
    r0 = [USRVWebViewApp getCurrentApp];
    r0 = [r0 retain];
    [r0 invokeCallback:self];
    [r0 release];
    return;
}

-(void)setInvocationResponseWithStatus:(void *)arg2 error:(void *)arg3 params:(void *)arg4 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [r22 responses];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            if (r20 == 0x0) {
                    [@"" retain];
                    [r20 release];
                    r20 = @"";
            }
    }
    else {
            r24 = [[NSMutableArray alloc] init];
            [r22 setResponses:r24];
            [r24 release];
            if (r20 == 0x0) {
                    [@"" retain];
                    [r20 release];
                    r20 = @"";
            }
    }
    var_38 = **___stack_chk_guard;
    r24 = [[NSArray arrayWithObjects:&var_50 count:0x3] retain];
    r0 = [r22 responses];
    r0 = [r0 retain];
    [r0 addObject:r24];
    [r0 release];
    [r24 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

+(void *)getInvocationWithId:(int)arg2 {
    r19 = *0x1011d1af8;
    r20 = [[NSNumber numberWithInt:arg2] retain];
    r19 = [[r19 objectForKey:r2] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)invocations {
    r0 = self->_invocations;
    return r0;
}

+(void)setClassTable:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1b0;
    stack[-328] = **___stack_chk_guard;
    r19 = [arg2 retain];
    if (*0x1011d1ae8 == 0x0) {
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 init];
            r8 = *0x1011d1ae8;
            *0x1011d1ae8 = r0;
            [r8 release];
    }
    if (*qword_1011d1af0 == 0x0) {
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 init];
            r8 = *0x1011d1af0;
            *0x1011d1af0 = r0;
            [r8 release];
    }
    *(int128_t *)(&stack[-519] + 0xff) = q0;
    var_118 = q0;
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1F0 = r1;
    var_1E8 = r0;
    r0 = objc_msgSend(r0, r1);
    var_1D8 = r0;
    if (r0 != 0x0) {
            r23 = 0x1011d1000;
            var_1E0 = *var_118;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_118 != var_1E0) {
                                    objc_enumerationMutation(var_1E8);
                            }
                            var_1C0 = r19;
                            r0 = *(var_120 + r19 * 0x8);
                            var_160 = r0;
                            r0 = NSClassFromString(r0);
                            r27 = r0;
                            r0 = object_getClass(r0);
                            r0 = class_copyMethodList(r0, &var_12C);
                            var_140 = r0;
                            if (r27 != 0x0) {
                                    [*0x1011d1af0 setObject:r2 forKey:r3];
                                    if (var_12C != 0x0) {
                                            r28 = 0x0;
                                            var_190 = r27;
                                            do {
                                                    r0 = *(var_140 + r28 * 0x8);
                                                    r0 = method_getName(r0);
                                                    r21 = r0;
                                                    r2 = sel_getName(r0);
                                                    r0 = @class(NSString);
                                                    r0 = [r0 stringWithCString:r2 encoding:0x4];
                                                    r0 = [r0 retain];
                                                    r25 = r0;
                                                    r0 = [r0 componentsSeparatedByString:@":"];
                                                    r0 = [r0 retain];
                                                    r24 = r0;
                                                    r0 = [r0 objectAtIndex:0x0];
                                                    r29 = r29;
                                                    r22 = [r0 retain];
                                                    [r25 release];
                                                    if (r21 != 0x0 && [r22 rangeOfString:@"WebViewExposed_"] == 0x0) {
                                                            r0 = [r27 methodSignatureForSelector:r21];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            if (r0 != 0x0) {
                                                                    var_170 = r0;
                                                                    var_180 = [r0 numberOfArguments] - 0x2;
                                                                    r0 = *(r23 + 0xae8);
                                                                    r0 = [r0 objectForKey:r2];
                                                                    r29 = r29;
                                                                    r0 = [r0 retain];
                                                                    [r0 release];
                                                                    if (r0 == 0x0) {
                                                                            r25 = *(r23 + 0xae8);
                                                                            r0 = [NSMutableDictionary alloc];
                                                                            r0 = [r0 init];
                                                                            [r25 setObject:r2 forKey:r3];
                                                                            r0 = r23;
                                                                            r23 = r20;
                                                                            [r0 release];
                                                                    }
                                                                    r0 = *(r23 + 0xae8);
                                                                    r0 = [r0 objectForKey:r2];
                                                                    r0 = [r0 retain];
                                                                    r26 = r23;
                                                                    r23 = r0;
                                                                    r0 = [r0 objectForKey:r2];
                                                                    r29 = r29;
                                                                    r0 = [r0 retain];
                                                                    [r0 release];
                                                                    [r23 release];
                                                                    r27 = @selector(objectForKey:);
                                                                    if (r0 == 0x0) {
                                                                            r0 = *(r26 + 0xae8);
                                                                            r0 = objc_msgSend(r0, r27);
                                                                            r29 = r29;
                                                                            r23 = [r0 retain];
                                                                            [[NSMutableDictionary alloc] init];
                                                                            [r23 setObject:r2 forKey:r3];
                                                                            [r25 release];
                                                                            [r23 release];
                                                                    }
                                                                    r0 = *(r26 + 0xae8);
                                                                    r0 = objc_msgSend(r0, r27);
                                                                    r0 = [r0 retain];
                                                                    r25 = [objc_msgSend(r0, r27) retain];
                                                                    [r0 release];
                                                                    r21 = [[NSValue valueWithPointer:r21] retain];
                                                                    [[NSArray arrayWithObjects:r29 - 0xe8 count:0x2] retain];
                                                                    [r21 release];
                                                                    [[NSNumber numberWithLong:r2] retain];
                                                                    [r25 setObject:r2 forKey:r3];
                                                                    [r21 release];
                                                                    r0 = *(r26 + 0xae8);
                                                                    r0 = objc_msgSend(r0, r27);
                                                                    r29 = r29;
                                                                    r0 = [r0 retain];
                                                                    [r0 setObject:r2 forKey:r3];
                                                                    [r21 release];
                                                                    [r23 release];
                                                                    [r25 release];
                                                                    r0 = var_170;
                                                                    r23 = r26;
                                                                    r27 = var_190;
                                                            }
                                                            [r0 release];
                                                    }
                                                    [r24 release];
                                                    [r22 release];
                                                    r28 = r28 + 0x1;
                                            } while (var_12C > r28);
                                    }
                            }
                            free(var_140);
                            r19 = var_1C0 + 0x1;
                    } while (r19 < var_1D8);
                    r0 = objc_msgSend(var_1E8, var_1F0);
                    var_1D8 = r0;
            } while (r0 != 0x0);
    }
    [var_1E8 release];
    [var_1E8 release];
    if (**___stack_chk_guard != stack[-328]) {
            __stack_chk_fail();
    }
    return;
}

-(void)addInvocation:(void *)arg2 methodName:(void *)arg3 parameters:(void *)arg4 callback:(void *)arg5 {
    r31 = r31 - 0xb0;
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
    r22 = self;
    r19 = [arg2 retain];
    r27 = [arg3 retain];
    r21 = [arg4 retain];
    var_58 = [arg5 retain];
    r0 = [r22 invocations];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r20 = [[NSMutableArray alloc] init];
            [r22 setInvocations:r20];
            [r20 release];
    }
    r24 = [*0x1011d1af0 objectForKey:r2];
    if (r24 == 0x0) goto loc_1000d592c;

loc_1000d5714:
    r20 = @selector(objectForKey:);
    r0 = *0x1011d1ae8;
    r0 = objc_msgSend(r0, r20);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1000d5960;

loc_1000d573c:
    r20 = @selector(objectForKey:);
    r26 = [objc_msgSend(*0x1011d1ae8, r20) retain];
    var_68 = r27;
    r25 = [[NSString stringWithFormat:@"WebViewExposed_%@"] retain];
    var_70 = r26;
    r27 = [objc_msgSend(r26, r20) retain];
    [r25 release];
    var_80 = [[NSNumber numberWithLong:[r21 count] + 0x1] retain];
    var_78 = r27;
    r0 = objc_msgSend(r27, r20);
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 retain];
    r27 = [r0 pointerValue];
    r26 = r28;
    [r0 release];
    r0 = [r26 objectAtIndex:0x1];
    r29 = r29;
    r28 = [r0 retain];
    if (r27 == 0x0 || r28 == 0x0) goto loc_1000d59c8;

loc_1000d586c:
    var_88 = r26;
    r0 = [NSInvocation invocationWithMethodSignature:r28];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    [r0 setSelector:r27];
    [r26 setTarget:r2];
    if ([r21 count] == 0x0) goto loc_1000d5a20;

loc_1000d58c8:
    r27 = 0x0;
    goto loc_1000d58d4;

loc_1000d58d4:
    r0 = [r21 objectAtIndex:r27];
    r29 = r29;
    r0 = [r0 retain];
    var_60 = r0;
    if (r0 == 0x0) goto loc_1000d5b3c;

loc_1000d58f4:
    [r26 setArgument:r2 atIndex:r3];
    [var_60 release];
    r0 = [r21 count];
    r27 = r27 + 0x1;
    if (r0 > r27) goto loc_1000d58d4;

loc_1000d5a20:
    [r21 count] + 0x2;
    [r26 setArgument:r2 atIndex:r3];
    r0 = [r26 argumentsRetained];
    r27 = var_68;
    if ((r0 & 0x1) == 0x0) {
            [r26 retainArguments];
    }
    r0 = [r22 invocations];
    r29 = r29;
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r20 release];
    [r26 release];
    r22 = 0x0;
    r23 = var_78;
    r20 = var_70;
    r26 = var_88;
    r24 = var_80;
    goto loc_1000d5ad0;

loc_1000d5ad0:
    [r28 release];
    [r26 release];
    [r24 release];
    [r23 release];
    r0 = r20;
    goto loc_1000d5af4;

loc_1000d5af4:
    [r0 release];
    if (r22 != 0x0) goto loc_1000d5b8c;

loc_1000d5afc:
    [var_58 release];
    [r21 release];
    [r27 release];
    [r19 release];
    return;

loc_1000d5b8c:
    r0 = [NSException exceptionWithName:@"InvalidInvocationException" reason:r22 userInfo:0x0];
    goto loc_1000d5bb4;

loc_1000d5bb4:
    objc_exception_throw(objc_retainAutorelease([r0 retain]));
    return;

loc_1000d5b3c:
    r0 = [NSException exceptionWithName:@"InvalidInvocationException" reason:[[NSString stringWithFormat:r2] retain] userInfo:0x0];
    goto loc_1000d5bb4;

loc_1000d59c8:
    [@"Could not find signature or selector" retain];
    if (r28 != 0x0) {
            r23 = var_78;
            r20 = var_70;
            r24 = var_80;
            if (r27 != 0x0) {
                    r22 = @"Could not find signature or selector";
            }
            else {
                    r22 = @"Could not get selector for the invocation";
                    [r22 retain];
                    [@"Could not find signature or selector" release];
            }
            r27 = var_68;
    }
    else {
            r22 = @"Could not find signature for the selector";
            [r22 retain];
            [@"Could not find signature or selector" release];
            r20 = var_70;
            r27 = var_68;
            r24 = var_80;
            r23 = var_78;
    }
    goto loc_1000d5ad0;

loc_1000d5960:
    r20 = @selector(objectForKey:);
    r22 = @"Uknown error";
    [r22 retain];
    r0 = *0x1011d1ae8;
    r0 = objc_msgSend(r0, r20);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) goto loc_1000d5b8c;

loc_1000d5994:
    r0 = [NSString stringWithFormat:r2];
    r29 = r29;
    r22 = [r0 retain];
    r0 = @"Uknown error";
    goto loc_1000d5af4;

loc_1000d592c:
    r0 = [NSString stringWithFormat:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_1000d5afc;
}

-(void *)responses {
    r0 = self->_responses;
    return r0;
}

-(void)setInvocations:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_invocations, arg2);
    return;
}

-(int)invocationId {
    r0 = *(int32_t *)(int64_t *)&self->_invocationId;
    return r0;
}

-(void)setResponses:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_responses, arg2);
    return;
}

-(void)setInvocationId:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_invocationId = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_responses, 0x0);
    objc_storeStrong((int64_t *)&self->_invocations, 0x0);
    return;
}

@end