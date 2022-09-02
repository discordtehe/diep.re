@implementation GADContentQueue

-(void *)initWithQueueSize:(long long)arg2 {
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if (r19 != 0x0) {
            r0 = [[&var_30 super] init];
            r20 = r0;
            if (r20 != 0x0) {
                    r21 = @selector(init);
                    r0 = [NSMutableDictionary alloc];
                    r0 = objc_msgSend(r0, r21);
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_contents));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [NSMutableArray alloc];
                    r0 = objc_msgSend(r0, r21);
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_sequenceNumbers));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r20->_size = r19 & !(r19 / 0xffffffff80000000);
            }
            r0 = [r20 retain];
            r19 = r0;
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)contentWithHighestScore {
    r31 = r31 - 0xa0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_contents));
    if ([*(r19 + r20) count] != 0x0) {
            [*(r19 + r20) enumerateKeysAndObjectsUsingBlock:&var_90];
            r19 = [*((r29 - 0x40) + 0x28) retain];
            _Block_object_dispose(&var_60, 0x8);
            _Block_object_dispose(r29 - 0x40, 0x8);
            [0x0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)deduplicate:(void *)arg2 {
    r31 = r31 - 0x70;
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
    if (r19 != 0x0) {
            r21 = [[NSMutableArray alloc] init];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_contents));
            r22 = *(r20 + r23);
            var_40 = [r19 retain];
            r21 = [r21 retain];
            var_38 = r21;
            [r22 enumerateKeysAndObjectsUsingBlock:&var_60];
            if ([r21 count] != 0x0) {
                    [*(r20 + r23) removeObjectsForKeys:r21];
                    [r20->_sequenceNumbers removeObjectsInArray:r21];
            }
            [var_38 release];
            [var_40 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)enqueueContent:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_size));
            if (*(r20 + r22) != 0x0) {
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_contents));
                    r0 = *(r20 + r23);
                    r0 = [r0 count];
                    r8 = *(r20 + r22);
                    r24 = sign_extend_64(*(int32_t *)ivar_offset(_sequenceNumbers));
                    if (r0 >= r8 && [*(r20 + r24) count] != 0x0) {
                            r21 = *(r20 + r23);
                            r0 = *(r20 + r24);
                            r0 = [r0 firstObject];
                            r29 = r29;
                            sub_1008220c0(r21, [r0 retain]);
                            [r22 release];
                            [*(r20 + r24) removeObjectAtIndex:0x0];
                    }
                    sub_100822058(*(r20 + r23), [[NSNumber numberWithLong:[r19 sequenceNumber]] retain], r19);
                    sub_100822370(*(r20 + r24), r21);
                    [r21 release];
            }
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_sequenceNumbers, 0x0);
    objc_storeStrong((int64_t *)&self->_contents, 0x0);
    return;
}

@end