@implementation USRVStorageManager

+(bool)init {
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
    r19 = self;
    if (*0x1011d1b80 == 0x0) {
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 init];
            r8 = *0x1011d1b80;
            *0x1011d1b80 = r0;
            [r8 release];
    }
    r20 = [[USRVSdkProperties getCacheDirectory] retain];
    r21 = [[USRVSdkProperties getLocalStorageFilePrefix] retain];
    r24 = [[NSString stringWithFormat:@"%@/%@%@"] retain];
    [r19 addStorageLocation:r24 forStorageType:0x1];
    [r24 release];
    r22 = [[NSString stringWithFormat:@"%@/%@%@"] retain];
    [r19 addStorageLocation:r22 forStorageType:0x2];
    [r22 release];
    if ([USRVStorageManager setupStorage:r2] != 0x0) {
            r19 = [USRVStorageManager setupStorage:r2];
    }
    else {
            r19 = 0x0;
    }
    [r21 release];
    [r20 release];
    r0 = r19;
    return r0;
}

+(void)initStorage:(long long)arg2 {
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
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    if (*0x1011d1b80 == 0x0) {
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 init];
            r8 = *0x1011d1b80;
            *0x1011d1b80 = r0;
            [r8 release];
    }
    if ([r20 hasStorage:r19] == 0x0) goto loc_1000e356c;

loc_1000e352c:
    r19 = [[USRVStorageManager getStorage:r19] retain];
    if (r19 != 0x0) {
            [r19 initStorage];
    }
    r0 = r19;
    goto loc_1000e36a4;

loc_1000e36a4:
    [r0 release];
    return;

.l1:
    return;

loc_1000e356c:
    r22 = *0x1011d1b88;
    r23 = [[NSNumber numberWithInt:r19] retain];
    r0 = [r22 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 == 0x0) goto .l1;

loc_1000e35d0:
    r21 = @selector(objectForKey:);
    r22 = [USRVStorage alloc];
    r23 = *0x1011d1b88;
    r24 = [[NSNumber numberWithInt:r19] retain];
    r21 = [objc_msgSend(r23, r21) retain];
    r22 = [r22 initWithLocation:r21 type:r19];
    [r21 release];
    [r24 release];
    [r22 initStorage];
    r21 = *0x1011d1b80;
    [[NSNumber numberWithInt:r19] retain];
    [r21 setObject:r2 forKey:r3];
    [r19 release];
    r0 = r22;
    goto loc_1000e36a4;
}

+(bool)setupStorage:(long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    if (([USRVStorageManager hasStorage:r2] & 0x1) != 0x0) goto loc_1000e3760;

loc_1000e36fc:
    [USRVStorageManager initStorage:r19];
    r19 = [[USRVStorageManager getStorage:r19] retain];
    if (r19 == 0x0) goto loc_1000e3770;

loc_1000e3734:
    if (([r19 storageFileExists] & 0x1) == 0x0) {
            [r19 writeStorage];
    }
    [r19 release];
    goto loc_1000e3760;

loc_1000e3760:
    r0 = 0x1;
    return r0;

loc_1000e3770:
    [r19 release];
    r0 = 0x0;
    return r0;
}

+(void)addStorageLocation:(void *)arg2 forStorageType:(long long)arg3 {
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
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    if (*0x1011d1b88 == 0x0) {
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 init];
            r8 = *0x1011d1b88;
            *0x1011d1b88 = r0;
            [r8 release];
    }
    r22 = *0x1011d1b88;
    r23 = [[NSNumber numberWithInt:r20] retain];
    r0 = [r22 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 == 0x0) {
            r22 = *0x1011d1b88;
            [[NSNumber numberWithInt:r20] retain];
            [r22 setObject:r2 forKey:r3];
            [r20 release];
    }
    [r19 release];
    return;
}

+(void)removeStorage:(long long)arg2 {
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
    r19 = arg2;
    r22 = *0x1011d1b88;
    r23 = [[NSNumber numberWithInt:r2] retain];
    r0 = [r22 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r22 = *0x1011d1b88;
            r0 = [NSNumber numberWithInt:r19];
            r29 = r29;
            [r0 retain];
            [r22 removeObjectForKey:r2];
            [r23 release];
    }
    r21 = @selector(objectForKey:);
    r22 = *0x1011d1b80;
    r23 = [[NSNumber numberWithInt:r19] retain];
    r0 = objc_msgSend(r22, r21);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 != 0x0) {
            r21 = *0x1011d1b80;
            [[NSNumber numberWithInt:r19] retain];
            [r21 removeObjectForKey:r2];
            [r19 release];
    }
    return;
}

+(void *)getStorage:(long long)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = *0x1011d1b80;
    if (r19 != 0x0) {
            r19 = *0x1011d1b80;
            r20 = [[NSNumber numberWithInt:r2] retain];
            r19 = [[r19 objectForKey:r2] retain];
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

+(bool)hasStorage:(long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = *0x1011d1b80;
    r20 = [[NSNumber numberWithInt:arg2] retain];
    r0 = [r19 objectForKey:r2];
    r0 = [r0 retain];
    r19 = r0;
    [r0 release];
    r0 = [r20 release];
    if (r19 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

@end