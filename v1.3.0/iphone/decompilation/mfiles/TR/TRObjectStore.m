@implementation TRObjectStore

+(void *)retrieveObjectForKey:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    [r20 release];
    if (r19 != 0x0) {
            r20 = [[NSKeyedUnarchiver unarchiveObjectWithData:r19] retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)removeObjectForAllKeys {
    [TRObjectStore removeObjectForKey:*0x100e7d6c0];
    [TRObjectStore removeObjectForKey:*0x100e7d6c8];
    [TRObjectStore removeObjectForKey:*0x100e7d6d0];
    [TRObjectStore removeObjectForKey:*0x100e7d6d8];
    [TRObjectStore removeObjectForKey:*0x100e7d6e8];
    [TRObjectStore removeObjectForKey:*0x100e7d6f0];
    [TRObjectStore removeObjectForKey:*0x100e7d6f8];
    [TRObjectStore removeObjectForKey:*0x100e7d700];
    [TRObjectStore removeObjectForKey:*0x100e7d708];
    return;
}

+(void)storeObject:(void *)arg2 forKey:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [[NSKeyedArchiver archivedDataWithRootObject:r20] retain];
    [r20 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r21 forKey:r19];
    [r19 release];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r19 release];
    [r21 release];
    return;
}

+(void)removeObjectForKey:(void *)arg2 {
    [arg2 retain];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r2];
    [r21 release];
    [r19 release];
    return;
}

@end