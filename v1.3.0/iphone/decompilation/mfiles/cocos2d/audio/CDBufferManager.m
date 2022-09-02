@implementation CDBufferManager

-(void *)initWithEngine:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = @selector(init);
            *(r19 + 0x18) = r21;
            *(r19 + 0x8) = [[NSMutableDictionary alloc] initWithCapacity:0x40];
            *(r19 + 0x10) = objc_msgSend([NSMutableArray alloc], r20);
            *(int32_t *)(r19 + 0x20) = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [*(self + 0x10) release];
    [[&var_20 super] dealloc];
    return;
}

-(int)bufferForFile:(void *)arg2 create:(bool)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = arg2;
    r20 = self;
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    if (r0 == 0x0) goto loc_10033569c;

loc_100335680:
    r1 = @selector(intValue);
    goto loc_100335688;

loc_100335688:
    r0 = objc_msgSend(r0, r1);
    return r0;

loc_10033569c:
    if (r21 == 0x0) goto loc_1003357a0;

loc_1003356a0:
    if ([*(r20 + 0x10) count] != 0x0) {
            r21 = [[[*(r20 + 0x10) lastObject] retain] autorelease];
            [*(r20 + 0x10) removeLastObject];
    }
    else {
            r0 = [NSNumber alloc];
            r0 = [r0 initWithInt:*(int32_t *)(r20 + 0x20)];
            r21 = r0;
            [r0 autorelease];
            *(int32_t *)(r20 + 0x20) = *(int32_t *)(r20 + 0x20) + 0x1;
    }
    if ([*(r20 + 0x18) loadBuffer:[r21 intValue] filePath:r19] == 0x0) goto loc_10033578c;

loc_100335768:
    [*(r20 + 0x8) setObject:r2 forKey:r3];
    r0 = r21;
    r1 = @selector(intValue);
    goto loc_100335688;

loc_10033578c:
    [*(r20 + 0x10) addObject:r2];
    goto loc_1003357a0;

loc_1003357a0:
    r0 = 0xffffffffffffffff;
    return r0;
}

-(void)releaseBufferForFile:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = self;
    r0 = [self bufferForFile:r2 create:0x0];
    if (r0 != -0x1) {
            r20 = r0;
            [*(r19 + 0x18) unloadBuffer:r20];
            [*(r19 + 0x8) removeObjectForKey:r21];
            r0 = [NSNumber alloc];
            r0 = [r0 initWithInt:r20];
            [r0 autorelease];
            [*(r19 + 0x10) addObject:r2];
    }
    return;
}

@end