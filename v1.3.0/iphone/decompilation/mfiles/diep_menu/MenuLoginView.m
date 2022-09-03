@implementation MenuLoginView

-(void)setLoginButtonsNodeVisibility:(bool)arg2 {
    [self->loginButtonsNode setVisible:r2];
    return;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void)setupLayout {
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
    r22 = sign_extend_64(*(int32_t *)ivar_offset(backgroundSprite));
    sub_100088c18(self, *(self + r22));
    if (sub_1005cb7c8(0x1) <= 0x5) {
            r0 = sub_1005d7410(@"backgroundWide.png", 0x0, 0x0, 0x0);
            if (r0 != 0x0) {
                    [*(r19 + r22) position];
                    [r0 setPosition:0x0];
                    [r0 setVisible:[*(r19 + r22) visible]];
                    [*(r19 + r22) zOrder] - 0x1;
                    [*(r19 + r22) removeFromParentAndCleanup:r2];
                    *(r19 + r22) = r20;
                    [r19 addChild:r2 z:r3];
            }
    }
    [*(r19 + sign_extend_64(*(int32_t *)ivar_offset(androidNode))) removeFromParentAndCleanup:r2];
    *(r19 + r20) = 0x0;
    r19->androidMenu = 0x0;
    r19->loginButtonsNode = r19->iosNode;
    r19->menu = r19->iosMenu;
    return;
}

@end