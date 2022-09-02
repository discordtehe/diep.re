@implementation MCStoreProductViewController

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r0->mPreferredOrientation = 0x0;
    }
    return r0;
}

-(long long)preferredInterfaceOrientationForPresentation {
    r0 = self;
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mPreferredOrientation));
    r8 = *(int32_t *)(r0 + r8);
    if (r8 != 0x2) {
            if (r8 == 0x1) {
                    r0 = [UIApplication sharedApplication];
                    r0 = [r0 statusBarOrientation];
                    if (r0 == 0x4) {
                            asm { cinc       x0, x8, eq };
                    }
            }
            else {
                    r0 = [[&var_10 super] preferredInterfaceOrientationForPresentation];
            }
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(bool)shouldAutorotate {
    return 0x1;
}

-(unsigned long long)supportedInterfaceOrientations {
    r0 = self;
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(mPreferredOrientation));
    r8 = *(int32_t *)(r0 + r8);
    if (r8 != 0x1) {
            if (r8 == 0x2) {
                    r0 = 0x2;
            }
            else {
                    r0 = [[&var_10 super] supportedInterfaceOrientations];
            }
    }
    else {
            r0 = 0x18;
    }
    return r0;
}

-(int)preferredOrientation {
    r0 = *(int32_t *)(int64_t *)&self->mPreferredOrientation;
    return r0;
}

-(void)setPreferredOrientation:(int)arg2 {
    *(int32_t *)(int64_t *)&self->mPreferredOrientation = arg2;
    return;
}

@end