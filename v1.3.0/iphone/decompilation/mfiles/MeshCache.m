@implementation MeshCache

+(void *)sharedMeshCache {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011d9da0;
    if (r0 == 0x0) {
            r0 = [MeshCache alloc];
            r0 = [r0 init];
            *0x1011d9da0 = r0;
    }
    return r0;
}

+(bool)isMeshCacheInitialized {
    r0 = self;
    if (*qword_1011d9da0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void)releaseSharedMeshCache {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011d9da0 != 0x0) {
            [*0x1011d9da0 release];
            *0x1011d9da0 = 0x0;
    }
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSMutableDictionary dictionaryWithCapacity:0xa];
            *(r19 + 0x8) = r0;
            [r0 retain];
    }
    r0 = r19;
    return r0;
}

-(void *)getMesh:(void *)arg2 {
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
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
    [[&var_20 super] dealloc];
    return;
}

-(bool)storeMesh:(void *)arg2 meshID:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    if ([*(self + 0x8) objectForKey:r2] != 0x0) {
            r0 = 0x0;
    }
    else {
            [*(r21 + 0x8) setObject:r2 forKey:r3];
            r0 = 0x1;
    }
    return r0;
}

-(void)clean {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    return;
}

@end