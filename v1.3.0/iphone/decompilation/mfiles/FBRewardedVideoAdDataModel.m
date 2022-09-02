@implementation FBRewardedVideoAdDataModel

-(void *)initWithMetadata:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] initWithMetadata:r19 placementType:0x5];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 stringForKeyOrNil:@"destination_title"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_destinationTitle));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 stringForKeyOrNil:@"activation_command"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_activationCommand));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 numberForKeyOrNil:@"video_duration_sec"];
            r0 = [r0 retain];
            r21 = r0;
            r23 = (int64_t *)&r20->_duration;
            if (r0 != 0x0) {
                    [r21 intValue] * 0x3e8;
                    asm { sxtw       x22, w8 };
                    if (*qword_1011dd1d8 != -0x1) {
                            dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
                    }
                    (*0x1011dd1e0)(r22, 0x3e8);
                    q0 = var_58;
                    r8 = var_48;
            }
            else {
                    if (*qword_1011dd148 != -0x1) {
                            dispatch_once_f(0x1011dd148, 0x1011c61f0, 0x100a3d91c);
                    }
                    r8 = *qword_1011dd150;
                    q0 = *(int128_t *)r8;
                    r8 = *(r8 + 0x10);
            }
            *(r23 + 0x10) = r8;
            *(int128_t *)r23 = q0;
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithMetadata:(void *)arg2 placementType:(long long)arg3 {
    r0 = [self initWithMetadata:arg2];
    return r0;
}

-(bool)isPlayableAd {
    r0 = [self playableAdDataModel];
    r0 = [r0 retain];
    r21 = [[r0 playableURI] retain];
    r19 = [FBAdUtility isStringEmpty:r21] ^ 0x1;
    [r21 release];
    [r0 release];
    r0 = r19;
    return r0;
}

-(bool)isValid {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [[&var_40 super] isValid];
    if (r0 != 0x0) {
            r0 = [r20 playableAdDataModel];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 playableURI];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r22 release];
            if (r0 != 0x0) {
                    r0 = [r20 playableAdDataModel];
                    r0 = [r0 retain];
                    r19 = [r0 isValid];
                    [r0 release];
            }
            else {
                    r0 = [r20 videoURL];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 absoluteString];
                    r0 = [r0 retain];
                    r21 = [r0 length];
                    [r0 release];
                    [r19 release];
                    if (r21 != 0x0) {
                            r19 = 0x1;
                    }
                    else {
                            r19 = 0x0;
                    }
            }
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_destinationTitle, 0x0);
    objc_storeStrong((int64_t *)&self->_activationCommand, 0x0);
    return;
}

-(union ?)duration {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void *)activationCommand {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_activationCommand)), 0x0);
    return r0;
}

-(void *)destinationTitle {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_destinationTitle)), 0x0);
    return r0;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBRewardedVideoAdDataModel");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end