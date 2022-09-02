@implementation GADVideoPingMonitor

-(void *)initWithAd:(void *)arg2 notificationName:(void *)arg3 URLStrings:(void *)arg4 {
    r31 = r31 - 0x80;
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
    if (r22 != 0x0) {
            r23 = @selector(init);
            r0 = [r21 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_URLStrings));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r23);
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r22 + r24);
            *(r22 + r24) = r0;
            [r8 release];
            objc_initWeak(&stack[-88], r22);
            objc_copyWeak(&var_70 + 0x20, &stack[-88]);
            [r24 addObserverForName:r20 object:r19 queue:0x0 usingBlock:&var_70];
            objc_destroyWeak(&var_70 + 0x20);
            objc_destroyWeak(&stack[-88]);
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

+(void)addMonitorToAd:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e95930];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isEqual:r2];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:*0x100e959d8];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r23 = [[GADVideoPingMonitor alloc] initWithAd:r19 notificationName:*0x100e9c670 URLStrings:r21];
                    [r19 addMonitor:r23];
                    [r23 release];
            }
            r0 = [r20 objectForKeyedSubscript:*0x100e959c8];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    r24 = [[GADVideoPingMonitor alloc] initWithAd:r19 notificationName:*0x100e9c660 URLStrings:r23];
                    [r19 addMonitor:r24];
                    [r24 release];
            }
            r22 = [[r20 objectForKeyedSubscript:*0x100e959d0] retain];
            if (r22 != 0x0) {
                    r24 = [[GADVideoPingMonitor alloc] initWithAd:r19 notificationName:*0x100e9c668 URLStrings:r22];
                    [r19 addMonitor:r24];
                    [r24 release];
            }
            [r22 release];
            [r23 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)handleVideoEvents:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            r21 = [dispatch_get_global_queue(0x0, 0x0) retain];
            var_30 = [r19 retain];
            var_28 = [r20 retain];
            dispatch_async(r21, &var_50);
            [r21 release];
            [var_28 release];
            [var_30 release];
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_URLStrings, 0x0);
    return;
}

@end