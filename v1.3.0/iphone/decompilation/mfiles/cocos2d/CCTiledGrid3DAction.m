@implementation CCTiledGrid3DAction

-(void *)grid {
    r0 = [CCTiledGrid3D gridWithSize:r2];
    return r0;
}

-(struct _ccQuad3)tile:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r19 = r8;
    r0 = self->_target;
    r0 = [r0 grid];
    if (r0 != 0x0) {
            r0 = [r0 tile:r2];
    }
    else {
            *(int128_t *)(r19 + 0x10) = q0;
            *(int128_t *)(r19 + 0x20) = q0;
            *(int128_t *)r19 = q0;
    }
    return r0;
}

-(struct _ccQuad3)originalTile:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r19 = r8;
    r0 = self->_target;
    r0 = [r0 grid];
    if (r0 != 0x0) {
            r0 = [r0 originalTile:r2];
    }
    else {
            *(int128_t *)(r19 + 0x10) = q0;
            *(int128_t *)(r19 + 0x20) = q0;
            *(int128_t *)r19 = q0;
    }
    return r0;
}

-(void)setTile:(struct CGPoint)arg2 coords:(struct _ccQuad3)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = self->_target;
    r0 = [r0 grid];
    [r0 setTile:&var_50 coords:r3];
    return;
}

@end