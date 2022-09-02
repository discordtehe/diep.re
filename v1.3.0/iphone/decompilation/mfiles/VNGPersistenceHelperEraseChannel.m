@implementation VNGPersistenceHelperEraseChannel

-(bool)removeAllObjectsInChannel:(long long)arg2 error:(void * *)arg3 {
    r3 = arg3;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r3 != 0x0) {
            r21 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
            *r3 = [[[NSError errorWithDomain:@"com.vungle.persistence" code:0xfffffffffffffe0c userInfo:r21] retain] autorelease];
            [r21 release];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = 0x0;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end