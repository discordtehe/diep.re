@implementation VungleUnzipper

-(bool)decompressZipWithPath:(void *)arg2 outputDirectory:(void *)arg3 error:(void * *)arg4 {
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
    r22 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self retain];
    r21 = r0;
    objc_sync_enter(r0);
    r24 = [VungleZipArchiver unzipFileAtPath:r19 toDestination:r20 overwrite:0x1 error:&var_60];
    r23 = [var_60 retain];
    if ((r24 & 0x1) != 0x0) {
            r22 = 0x1;
    }
    else {
            if (r22 != 0x0) {
                    r24 = objc_alloc();
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1];
                    r25 = [r0 retain];
                    *r22 = [[r24 initWithDomain:@"com.vungle.mraid.utility.unzipper" code:0xffffffffffffd8f0 userInfo:r25] autorelease];
                    [r25 release];
                    r22 = 0x0;
            }
    }
    var_48 = **___stack_chk_guard;
    [r23 release];
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end