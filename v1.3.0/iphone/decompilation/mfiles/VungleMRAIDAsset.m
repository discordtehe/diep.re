@implementation VungleMRAIDAsset

-(void *)remoteURL {
    r0 = *(self + 0x28);
    r0 = [r0 copy];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithURL:(void *)arg2 MRAIDAd:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[arg3 cacheKey] retain];
    r20 = [self initWithURL:r21 replacementKey:0x0 cacheKey:r19];
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)replacementKey {
    r0 = *(self + 0x30);
    r0 = [r0 copy];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithURL:(void *)arg2 replacementKey:(void *)arg3 cacheKey:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r8 = *(r22 + 0x20);
            *(r22 + 0x20) = r0;
            [r8 release];
            r0 = [r19 copy];
            r8 = *(r22 + 0x28);
            *(r22 + 0x28) = r0;
            [r8 release];
            r0 = [r20 copy];
            r8 = *(r22 + 0x30);
            *(r22 + 0x30) = r0;
            [r8 release];
            r0 = [r21 copy];
            r8 = *(r22 + 0x10);
            *(r22 + 0x10) = r0;
            [r8 release];
            *(r22 + 0x18) = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r22 = *(self + 0x20);
    r23 = [arg2 retain];
    [arg2 encodeObject:r22 forKey:@"URL"];
    [arg2 encodeObject:*(self + 0x28) forKey:@"Remote URL"];
    [arg2 encodeObject:*(self + 0x30) forKey:@"Replacement Key"];
    r22 = [[NSNumber numberWithUnsignedInteger:*(self + 0x18)] retain];
    [arg2 encodeObject:r22 forKey:@"Asset Type Key"];
    [r22 release];
    [arg2 encodeObject:*(self + 0x10) forKey:@"Campaign ID"];
    [r23 release];
    return;
}

-(bool)isEqual:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != r20) {
            [VungleMRAIDAsset class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r20 isEqualToMRAIDAsset:r19];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 decodeObjectForKey:@"URL"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x20);
            *(r20 + 0x20) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"Remote URL"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x28);
            *(r20 + 0x28) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"Replacement Key"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x30);
            *(r20 + 0x30) = r0;
            [r8 release];
            r0 = [r19 decodeObjectForKey:@"Asset Type Key"];
            r0 = [r0 retain];
            *(r20 + 0x18) = [r0 integerValue];
            [r0 release];
            r0 = [r19 decodeObjectForKey:@"Campaign ID"];
            r0 = [r0 retain];
            r8 = *(r20 + 0x10);
            *(r20 + 0x10) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)description {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self class];
    r0 = NSStringFromClass(r0);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    q0 = *(int128_t *)(r19 + 0x20);
    r8 = *(r19 + 0x30);
    r9 = *(int128_t *)(r19 + 0x10);
    r10 = *(int128_t *)(r19 + 0x18);
    if (r10 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r10 = @"Template";
            }
            else {
                    r10 = @"Cacheable";
            }
    }
    r19 = [[NSString stringWithFormat:r2] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(unsigned long long)hash {
    r0 = [self privateRemoteURL];
    r0 = [r0 retain];
    r20 = [r0 hash];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)data {
    r0 = *(self + 0x8);
    return r0;
}

-(bool)isEqualToMRAIDAsset:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r22 = [[r20 privateURL] retain];
    r0 = [r19 URL];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if ([r22 isEqual:r2] == 0x0) goto loc_1006313ec;

loc_10063130c:
    [r23 release];
    [r22 release];
    goto loc_10063131c;

loc_10063131c:
    r21 = @selector(isEqual:);
    r22 = [[r20 privateRemoteURL] retain];
    r0 = [r19 remoteURL];
    r29 = r29;
    r23 = [r0 retain];
    if (objc_msgSend(r22, r21) == 0x0) goto loc_100631438;

loc_100631370:
    [r23 release];
    [r22 release];
    goto loc_100631380;

loc_100631380:
    r21 = @selector(isEqual:);
    r22 = [[r20 privateReplacementKey] retain];
    r0 = [r19 replacementKey];
    r29 = r29;
    r23 = [r0 retain];
    if (objc_msgSend(r22, r21) == 0x0) goto loc_100631484;

loc_1006313d4:
    [r23 release];
    [r22 release];
    r20 = 0x1;
    goto loc_1006314b4;

loc_1006314b4:
    [r19 release];
    r0 = r20;
    return r0;

loc_100631484:
    r0 = [r20 privateReplacementKey];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_1006314d8;

loc_10063149c:
    [r0 release];
    [r23 release];
    [r22 release];
    goto loc_1006314b0;

loc_1006314b0:
    r20 = 0x0;
    goto loc_1006314b4;

loc_1006314d8:
    r0 = [r19 replacementKey];
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    [r22 release];
    if (r0 == 0x0) {
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    goto loc_1006314b4;

loc_100631438:
    r0 = [r20 privateRemoteURL];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) goto loc_10063149c;

loc_100631450:
    r0 = [r19 remoteURL];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    [r22 release];
    if (r0 != 0x0) goto loc_1006314b0;
    goto loc_100631380;

loc_1006313ec:
    r0 = [r20 privateURL];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) goto loc_10063149c;

loc_100631404:
    r0 = [r19 URL];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    [r22 release];
    if (r0 != 0x0) goto loc_1006314b0;
}

-(void)setData:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void)setCacheKey:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)cacheKey {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setType:(unsigned long long)arg2 {
    *(self + 0x18) = arg2;
    return;
}

-(unsigned long long)type {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)privateURL {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setPrivateURL:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void *)privateRemoteURL {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setPrivateRemoteURL:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void *)privateReplacementKey {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setPrivateReplacementKey:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

-(void *)URL {
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
    r19 = self;
    r0 = [self cacheKey];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 length];
    [r0 release];
    if (r22 == 0x0) goto loc_100632618;

loc_1006324d4:
    r22 = [[r19 cacheKey] retain];
    r20 = [[VNGPersistenceManager URLForAdKey:r22] retain];
    [r22 release];
    r0 = [r19 expectedLocalCacheURL];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) goto loc_100632608;

loc_10063253c:
    r23 = [[r21 lastPathComponent] retain];
    r22 = [[r20 URLByAppendingPathComponent:r23] retain];
    [r23 release];
    r23 = [[NSFileManager defaultManager] retain];
    r0 = [r22 path];
    r29 = r29;
    r24 = [r0 retain];
    r25 = [r23 fileExistsAtPath:r24 isDirectory:0x0];
    [r24 release];
    [r23 release];
    if ((r25 & 0x1) == 0x0) goto loc_100632600;

loc_1006325ec:
    [r21 release];
    [r20 release];
    goto loc_100632634;

loc_100632634:
    r0 = [r22 autorelease];
    return r0;

loc_100632600:
    [r22 release];
    goto loc_100632608;

loc_100632608:
    [r21 release];
    [r20 release];
    goto loc_100632618;

loc_100632618:
    r22 = [[r19 remoteURL] retain];
    goto loc_100632634;
}

-(bool)storeInCacheWithError:(void * *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r0 = [self expectedLocalCacheURL];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [r19 copy];
            [r21 setPrivateURL:r20];
            [r20 release];
            r21 = 0x1;
    }
    else {
            if (r20 != 0x0) {
                    r0 = objc_alloc();
                    r0 = [r0 initWithDomain:@"com.vungle.mraid.models.asset" code:0x0 userInfo:0x0];
                    r0 = [r0 autorelease];
                    r21 = 0x0;
                    *r20 = r0;
            }
            else {
                    r21 = 0x0;
            }
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)expectedLocalCacheURL {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self cacheKey];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 length] != 0x0) {
            r0 = [r19 remoteURL];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r22 release];
            if (r0 != 0x0) {
                    r21 = [[r19 cacheKey] retain];
                    r22 = [[VNGPersistenceManager URLForAdKey:r21] retain];
                    [r21 release];
                    r0 = [r19 remoteURL];
                    r0 = [r0 retain];
                    r20 = [[r0 lastPathComponent] retain];
                    r21 = [[r22 URLByAppendingPathComponent:r20] retain];
                    [r22 release];
                    [r20 release];
                    [r0 release];
                    r0 = [r21 absoluteURL];
                    r0 = [r0 retain];
                    r19 = [r0 copy];
                    [r0 release];
                    [r21 release];
            }
            else {
                    r19 = 0x0;
            }
    }
    else {
            [r22 release];
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(bool)verifyLocalAssetWithError:(void * *)arg2 {
    r31 = r31 - 0x80;
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
    r19 = arg2;
    r20 = self;
    r23 = [[NSFileManager defaultManager] retain];
    r0 = [r20 URL];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 path];
    r29 = &saved_fp;
    r25 = [r0 retain];
    r26 = [r23 fileExistsAtPath:r25];
    [r25 release];
    [r24 release];
    [r23 release];
    if ((r26 & 0x1) != 0x0) {
            r22 = objc_alloc();
            r0 = [r20 URL];
            r29 = r29;
            r23 = [r0 retain];
            r20 = [r22 initWithContentsOfURL:r23 options:0x0 error:&var_60];
            r21 = [var_60 retain];
            [r23 release];
            if (r20 != 0x0) {
                    r19 = 0x1;
            }
            else {
                    if (r19 != 0x0) {
                            r22 = objc_alloc();
                            r23 = [[r21 userInfo] retain];
                            *r19 = [[r22 initWithDomain:@"com.vungle.mraid.models.asset" code:0x1 userInfo:r23] autorelease];
                            [r23 release];
                            r19 = 0x0;
                    }
            }
            [r20 release];
            [r21 release];
    }
    else {
            if (r19 != 0x0) {
                    r0 = [r20 URL];
                    r0 = [r0 retain];
                    r20 = r0;
                    r21 = [[r0 path] retain];
                    r22 = [[NSString stringWithFormat:@"The file does not exist at %@"] retain];
                    r0 = [NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1];
                    r23 = [r0 retain];
                    [r22 release];
                    [r21 release];
                    [r20 release];
                    *r19 = [[objc_alloc() initWithDomain:@"com.vungle.mraid.models.asset" code:0x2 userInfo:r23] autorelease];
                    [r23 release];
                    r19 = 0x0;
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)isCached {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self URL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[NSFileManager defaultManager] retain];
            r0 = [r19 URL];
            r0 = [r0 retain];
            r20 = [[r0 path] retain];
            r22 = [r21 fileExistsAtPath:r20];
            [r20 release];
            [r0 release];
            [r21 release];
            r0 = r22;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

@end