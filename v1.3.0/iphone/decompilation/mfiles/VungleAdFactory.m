@implementation VungleAdFactory

+(void *)vungleAdWithBody:(void *)arg2 error:(void * *)arg3 {
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
    r21 = arg3;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"adType"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_100660628;

loc_10066053c:
    r0 = [VungleAd adTypeWithRawAdType:r20];
    if (r0 > 0x4) goto loc_1006606a8;

loc_100660560:
    r0 = (0x100660578 + *(int8_t *)(0x100bf2f10 + r0) * 0x4)();
    return r0;

loc_1006606a8:
    if (r21 == 0x0 || 0x0 != 0x0) goto loc_100660748;

loc_1006606b0:
    r0 = [VungleAdFactory errorWithDescription:@"`initWithDictionary:` failed for Ad" code:0xfffffffffffff062];
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    goto loc_10066073c;

loc_10066073c:
    *r21 = r0;
    goto loc_100660748;

loc_100660748:
    [r20 release];
    [r19 release];
    r0 = [0x0 autorelease];
    return r0;

loc_100660628:
    if (r21 == 0x0) goto loc_100660748;

loc_10066062c:
    r0 = [VungleAdFactory errorWithDescription:@"No `adType` key in the body" code:0xfffffffffffff060];
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    goto loc_10066073c;
}

+(void *)errorWithDescription:(void *)arg2 code:(long long)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r23 = [arg2 retain];
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    r19 = [[NSError errorWithDomain:@"com.vungle.adfactory" code:arg3 userInfo:r21] retain];
    [r23 release];
    [r21 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end