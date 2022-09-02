@implementation ISDefaultEventStorageHelper

-(void)saveEvents:(void *)arg2 forKey:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            [r21 retain];
            r0 = [r20 storage];
            r0 = [r0 retain];
            [r0 setObject:r2 forKey:r3];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void *)initWithIdentifier:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [ISKeyValueStorageProvider getKeyValueStorageForIdentifier:r19];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_storage));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)loadEventsForKey:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self storage];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r2] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)clearEventsStorageForKey:(void *)arg2 {
    [arg2 retain];
    r0 = [self storage];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r2];
    [r21 release];
    [r19 release];
    return;
}

-(void *)storage {
    r0 = self->_storage;
    return r0;
}

-(void)saveValue:(void *)arg2 forKey:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r0 = [self storage];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(void *)getValueForKey:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self storage];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r21] retain];
    [r21 release];
    r21 = [r20 mutableCopy];
    [r20 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)setStorage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_storage, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_storage, 0x0);
    return;
}

@end