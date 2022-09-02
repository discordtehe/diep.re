@implementation MPNativeCache

+(void *)sharedCache {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d82d8 != -0x1) {
            dispatch_once(0x1011d82d8, &var_28);
    }
    r0 = *0x1011d82e0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:**_UIApplicationDidReceiveMemoryWarningNotification object:0x0];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)init {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = @selector(init);
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r20);
            r8 = *(r19 + 0x10);
            *(r19 + 0x10) = r0;
            [r8 release];
            [*(r19 + 0x10) setDelegate:r19];
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r20);
            r8 = *(r19 + 0x18);
            *(r19 + 0x18) = r0;
            [r8 release];
            *(int32_t *)(r19 + 0x8) = 0x1;
            r20 = [[NSNotificationCenter defaultCenter] retain];
            [[UIApplication sharedApplication] retain];
            [r20 addObserver:r2 selector:r3 name:r4 object:r5];
            [r23 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)setInMemoryCacheEnabled:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (arg2 != 0x0) {
            [r19 setCacheMethod:r2];
    }
    else {
            [r19 setCacheMethod:r2];
            r0 = [r19 memoryCache];
            r0 = [r0 retain];
            [r0 removeAllObjects];
            [r19 release];
    }
    return;
}

-(bool)cachedDataExistsForKey:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [self cachedDataExistsForKey:r21 withCacheMethod:[self cacheMethod]];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void *)retrieveDataForKey:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self retrieveDataForKey:r21 withCacheMethod:[self cacheMethod]] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)storeData:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [self storeData:r21 forKey:r19 withCacheMethod:[self cacheMethod]];
    [r19 release];
    [r21 release];
    return;
}

-(void)removeAllDataFromCache {
    [self removeAllDataFromMemory];
    [self removeAllDataFromDisk];
    return;
}

-(bool)cachedDataExistsForKey:(void *)arg2 withCacheMethod:(int)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ((arg3 & 0x1) != 0x0) {
            r0 = [r20 memoryCache];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r21 release];
            if (r0 != 0x0) {
                    r20 = 0x1;
            }
            else {
                    r0 = [r20 diskCache];
                    r0 = [r0 retain];
                    r20 = [r0 cachedDataExistsForKey:r19];
                    [r0 release];
            }
    }
    else {
            r0 = [r20 diskCache];
            r0 = [r0 retain];
            r20 = [r0 cachedDataExistsForKey:r19];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)storeData:(void *)arg2 forKey:(void *)arg3 withCacheMethod:(int)arg4 {
    r31 = r31 - 0x70;
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
    r29 = &saved_fp;
    r22 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            if ((r22 & 0x1) != 0x0) {
                    r0 = [r21 memoryCache];
                    r0 = [r0 retain];
                    [r0 setObject:r19 forKey:r20];
                    [r0 release];
                    r26 = @class(MPLogging);
                    r0 = [MPLogEvent eventWithMessage:[[NSString stringWithFormat:@"STORED IN MEMORY: %@"] retain] level:0x14];
                    r29 = r29;
                    [r0 retain];
                    [r21 class];
                    [r26 logEvent:r2 source:r3 fromClass:r4];
                    [r28 release];
                    [r27 release];
            }
            r0 = [r21 diskCache];
            r0 = [r0 retain];
            [r0 storeData:r19 forKey:r20];
            [r0 release];
            r26 = @class(MPLogging);
            [[MPLogEvent eventWithMessage:[[NSString stringWithFormat:@"STORED ON DISK: %@"] retain] level:0x14] retain];
            [r21 class];
            [r26 logEvent:r2 source:r3 fromClass:r4];
            [r23 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)removeAllDataFromMemory {
    r0 = [self memoryCache];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r19 release];
    return;
}

-(void)removeAllDataFromDisk {
    r0 = [self diskCache];
    r0 = [r0 retain];
    [r0 removeAllCachedFiles];
    [r0 release];
    return;
}

-(void *)retrieveDataForKey:(void *)arg2 withCacheMethod:(int)arg3 {
    r31 = r31 - 0x70;
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
    r29 = &saved_fp;
    r22 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if ((r22 & 0x1) == 0x0) goto loc_100490118;

loc_1004900c8:
    r0 = [r20 memoryCache];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r21 = [r0 retain];
    [r23 release];
    if (r21 == 0x0) goto loc_100490118;

loc_10049010c:
    r2 = @"RETRIEVE FROM MEMORY: %@";
    goto loc_1004902e4;

loc_1004902e4:
    r24 = [[NSString stringWithFormat:r2] retain];
    r23 = [[MPLogEvent eventWithMessage:r24 level:0x14] retain];
    [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
    [r23 release];
    [r24 release];
    goto loc_100490374;

loc_100490374:
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_100490118:
    r0 = [r20 diskCache];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 retrieveDataForKey:r19];
    r29 = r29;
    r21 = [r0 retain];
    [r22 release];
    if (r21 != 0x0) {
            asm { ccmp       w23, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            r27 = [[NSString stringWithFormat:@"RETRIEVE FROM DISK: %@"] retain];
            r28 = [[MPLogEvent eventWithMessage:r27 level:0x14] retain];
            [MPLogging logEvent:r28 source:0x0 fromClass:[r20 class]];
            [r28 release];
            [r27 release];
            r0 = [r20 memoryCache];
            r0 = [r0 retain];
            [r0 setObject:r21 forKey:r19];
            [r0 release];
            r22 = [[NSString stringWithFormat:@"STORED IN MEMORY: %@"] retain];
            r0 = [MPLogEvent eventWithMessage:r22 level:0x14];
            r29 = r29;
            r23 = [r0 retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
            [r23 release];
            [r22 release];
    }
    if (r21 != 0x0) goto loc_100490374;

loc_1004902dc:
    r2 = @"RETRIEVE FAILED: %@";
    goto loc_1004902e4;
}

-(void *)memoryCache {
    r0 = *(self + 0x10);
    return r0;
}

-(void)didReceiveMemoryWarning:(void *)arg2 {
    r0 = [self memoryCache];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r19 release];
    return;
}

-(void)cache:(void *)arg2 willEvictObject:(void *)arg3 {
    r22 = [[NSString stringWithFormat:@"Evicting Object"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x14] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    return;
}

-(void)setMemoryCache:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void)setDiskCache:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)diskCache {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setCacheMethod:(int)arg2 {
    *(int32_t *)(self + 0x8) = arg2;
    return;
}

-(int)cacheMethod {
    r0 = *(int32_t *)(self + 0x8);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end