@implementation OMIDtapjoyError

+(bool)setOMIDErrorFor:(void * *)arg2 code:(unsigned long long)arg3 message:(void *)arg4 {
    r4 = arg4;
    r31 = r31 - 0x70;
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
    r21 = arg3;
    r19 = arg2;
    if (r19 != 0x0) {
            r25 = [r4 retain];
            r20 = 0x1;
            r23 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
            r21 = [[NSError errorWithDomain:@"com.omid.library" code:r21 userInfo:r23] retain];
            [r25 release];
            *r19 = [r21 autorelease];
            [r23 release];
    }
    else {
            r20 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end