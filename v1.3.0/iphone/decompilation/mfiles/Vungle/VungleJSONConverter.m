@implementation VungleJSONConverter

-(void *)JSONStringWithNSArray:(void *)arg2 options:(long long)arg3 error:(void * *)arg4 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r24 = arg3;
    r23 = self;
    r0 = [NSJSONSerialization dataWithJSONObject:arg2 options:0x0 error:&var_60];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [var_60 retain];
    if (r19 != 0x0) {
            r22 = [objc_alloc() initWithData:r19 encoding:0x4];
            if (r21 != 0x0 && r22 == 0x0) {
                    r23 = objc_alloc();
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1];
                    r24 = [r0 retain];
                    *r21 = [[r23 initWithDomain:@"com.vungle.mraid.converter" code:0xffffffffffffd8f2 userInfo:r24] autorelease];
                    [r24 release];
                    r21 = 0x0;
            }
            else {
                    if (r24 == 0x1) {
                            [r23 minifyString:r22];
                            objc_unsafeClaimAutoreleasedReturnValue();
                    }
                    r21 = [r22 copy];
            }
            [r22 release];
    }
    else {
            if (r21 != 0x0) {
                    r22 = objc_alloc();
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1];
                    r23 = [r0 retain];
                    *r21 = [[r22 initWithDomain:@"com.vungle.mraid.converter" code:0xffffffffffffd8f0 userInfo:r23] autorelease];
                    [r23 release];
                    r21 = 0x0;
            }
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)minifyString:(void *)arg2 {
    r0 = [arg2 retain];
    [r0 length];
    [r0 replaceOccurrencesOfString:@"\r" withString:@"" options:0x0 range:0x0];
    [r0 length];
    [r0 replaceOccurrencesOfString:@"\n" withString:@"" options:0x0 range:0x0];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)JSONStringWithNSDictionary:(void *)arg2 options:(long long)arg3 error:(void * *)arg4 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r24 = arg3;
    r23 = self;
    r0 = [NSJSONSerialization dataWithJSONObject:arg2 options:0x0 error:&var_60];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [var_60 retain];
    if (r19 != 0x0) {
            r22 = [objc_alloc() initWithData:r19 encoding:0x4];
            if (r21 != 0x0 && r22 == 0x0) {
                    r23 = objc_alloc();
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1];
                    r24 = [r0 retain];
                    *r21 = [[r23 initWithDomain:@"com.vungle.mraid.converter" code:0xffffffffffffd8f3 userInfo:r24] autorelease];
                    [r24 release];
                    r21 = 0x0;
            }
            else {
                    if (r24 == 0x1) {
                            [r23 minifyString:r22];
                            objc_unsafeClaimAutoreleasedReturnValue();
                    }
                    r21 = [r22 copy];
            }
            [r22 release];
    }
    else {
            if (r21 != 0x0) {
                    r22 = objc_alloc();
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1];
                    r23 = [r0 retain];
                    *r21 = [[r22 initWithDomain:@"com.vungle.mraid.converter" code:0xffffffffffffd8f1 userInfo:r23] autorelease];
                    [r23 release];
                    r21 = 0x0;
            }
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end