@implementation ADCGCDWebServerURLEncodedFormRequest

+(void *)mimeType {
    objc_retainAutorelease(@"application/x-www-form-urlencoded");
    return @"application/x-www-form-urlencoded";
}

-(bool)close:(void * *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [[&var_30 super] close:arg2];
    if (r0 != 0x0) {
            r0 = [r19 contentType];
            r0 = [r0 retain];
            r20 = [sub_100222e30(r0, @"charset") retain];
            [r0 release];
            r21 = [NSString alloc];
            r22 = [[r19 data] retain];
            r21 = [r21 initWithData:r22 encoding:sub_100222fe4()];
            [r22 release];
            r0 = sub_1002236c0();
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_arguments));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r21 release];
            [r20 release];
            r0 = 0x1;
    }
    return r0;
}

-(void *)arguments {
    r0 = self->_arguments;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_arguments, 0x0);
    return;
}

-(void *)description {
    r31 = r31 - 0x160;
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
    r0 = [[&var_E8 super] description];
    r21 = [r0 retain];
    r20 = [[NSMutableString stringWithString:r21] retain];
    [r21 release];
    [r20 appendString:@"\n"];
    var_118 = q0;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_arguments));
    r24 = self;
    r0 = *(self + r22);
    r0 = [r0 allKeys];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 sortedArrayUsingSelector:@selector(compare:)];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r23 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    var_130 = r19;
    r23 = objc_msgSend(r19, r1);
    if (r23 != 0x0) {
            r21 = *var_118;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_118 != r21) {
                                    objc_enumerationMutation(var_130);
                            }
                            r27 = *(var_120 + r19 * 0x8);
                            r0 = *(r24 + r22);
                            r0 = [r0 objectForKey:r27];
                            r29 = r29;
                            [r0 retain];
                            [r20 appendFormat:r2];
                            [r28 release];
                            r19 = r19 + 0x1;
                    } while (r19 < r23);
                    r23 = objc_msgSend(var_130, var_138);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_130 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end