@implementation VungleDiscSpaceProvider

+(unsigned long long)availableSpaceWithError:(void * *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = NSSearchPathForDirectoriesInDomains(0x9, 0x1, 0x1);
    r0 = [r0 retain];
    r19 = [[r0 firstObject] retain];
    [r0 release];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 attributesOfFileSystemForPath:r19 error:&var_38];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r22 = [var_38 retain];
    [r23 release];
    if (r21 != 0x0) {
            asm { ccmp       x22, #0x0, #0x0, ne };
    }
    if (!CPU_FLAGS & E) {
            r24 = [[r22 userInfo] retain];
            r23 = [[[NSError errorWithDomain:@"com.vungle.logging.disc.provider" code:0xffffffffffff9820 userInfo:r24] retain] autorelease];
            [r22 release];
            *r20 = r23;
            [r24 release];
            r20 = 0xffffffffffffffff;
    }
    else {
            r0 = [r21 objectForKey:**_NSFileSystemFreeSize];
            r0 = [r0 retain];
            r20 = [r0 unsignedLongLongValue];
            [r22 release];
            [r0 release];
    }
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

@end