@implementation ISMutableOrderedDictionary

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [NSMutableArray new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_keys));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableDictionary new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_dictionary));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)objectForKey:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r2 != 0x0) {
            r21 = [r2 retain];
            r0 = [r19 dictionary];
            r0 = [r0 retain];
            r19 = [[r0 objectForKeyedSubscript:r21] retain];
            [r21 release];
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)setObject:(void *)arg2 forKey:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && r20 != 0x0) {
            r0 = [r21 keys];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 indexOfObject:r20];
            [r0 release];
            if (r24 == 0x7fffffffffffffff) {
                    r0 = [r21 keys];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 addObject:r2];
                    [r22 release];
            }
            r0 = [r21 dictionary];
            r0 = [r0 retain];
            [r0 setObject:r2 forKey:r3];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)allKeys {
    r0 = [self keys];
    r0 = [r0 retain];
    r20 = [r0 copy];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)keys {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_keys)), 0x1);
    return r0;
}

-(void)setKeys:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setDictionary:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)dictionary {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_dictionary)), 0x1);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_dictionary, 0x0);
    objc_storeStrong((int64_t *)&self->_keys, 0x0);
    return;
}

@end