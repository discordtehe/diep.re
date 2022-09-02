@implementation FBHTMLAdDataModel

-(bool)isValid {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [[&var_20 super] isValid];
    if (r0 != 0x0) {
            r0 = r19->_markup;
            r0 = [r0 length];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(void *)initWithMetadata:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] initWithMetadata:r19];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 stringForKeyOrNil:@"markup"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_markup));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 stringForKeyOrNil:@"activation_command"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_activationCommand));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 dictionaryForKeyOrNil:@"metadata"];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 numberForKeyOrNil:@"is_tablet"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_isTablet));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r21 numberForKeyOrNil:@"ad_height"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adHeight));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r21 numberForKeyOrNil:@"ad_width"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adWidth));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r21 numberForKeyOrNil:@"is_video"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_isVideo));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r20->_orientation = [FBAdUtility interfaceOrientationFromServerOrientation:[r21 integerForKey:@"orientation" orDefault:0x3]];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adWidth, 0x0);
    objc_storeStrong((int64_t *)&self->_adHeight, 0x0);
    objc_storeStrong((int64_t *)&self->_isVideo, 0x0);
    objc_storeStrong((int64_t *)&self->_isTablet, 0x0);
    objc_storeStrong((int64_t *)&self->_activationCommand, 0x0);
    objc_storeStrong((int64_t *)&self->_markup, 0x0);
    return;
}

-(void *)markup {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_markup)), 0x0);
    return r0;
}

-(void *)activationCommand {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_activationCommand)), 0x0);
    return r0;
}

-(long long)orientation {
    r0 = self->_orientation;
    return r0;
}

-(void *)isTablet {
    r0 = self->_isTablet;
    return r0;
}

-(void *)isVideo {
    r0 = self->_isVideo;
    return r0;
}

-(void *)adHeight {
    r0 = self->_adHeight;
    return r0;
}

-(void *)adWidth {
    r0 = self->_adWidth;
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
    r0 = objc_getClass("FBHTMLAdDataModel");
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