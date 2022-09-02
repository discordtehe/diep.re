@implementation FriendNodeView

-(void)fillNode:(void *)arg2 imageURL:(void *)arg3 facebookID:(void *)arg4 target:(void *)arg5 selector:(void *)arg6 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg6;
    r20 = arg5;
    r22 = arg4;
    r23 = arg3;
    r21 = self;
    [self->_nameLabel setString:r2];
    if (r23 != 0x0) {
            r8 = [r23 isEqualToString:@""];
            r0 = r21->_playerAvatar;
            if (r8 == 0x0) {
                    r1 = @selector(loadWithUrl:);
            }
            else {
                    r1 = @selector(loadWithFacebookId:);
            }
    }
    else {
            r0 = r21->_playerAvatar;
            r1 = @selector(loadWithFacebookId:);
    }
    objc_msgSend(r0, r1);
    [r21->_mainButton setSelectedColor:0xffffffffffffffff];
    [r21->_menu setTouchSwallow:0x0];
    r21->_target = r20;
    r21->_selector = r19;
    return;
}

-(void)changeToggleState:(unsigned long long)arg2 {
    r0 = self->_checkBox;
    r8 = &@selector(toggleOn);
    if (arg2 == 0x1) {
            if (!CPU_FLAGS & E) {
                    r8 = &@selector(toggleOff);
            }
            else {
                    r8 = &@selector(toggleOn);
            }
    }
    objc_msgSend(r0, *r8);
    return;
}

-(unsigned long long)getToggleState {
    r0 = self->_checkBox;
    r0 = [r0 selectedIndex];
    return r0;
}

-(void)cleanNode {
    self->_target = 0x0;
    self->_selector = 0x0;
    r0 = self->_playerAvatar;
    if (r0 != 0x0) {
            [r0 reset];
    }
    return;
}

-(void)dealloc {
    [self cleanNode];
    [[&var_20 super] dealloc];
    return;
}

-(void)setMenuTable:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_menu));
    [*(self + r21) setTable:r2];
    if (arg2 == 0x0) {
            [*(r19 + r21) reset];
    }
    return;
}

-(void)friendPressed {
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_target))) performSelector:r2 withObject:r3];
    return;
}

@end