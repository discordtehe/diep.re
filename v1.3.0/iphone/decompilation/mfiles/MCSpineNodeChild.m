@implementation MCSpineNodeChild

+(void *)spineChildWithSpineType:(void *)arg2 spineName:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithSpineType:arg2 spineName:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithSpineType:(void *)arg2 spineName:(void *)arg3 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            r0->_spineType = r20;
            r0->_spineName = r19;
    }
    return r0;
}

-(void *)spineTypeValues {
    r0 = [NSArray arrayWithObjects:@"bone"];
    return r0;
}

-(void *)spineType {
    r0 = self->_spineType;
    return r0;
}

-(void *)spineNameValues {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self parent] == 0x0) goto loc_1002a0a58;

loc_1002a09d8:
    r21 = [r19 parent];
    [MCSpineNode class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_1002a0a58;

loc_1002a0a14:
    r21 = [r19 parent];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_spineType));
    if ([*(r19 + r23) isEqualToString:r2] == 0x0) goto loc_1002a0a6c;

loc_1002a0a4c:
    r1 = @selector(slotNameValues);
    goto loc_1002a0a8c;

loc_1002a0a8c:
    r0 = r21;
    goto loc_1002a0aa8;

loc_1002a0aa8:
    r0 = objc_msgSend(r0, r1);
    return r0;

loc_1002a0a6c:
    if ([*(r19 + r23) isEqualToString:r2] == 0x0) goto loc_1002a0a94;

loc_1002a0a84:
    r1 = @selector(boneNameValues);
    goto loc_1002a0a8c;

loc_1002a0a94:
    r0 = [r19 parent];
    r1 = @selector(slotNameValues);
    goto loc_1002a0aa8;

loc_1002a0a58:
    r0 = @class(NSArray);
    r1 = @selector(array);
    goto loc_1002a0aa8;
}

-(void)setSpineType:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void *)spineName {
    r0 = self->_spineName;
    return r0;
}

-(void)setSpineName:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end