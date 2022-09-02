@implementation CLSDemangleOperation

+(void *)demangleSymbol:(char *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    if (r19 == 0x0) goto loc_10010b7a4;

loc_10010b774:
    if (strncmp(r19, "_Z", 0x2) == 0x0) goto loc_10010b7ac;

loc_10010b78c:
    if (strncmp(r19, "__Z", 0x3) == 0x0) goto loc_10010b7c8;

loc_10010b7a4:
    r0 = 0x0;
    goto loc_10010b7e4;

loc_10010b7e4:
    r0 = [r0 autorelease];
    return r0;

loc_10010b7c8:
    r0 = [r20 demangleBlockInvokeCppSymbol:r19];
    goto loc_10010b7e0;

loc_10010b7e0:
    r0 = [r0 retain];
    goto loc_10010b7e4;

loc_10010b7ac:
    r0 = [r20 demangleCppSymbol:r19];
    goto loc_10010b7e0;
}

-(void *)demangleSymbol:(char *)arg2 {
    r0 = [self class];
    r0 = [r0 demangleSymbol:arg2];
    return r0;
}

+(void *)demangleCppSymbol:(char *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = __cxa_demangle();
    if (r19 != 0x0) {
            r20 = [[NSString stringWithUTF8String:r2] retain];
            free(r19);
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void)main {
    [self enumerateFramesWithBlock:&var_28];
    return;
}

+(void *)demangleBlockInvokeCppSymbol:(char *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r0 = [NSString stringWithUTF8String:arg2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    r20 = [r0 rangeOfString:@"_block_invoke" options:0x4];
    if (r20 >= 0x5) {
            asm { ccmp       x20, x8, #0x4, hs };
    }
    if (!CPU_FLAGS & NE) {
            r21 = 0x0;
    }
    else {
            r0 = [r19 substringWithRange:0x1];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r23 = r0;
            r0 = [r22 demangleSymbol:[r0 UTF8String]];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (r22 != 0x0) {
                    [r19 length] - r20;
                    r20 = [[r19 substringWithRange:r20] retain];
                    [r19 release];
                    r21 = [[r22 stringByAppendingString:r20] retain];
                    r19 = r20;
            }
            else {
                    r21 = 0x0;
            }
            [r22 release];
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

@end