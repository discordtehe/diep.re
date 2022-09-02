@implementation MPEngineInfo

-(void *)initWithName:(void *)arg2 version:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r23 = arg2;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [r22 retain];
    if ([r19 length] != 0x0 && [r20 length] != 0x0) {
            r0 = [[&var_40 super] init];
            r21 = r0;
            if (r0 != 0x0) {
                    objc_storeStrong(r21 + 0x8, r23);
                    objc_storeStrong(r21 + 0x10, r22);
            }
            r0 = [r21 retain];
            r21 = r0;
            r22 = r0;
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;
}

+(void *)named:(void *)arg2 version:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [objc_alloc() initWithName:r20 version:r19];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 retain];
    r20 = [[r0 decodeObjectForKey:*0x100e7f4a0] retain];
    r21 = [[r0 decodeObjectForKey:*0x100e7f4a8] retain];
    [r0 release];
    if ([r20 length] != 0x0 && [r21 length] != 0x0) {
            r0 = [r19 initWithName:r20 version:r21];
            r0 = [r0 retain];
            r19 = r0;
            r22 = r0;
    }
    else {
            r22 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
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
    r0 = [r20 name];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 length];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r20 name];
            r29 = r29;
            [r0 retain];
            [r19 encodeObject:r2 forKey:r3];
            [r22 release];
    }
    r21 = @selector(length);
    r0 = [r20 version];
    r29 = r29;
    r0 = [r0 retain];
    r21 = objc_msgSend(r0, r21);
    [r0 release];
    if (r21 != 0x0) {
            [[r20 version] retain];
            [r19 encodeObject:r2 forKey:r3];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void *)name {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x0);
    return r0;
}

-(void *)version {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end