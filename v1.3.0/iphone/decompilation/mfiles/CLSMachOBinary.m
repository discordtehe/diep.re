@implementation CLSMachOBinary

+(void *)MachOBinaryWithPath:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [self alloc];
    r20 = [[NSURL fileURLWithPath:r21] retain];
    [r21 release];
    r19 = [r19 initWithURL:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithURL:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 == 0x0) goto loc_1000a1f34;

loc_1000a1e3c:
    r0 = [r19 copy];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_url));
    r8 = *(r20 + r22);
    *(r20 + r22) = r0;
    [r8 release];
    r21 = (int64_t *)&r20->_file;
    r0 = *(r20 + r22);
    r0 = [r0 path];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r23 = sub_1000a2c28(r21, [r0 fileSystemRepresentation]);
    [r0 release];
    if (r23 == 0x0) goto loc_1000a1f44;

loc_1000a1eb8:
    r0 = [NSMutableArray new];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_slices));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    var_48 = [r20 retain];
    sub_1000a2e08(r21);
    [var_48 release];
    goto loc_1000a1f34;

loc_1000a1f34:
    r21 = [r20 retain];
    goto loc_1000a1f48;

loc_1000a1f48:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_1000a1f44:
    r21 = 0x0;
    goto loc_1000a1f48;
}

-(void *)URL {
    r0 = self->_url;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)dealloc {
    sub_1000a2dc4((int64_t *)&self->_file);
    [[&var_20 super] dealloc];
    return;
}

-(void *)path {
    r0 = self->_url;
    r0 = [r0 path];
    return r0;
}

-(void *)instanceIdentifier {
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
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_instanceIdentifier));
    r0 = *(r19 + r8);
    if (r0 != 0x0) {
            r19 = [r0 retain];
    }
    else {
            var_128 = r8;
            r20 = [NSMutableString new];
            var_120 = r19;
            r0 = r19->_slices;
            r0 = [r0 sortedArrayUsingComparator:0x100e681e8];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r23 != 0x0) {
                    do {
                            r27 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(r21);
                                    }
                                    r0 = *(0x0 + r27 * 0x8);
                                    r0 = [r0 uuid];
                                    r29 = r29;
                                    [r0 retain];
                                    [r20 appendString:r2];
                                    [r26 release];
                                    r27 = r27 + 0x1;
                            } while (r27 < r23);
                            r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r23 != 0x0);
            }
            r0 = sub_1000a2314(r20);
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 copy];
            r8 = *(var_120 + var_128);
            *(var_120 + var_128) = r0;
            [r8 release];
            [r22 release];
            r19 = [*(var_120 + var_128) retain];
            [r21 release];
            [r20 release];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)enumerateUUIDs:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r0 = self->_slices;
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r25 = *(0x0 + r28 * 0x8);
                            r26 = [[r25 uuid] retain];
                            r0 = [r25 architectureName];
                            r29 = r29;
                            (*(r19 + 0x10))(r19, r26, [r0 retain]);
                            [r25 release];
                            [r26 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void *)hashNSString:(void *)arg2 {
    r0 = sub_1000a2314(arg2);
    return r0;
}

-(void *)slices {
    r0 = self->_slices;
    return r0;
}

-(void *)sliceForArchitecture:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [self slices];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 == 0x0) goto loc_1000a275c;

loc_1000a26c8:
    r21 = 0x0;
    goto loc_1000a26d4;

loc_1000a26d4:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r20);
    }
    r24 = @selector(isEqualToString:);
    r25 = *(0x0 + r21 * 0x8);
    r0 = [r25 architectureName];
    r29 = r29;
    r0 = [r0 retain];
    r27 = objc_msgSend(r0, r24);
    [r0 release];
    if ((r27 & 0x1) != 0x0) goto loc_1000a276c;

loc_1000a2728:
    r21 = r21 + 0x1;
    if (r21 < r22) goto loc_1000a26d4;

loc_1000a2734:
    r22 = objc_msgSend(r20, var_120);
    if (r22 != 0x0) goto loc_1000a26c8;

loc_1000a275c:
    [r20 release];
    r21 = 0x0;
    goto loc_1000a2780;

loc_1000a2780:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1000a276c:
    r21 = [r25 retain];
    [r20 release];
    goto loc_1000a2780;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_instanceIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_slices, 0x0);
    objc_storeStrong((int64_t *)&self->_url, 0x0);
    return;
}

@end