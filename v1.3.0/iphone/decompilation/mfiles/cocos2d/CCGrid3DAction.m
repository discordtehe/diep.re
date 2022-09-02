@implementation CCGrid3DAction

-(void *)grid {
    r0 = [CCGrid3D gridWithSize:r2];
    return r0;
}

-(struct _ccVertex3F)vertex:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self->_target;
    r0 = [r0 grid];
    r0 = [r0 vertex:r2];
    return r0;
}

-(struct _ccVertex3F)originalVertex:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self->_target;
    r0 = [r0 grid];
    r0 = [r0 originalVertex:r2];
    return r0;
}

-(void)setVertex:(struct CGPoint)arg2 vertex:(struct _ccVertex3F)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    [[self->_target grid] setVertex:r2 vertex:r3];
    return;
}

@end