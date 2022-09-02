@implementation VungleBackoffIdentifierOperation

+(void *)operationWithIdentifierBlock:(void *)arg2 resultBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[[self class] alloc] initWithIdentifierBlock:r21 resultBlock:r19];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)initWithIdentifierBlock:(void *)arg2 resultBlock:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = objc_retainBlock(r19);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_identifierBlock));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = objc_retainBlock(r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_resultBlock));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)main {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    self->_timeInterval = 0x0;
    [self startIncrementalBackOff];
    if (r19->_resultBlock != 0x0) {
            [r19 performSelectorOnMainThread:@selector(executeResultBlock) withObject:0x0 waitUntilDone:0x1];
    }
    return;
}

-(void)executeResultBlock {
    r19 = self->_resultBlock;
    (*(r19 + 0x10))(r19, [self->_identifier copy]);
    [r20 release];
    return;
}

-(void *)getIdentifier {
    r0 = self->_identifierBlock;
    if (r0 != 0x0) {
            r0 = (*(r0 + 0x10))();
            r0 = [r0 retain];
    }
    r0 = [r0 autorelease];
    return r0;
}

-(void *)identifierBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_identifierBlock)), 0x0);
    return r0;
}

-(void)startIncrementalBackOff {
    r31 = r31 - 0x70;
    var_50 = r28;
    stack[-88] = r27;
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
    r19 = self;
    r20 = [objc_alloc() init];
    r28 = @selector(identifier);
    r0 = objc_msgSend(r19, r28);
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            do {
                    r24 = [[r19 getIdentifier] retain];
                    [r19 setIdentifier:r24];
                    [r24 release];
                    r0 = objc_msgSend(r19, r28);
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 == 0x0) {
                            var_60 = @selector(setTimeInterval:);
                            [r20 backoffTime];
                            asm { ucvtf      d0, x0 };
                            objc_msgSend(r19, var_60);
                            objc_msgSend(r19, r25);
                            objc_msgSend(@class(NSThread), r26);
                    }
                    [r20 increaseAttempts];
                    r0 = objc_msgSend(r19, r23);
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    r28 = r23;
            } while (r0 == 0x0);
    }
    [r20 release];
    return;
}

-(void)setIdentifierBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)resultBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_resultBlock)), 0x0);
    return r0;
}

-(void)setResultBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(double)timeInterval {
    r0 = self;
    return r0;
}

-(void)setTimeInterval:(double)arg2 {
    self->_timeInterval = d0;
    return;
}

-(void *)identifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_identifier)), 0x0);
    return r0;
}

-(void)setIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_identifier, 0x0);
    objc_storeStrong((int64_t *)&self->_resultBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_identifierBlock, 0x0);
    return;
}

@end