@implementation FBAdConcurrentArray

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSMutableArray array];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_storage));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
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
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 == 0x0) goto loc_100a2b814;

loc_100a2b7cc:
    r0 = [NSMutableArray alloc];
    r0 = [r0 initWithCoder:r19];
    r21 = r0;
    if (r0 == 0x0) goto loc_100a2b824;

loc_100a2b7f8:
    objc_storeStrong((int64_t *)&r20->_storage, r21);
    [r21 release];
    goto loc_100a2b814;

loc_100a2b814:
    r21 = [r20 retain];
    goto loc_100a2b82c;

loc_100a2b82c:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_100a2b824:
    [r21 release];
    goto loc_100a2b82c;
}

-(void *)initWithCapacity:(unsigned long long)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [NSMutableArray alloc];
            r0 = [r0 initWithCapacity:r19];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_storage));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    r0 = r20;
    return r0;
}

-(unsigned long long)count {
    std::__1::recursive_mutex::lock();
    r0 = [self storage];
    r0 = [r0 retain];
    [r0 count];
    [r0 release];
    std::__1::recursive_mutex::unlock();
    r0 = r21;
    return r0;
}

-(unsigned long long)countByEnumeratingWithState:(union ? *)arg2 objects:(void * *)arg3 count:(unsigned long long)arg4 {
    std::__1::recursive_mutex::lock();
    r0 = [self storage];
    r0 = [r0 retain];
    [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    [r0 release];
    std::__1::recursive_mutex::unlock();
    r0 = r20;
    return r0;
}

-(void *)objectAtIndex:(unsigned long long)arg2 {
    std::__1::recursive_mutex::lock();
    r0 = [self storage];
    r0 = [r0 retain];
    [[r0 objectAtIndexedSubscript:arg2] retain];
    [r0 release];
    std::__1::recursive_mutex::unlock();
    r0 = [r20 autorelease];
    return r0;
}

-(void)addObject:(void *)arg2 {
    [arg2 retain];
    std::__1::recursive_mutex::lock();
    r0 = [self storage];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r21 release];
    std::__1::recursive_mutex::unlock();
    [r19 release];
    return;
}

-(void)insertObject:(void *)arg2 atIndex:(unsigned long long)arg3 {
    [arg2 retain];
    std::__1::recursive_mutex::lock();
    r0 = [self storage];
    r0 = [r0 retain];
    [r0 insertObject:r19 atIndex:arg3];
    [r0 release];
    std::__1::recursive_mutex::unlock();
    [r19 release];
    return;
}

-(void)removeLastObject {
    std::__1::recursive_mutex::lock();
    r0 = [self storage];
    r0 = [r0 retain];
    [r0 removeLastObject];
    [r0 release];
    std::__1::recursive_mutex::unlock();
    return;
}

-(void)removeObjectAtIndex:(unsigned long long)arg2 {
    std::__1::recursive_mutex::lock();
    r0 = [self storage];
    r0 = [r0 retain];
    [r0 removeObjectAtIndex:arg2];
    [r0 release];
    std::__1::recursive_mutex::unlock();
    return;
}

-(void)removeObjectIdenticalTo:(void *)arg2 {
    [arg2 retain];
    std::__1::recursive_mutex::lock();
    r0 = [self storage];
    r0 = [r0 retain];
    [r0 removeObjectIdenticalTo:r19];
    [r0 release];
    std::__1::recursive_mutex::unlock();
    [r19 release];
    return;
}

-(void)removeObject:(void *)arg2 {
    [arg2 retain];
    std::__1::recursive_mutex::lock();
    r0 = [self storage];
    r0 = [r0 retain];
    [r0 removeObject:r19];
    [r0 release];
    std::__1::recursive_mutex::unlock();
    [r19 release];
    return;
}

-(void)replaceObjectAtIndex:(unsigned long long)arg2 withObject:(void *)arg3 {
    [arg3 retain];
    std::__1::recursive_mutex::lock();
    r0 = [self storage];
    r0 = [r0 retain];
    [r0 setObject:r19 atIndexedSubscript:arg2];
    [r0 release];
    std::__1::recursive_mutex::unlock();
    [r19 release];
    return;
}

-(void)removeAllObjects {
    std::__1::recursive_mutex::lock();
    r0 = [self storage];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r20 release];
    std::__1::recursive_mutex::unlock();
    return;
}

-(void *)objectAtIndexedSubscript:(unsigned long long)arg2 {
    std::__1::recursive_mutex::lock();
    r0 = [self storage];
    r0 = [r0 retain];
    [[r0 objectAtIndexedSubscript:arg2] retain];
    [r0 release];
    std::__1::recursive_mutex::unlock();
    r0 = [r20 autorelease];
    return r0;
}

-(void *)nonConcurrentCopy {
    std::__1::recursive_mutex::lock();
    r0 = [self storage];
    r0 = [r0 retain];
    [r0 copy];
    [r0 release];
    std::__1::recursive_mutex::unlock();
    r0 = [r21 autorelease];
    return r0;
}

-(void)setObject:(void *)arg2 atIndexedSubscript:(unsigned long long)arg3 {
    [arg2 retain];
    std::__1::recursive_mutex::lock();
    r0 = [self storage];
    r0 = [r0 retain];
    [r0 setObject:r19 atIndexedSubscript:arg3];
    [r0 release];
    std::__1::recursive_mutex::unlock();
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_storage, 0x0);
    std::__1::recursive_mutex::~recursive_mutex();
    return;
}

-(void *).cxx_construct {
    std::__1::recursive_mutex::recursive_mutex();
    r0 = self;
    return r0;
}

-(void)setStorage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_storage, arg2);
    return;
}

-(void *)storage {
    r0 = self->_storage;
    return r0;
}

+(void *)arrayWithCapacity:(unsigned long long)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithCapacity:arg2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)array {
    r0 = [self new];
    r0 = [r0 autorelease];
    return r0;
}

@end