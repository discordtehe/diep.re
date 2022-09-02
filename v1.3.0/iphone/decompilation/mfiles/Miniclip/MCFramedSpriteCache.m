@implementation MCFramedSpriteCache

+(void *)sharedFramedSpriteCache {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = self;
    r0 = *0x1011d5028;
    if (r0 == 0x0) {
            r0 = [[&var_20 super] allocWithZone:0x0];
            r0 = [r0 init];
            *0x1011d5028 = r0;
    }
    return r0;
}

+(void)clearCache {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011d5028 != 0x0) {
            [*0x1011d5028 release];
            *0x1011d5028 = 0x0;
    }
    return;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r19 = @selector(init);
            *(r20 + 0x8) = [[NSMutableDictionary alloc] initWithCapacity:0xa];
            *(r20 + 0x10) = objc_msgSend([NSMutableDictionary alloc], r19);
            *(r20 + 0x18) = objc_msgSend([NSMutableDictionary alloc], r19);
    }
    r0 = r20;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    r0 = *(r19 + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)fileNameInCachedFiles:(void *)arg2 {
    r0 = *(self + 0x10);
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void)updateCachedFilesForFileName:(void *)arg2 withHash:(void *)arg3 {
    [*(self + 0x10) setObject:r2 forKey:r3];
    return;
}

-(void *)fileNameInCachedValues:(void *)arg2 {
    r0 = *(self + 0x18);
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void)updateCachedValuesForFileName:(void *)arg2 withValues:(void *)arg3 {
    [*(self + 0x18) setObject:r2 forKey:r3];
    return;
}

-(void *)processedWithHash:(void *)arg2 {
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void)addProcessedValues:(void *)arg2 withHash:(void *)arg3 {
    [*(self + 0x8) setObject:r2 forKey:r3];
    return;
}

@end