@implementation ISDemandOnlyModeHelper

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            r0->_mode = 0x0;
    }
    return r0;
}

-(bool)setDemandOnlyMode {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    objc_sync_enter(self);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mode));
    if (*(r19 + r8) == 0x1) {
            r20 = 0x0;
    }
    else {
            *(r19 + r8) = 0x2;
            r20 = 0x1;
    }
    objc_sync_exit(r19);
    r0 = r20;
    return r0;
}

-(bool)setMediationMode {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    objc_sync_enter(self);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mode));
    if (*(r19 + r8) == 0x2) {
            r20 = 0x0;
    }
    else {
            r20 = 0x1;
            *(r19 + r8) = r20;
    }
    objc_sync_exit(r19);
    r0 = r20;
    return r0;
}

-(bool)validateDemandOnlyMode:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    if (r20->_mode == 0x1) {
            r21 = [[ISLoggerManager sharedInstance] retain];
            r22 = [[NSString stringWithFormat:@"%@:instanceId can't be used in mediation mode"] retain];
            [r21 log:r22 level:0x3 tag:0x0];
            [r22 release];
            [r21 release];
            r21 = 0x0;
    }
    else {
            r21 = 0x1;
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)validateMediationMode:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    if (r20->_mode == 0x2) {
            r21 = [[ISLoggerManager sharedInstance] retain];
            r22 = [[NSString stringWithFormat:@"%@ can't be used in demand only mode"] retain];
            [r21 log:r22 level:0x3 tag:0x0];
            [r22 release];
            [r21 release];
            r21 = 0x0;
    }
    else {
            r21 = 0x1;
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(long long)mode {
    r0 = self->_mode;
    return r0;
}

-(bool)isDemandOnlyMode {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    objc_sync_enter(self);
    if (r19->_mode == 0x2) {
            if (CPU_FLAGS & E) {
                    r20 = 0x1;
            }
    }
    objc_sync_exit(r19);
    r0 = r20;
    return r0;
}

-(void)setMode:(long long)arg2 {
    self->_mode = arg2;
    return;
}

@end