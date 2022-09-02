@implementation MPMemoryCache

+(void *)sharedInstance {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011d8398 != -0x1) {
            dispatch_once(0x1011d8398, 0x100e7ed58);
    }
    r0 = *0x1011d83a0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
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
            r20 = @selector(init);
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r20);
            r8 = *(r19 + 0x8);
            *(r19 + 0x8) = r0;
            [r8 release];
            [*(r19 + 0x8) setDelegate:r19];
    }
    r0 = r19;
    return r0;
}

-(void *)dataForKey:(void *)arg2 {
    r2 = arg2;
    r0 = self;
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
    r29 = &saved_fp;
    if (r2 != 0x0) {
            r19 = [r2 retain];
            r25 = [NSStringFromClass([r0 class]) retain];
            r23 = [[NSString stringWithFormat:@"%@ retrieved data for key %@"] retain];
            r22 = [[MPLogEvent eventWithMessage:r23 level:0x14] retain];
            [MPLogging logEvent:r22 source:0x0 fromClass:[r0 class]];
            [r22 release];
            [r23 release];
            [r25 release];
            r0 = [r0 memcache];
            r0 = [r0 retain];
            r20 = [[r0 objectForKey:r2] retain];
            [r19 release];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void)setData:(void *)arg2 forKey:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r21 class];
            r0 = NSStringFromClass(r0);
            r29 = r29;
            r22 = [r0 retain];
            if (r19 != 0x0) {
                    r26 = [[NSString stringWithFormat:r2] retain];
                    r25 = [[MPLogEvent eventWithMessage:r26 level:0x14] retain];
                    [MPLogging logEvent:r25 source:0x0 fromClass:[r21 class]];
                    [r25 release];
                    [r26 release];
                    [r22 release];
                    r0 = [r21 memcache];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 setObject:r2 forKey:r3];
            }
            else {
                    r26 = [[NSString stringWithFormat:r2] retain];
                    r25 = [[MPLogEvent eventWithMessage:r26 level:0x14] retain];
                    [MPLogging logEvent:r25 source:0x0 fromClass:[r21 class]];
                    [r25 release];
                    [r26 release];
                    [r22 release];
                    r0 = [r21 memcache];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 removeObjectForKey:r2];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)cache:(void *)arg2 willEvictObject:(void *)arg3 {
    r25 = [arg3 retain];
    r21 = [NSStringFromClass([self class]) retain];
    r24 = [[NSString stringWithFormat:@"%@ evicted %@"] retain];
    [r25 release];
    r23 = [[MPLogEvent eventWithMessage:r24 level:0x14] retain];
    [MPLogging logEvent:r23 source:0x0 fromClass:[self class]];
    [r23 release];
    [r24 release];
    [r21 release];
    return;
}

-(void *)memcache {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setMemcache:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

-(void *)imageForKey:(void *)arg2 {
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 dataForKey:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [objc_alloc() initWithData:r20];
    }
    else {
            r26 = [NSStringFromClass([r21 class]) retain];
            r24 = [[NSString stringWithFormat:@"%@ found no image data for key %@"] retain];
            r23 = [[MPLogEvent eventWithMessage:r24 level:0x14] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r21 class]];
            [r23 release];
            [r24 release];
            [r26 release];
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

@end