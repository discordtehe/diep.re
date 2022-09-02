@implementation FIRAppAssociationRegistration

+(void *)registeredObjectWithHost:(void *)arg2 key:(void *)arg3 creationBlock:(void *)arg4 {
    r31 = r31 - 0x60;
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
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [arg4 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = objc_getAssociatedObject(r19, @selector(registeredObjectWithHost:key:creationBlock:));
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 == 0x0) {
            r23 = [[NSMutableDictionary alloc] init];
            objc_setAssociatedObject(r19, @selector(registeredObjectWithHost:key:creationBlock:), r23, 0x1);
    }
    r25 = [[r23 objectForKeyedSubscript:r21] retain];
    r0 = [NSValue valueWithPointer:r2];
    r29 = r29;
    r24 = [r0 retain];
    if (r25 != 0x0) {
            if ([r24 isEqual:r2] != 0x0) {
                    [NSException raise:@"Reentering registeredObjectWithHost:key:creationBlock: not allowed" format:@"host: %@ key: %@"];
            }
            r0 = r25;
    }
    else {
            [r23 setObject:r24 forKeyedSubscript:r21];
            r26 = [(*(r22 + 0x10))(r22) retain];
            [r23 setObject:r26 forKeyedSubscript:r21];
            r0 = r26;
    }
    r25 = [r0 retain];
    [r24 release];
    [r25 release];
    [r23 release];
    objc_sync_exit(r20);
    [r20 release];
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = [r25 autorelease];
    return r0;
}

@end