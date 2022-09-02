@implementation FBAdFormatMapper

-(long long)adFormatTypeNameForPlacementId:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = [arg2 retain];
    r0 = [r20 placementIdToAdFormatIdMap];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r22 release];
    [r23 release];
    if (r19 != 0x0) {
            r0 = [r20 adFormatToIdMap];
            r0 = [r0 retain];
            r20 = [[r0 objectForKeyedSubscript:r2] retain];
            [r0 release];
            if (r20 != 0x0) {
                    r21 = [r20 integerValue];
                    [r20 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)adFormatToIdMap {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011dda90 != -0x1) {
            dispatch_once(0x1011dda90, 0x100ea9de8);
    }
    r0 = *0x1011dda98;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_placementIdToAdFormatIdMap, 0x0);
    return;
}

-(void *)placementIdToAdFormatIdMap {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementIdToAdFormatIdMap)), 0x0);
    return r0;
}

-(void)setPlacementIdToAdFormatIdMap:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end