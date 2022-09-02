@implementation CLSProcessReportOperation

-(void *)initWithReport:(void *)arg2 resolver:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r23 = arg2;
    r19 = [r23 retain];
    r20 = [r21 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_report, r23);
            objc_storeStrong((int64_t *)&r22->_symbolResolver, r21);
            r21 = [r22 retain];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    [r22 release];
    r0 = r21;
    return r0;
}

-(void *)binaryImagePath {
    r0 = [self report];
    r0 = [r0 retain];
    r20 = [[r0 binaryImagePath] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)threadArrayFromFile:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1e0;
    r20 = [arg2 retain];
    r19 = [objc_retainAutorelease(arg2) fileSystemRepresentation];
    [r20 release];
    r0 = sub_10011d9bc(r19, 0x0, 0x100e6af18);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] != 0x0) {
            r0 = [r20 objectAtIndex:r2];
            r29 = r29;
            r19 = [r0 retain];
            [r20 release];
            if (r19 != 0x0) {
                    r0 = [NSMutableArray array];
                    r29 = r29;
                    var_208 = [r0 retain];
                    r0 = [r19 retain];
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_220 = r0;
                    var_1E0 = r1;
                    r0 = objc_msgSend(r0, r1);
                    var_1F0 = r0;
                    if (r0 != 0x0) {
                            do {
                                    r19 = 0x0;
                                    do {
                                            if (*0x0 != *0x0) {
                                                    objc_enumerationMutation(var_220);
                                            }
                                            var_1E8 = r19;
                                            r19 = *(0x0 + r19 * 0x8);
                                            r27 = [[NSMutableArray array] retain];
                                            r0 = [r19 objectForKey:@"stacktrace"];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r28 = r0;
                                            r19 = objc_msgSend(r0, var_1E0);
                                            if (r19 != 0x0) {
                                                    do {
                                                            r22 = 0x0;
                                                            do {
                                                                    if (*0x0 != *0x0) {
                                                                            objc_enumerationMutation(r28);
                                                                    }
                                                                    r21 = @selector(addObject:);
                                                                    r0 = [CLSStackFrame stackFrameWithAddress:[*(0x0 + r22 * 0x8) unsignedIntegerValue]];
                                                                    r29 = r29;
                                                                    [r0 retain];
                                                                    objc_msgSend(r27, r21);
                                                                    [r23 release];
                                                                    r22 = r22 + 0x1;
                                                            } while (r22 < r19);
                                                            r19 = objc_msgSend(r28, var_1E0);
                                                    } while (r19 != 0x0);
                                            }
                                            [r28 release];
                                            [var_208 addObject:r2];
                                            [r27 release];
                                            r19 = var_1E8 + 0x1;
                                    } while (r19 < var_1F0);
                                    r0 = objc_msgSend(var_220, var_1E0);
                                    var_1F0 = r0;
                            } while (r0 != 0x0);
                    }
                    r20 = var_220;
                    [r20 release];
            }
            else {
                    var_208 = 0x0;
                    r20 = r19;
            }
    }
    else {
            var_208 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_208 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)main {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[self symbolResolver] retain];
    r0 = [r19 binaryImagePath];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r22 = [r20 loadBinaryImagesFromFile:r21];
    [r21 release];
    [r20 release];
    if (r22 != 0x0) {
            r0 = [r19 report];
            r0 = [r0 retain];
            [r0 enumerateSymbolicatableFilesInContent:&var_48];
            [r0 release];
    }
    return;
}

-(bool)symbolicateFile:(void *)arg2 withResolver:(void *)arg3 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self threadArrayFromFile:r19];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [CLSSymbolicationOperation alloc];
            r0 = [r0 init];
            r22 = r0;
            [r0 setThreadArray:r21];
            [r22 setSymbolResolver:r20];
            r0 = [CLSDemangleOperation alloc];
            r0 = [r0 init];
            r23 = r0;
            [r0 setThreadArray:r21];
            r0 = [CLSSerializeSymbolicatedFramesOperation alloc];
            r0 = [r0 init];
            [r0 setThreadArray:r21];
            r25 = [[r19 stringByAppendingPathExtension:@"symbolicated"] retain];
            [r0 setOutputPath:r25];
            [r25 release];
            [r22 start];
            [r23 start];
            [r0 start];
            [r0 release];
            [r23 release];
            [r22 release];
            r22 = 0x1;
    }
    else {
            r22 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)symbolResolver {
    r0 = self->_symbolResolver;
    return r0;
}

-(void *)report {
    r0 = self->_report;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_report, 0x0);
    objc_storeStrong((int64_t *)&self->_symbolResolver, 0x0);
    return;
}

@end