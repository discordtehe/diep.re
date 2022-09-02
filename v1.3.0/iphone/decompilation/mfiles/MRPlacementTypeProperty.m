@implementation MRPlacementTypeProperty

+(void *)propertyWithType:(unsigned long long)arg2 {
    r0 = objc_alloc();
    r0 = [r0 init];
    [r0 setPlacementType:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)description {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_placementType));
    r8 = *(self + r8);
    r9 = @"unknown";
    if (r8 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r9 = @"inline";
            }
            else {
                    r9 = @"unknown";
            }
    }
    if (r8 == 0x1) {
            if (!CPU_FLAGS & E) {
                    r8 = r9;
            }
            else {
                    r8 = @"interstitial";
            }
    }
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(unsigned long long)placementType {
    r0 = self->_placementType;
    return r0;
}

-(void)setPlacementType:(unsigned long long)arg2 {
    self->_placementType = arg2;
    return;
}

@end