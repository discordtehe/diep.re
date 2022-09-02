@implementation FBAdInitSettings

-(void *)initWithPlacementIDs:(void *)arg2 mediationService:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r22 = arg2;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r23->_placementIDs, r22);
            objc_storeStrong((int64_t *)&r23->_mediationService, r20);
    }
    [r21 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void *)placementIDs {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementIDs)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_mediation, 0x0);
    objc_storeStrong((int64_t *)&self->_mediationService, 0x0);
    objc_storeStrong((int64_t *)&self->_placementIDs, 0x0);
    return;
}

-(void)setPlacementIDs:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)mediationService {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mediationService)), 0x0);
    return r0;
}

-(void *)mediation {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mediation)), 0x0);
    return r0;
}

-(void)setMediation:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
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
    r0 = objc_getClass("FBAdInitSettings");
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