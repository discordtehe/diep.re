@implementation CCMenuItemSprite

+(void *)itemWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 target:(void *)arg4 selector:(void *)arg5 {
    r0 = [self itemWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:0x0 target:arg4 selector:arg5];
    return r0;
}

+(void *)itemWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 {
    r0 = [self itemWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:0x0 target:0x0 selector:0x0];
    return r0;
}

+(void *)itemWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 disabledSprite:(void *)arg4 target:(void *)arg5 selector:(void *)arg6 {
    r0 = [self alloc];
    r0 = [r0 initWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:arg4 target:arg5 selector:arg6];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)itemWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 block:(void *)arg4 {
    r0 = [self itemWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:0x0 block:arg4];
    return r0;
}

+(void *)itemWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 disabledSprite:(void *)arg4 block:(void *)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:arg4 block:arg5];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 disabledSprite:(void *)arg4 target:(void *)arg5 selector:(void *)arg6 {
    r23 = sub_100330078(arg5);
    r19 = [self initWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:arg4 block:r23];
    [r23 release];
    r0 = r19;
    return r0;
}

-(void *)initWithNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 disabledSprite:(void *)arg4 block:(void *)arg5 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r21 = arg3;
    r22 = arg2;
    r0 = [[&var_30 super] initWithBlock:arg5];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setNormalImage:r22];
            [r19 setSelectedImage:r21];
            [r19 setDisabledImage:r20];
            [r19->_normalImage contentSize];
            [r19 setContentSize:r20];
            [r19 setCascadeColorEnabled:0x1];
            [r19 setCascadeOpacityEnabled:0x1];
            [r19 setCascadeEmissionEnabled:0x1];
    }
    r0 = r19;
    return r0;
}

-(void)setNormalImage:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_normalImage));
    if (*(r0 + r21) != r2) {
            [r2 setAnchorPoint:r2];
            [r0 removeChild:*(r0 + r21) cleanup:0x1];
            [r0 addChild:r2];
            *(r0 + r21) = r2;
            [r2 contentSize];
            [r0 setContentSize:r2];
            [r0 updateImagesVisibility];
    }
    return;
}

-(void)setSelectedImage:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_selectedImage));
    if (*(r0 + r21) != r2) {
            [r2 setAnchorPoint:r2];
            [r0 removeChild:*(r0 + r21) cleanup:0x1];
            [r0 addChild:r2];
            *(r0 + r21) = r2;
            [r0 updateImagesVisibility];
    }
    return;
}

-(void)setDisabledImage:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_disabledImage));
    if (*(r0 + r21) != r2) {
            [r2 setAnchorPoint:r2];
            [r0 removeChild:*(r0 + r21) cleanup:0x1];
            [r0 addChild:r2];
            *(r0 + r21) = r2;
            [r0 updateImagesVisibility];
    }
    return;
}

-(void)selected {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_30 super] selected];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_selectedImage));
    if (*(r19 + r22) != 0x0) {
            if (CPU_FLAGS & NE) {
                    r20 = 0x1;
            }
    }
    if (CPU_FLAGS & E) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    [r19->_normalImage setVisible:r2];
    [*(r19 + r22) setVisible:r20];
    [r19->_disabledImage setVisible:0x0];
    return;
}

-(void)unselected {
    [[&var_20 super] unselected];
    [self->_normalImage setVisible:0x1];
    [self->_selectedImage setVisible:0x0];
    [self->_disabledImage setVisible:0x0];
    return;
}

-(void)setIsEnabled:(bool)arg2 {
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_isEnabled != arg2) {
            [[&var_20 super] setIsEnabled:r2];
            [r0 updateImagesVisibility];
    }
    return;
}

-(void)updateImagesVisibility {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->_isEnabled == 0x0) goto loc_1002d3ccc;

loc_1002d3c7c:
    r20 = @selector(setVisible:);
    objc_msgSend(r19->_normalImage, r20);
    objc_msgSend(r19->_selectedImage, r20);
    r0 = r19->_disabledImage;
    goto loc_1002d3cc0;

loc_1002d3cc0:
    r1 = r20;
    goto loc_1002d3d20;

loc_1002d3d20:
    objc_msgSend(r0, r1);
    return;

loc_1002d3ccc:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_disabledImage));
    r8 = *(r19 + r21);
    r0 = r19->_normalImage;
    r1 = @selector(setVisible:);
    if (r8 == 0x0) goto loc_1002d3d30;

loc_1002d3cf4:
    objc_msgSend(r0, r1);
    objc_msgSend(r19->_selectedImage, r20);
    r0 = *(r19 + r21);
    r1 = r20;
    goto loc_1002d3d20;

loc_1002d3d30:
    r20 = @selector(setVisible:);
    objc_msgSend(r0, r1);
    objc_msgSend(r19->_selectedImage, r20);
    r0 = *(r19 + r21);
    goto loc_1002d3cc0;
}

-(void *)normalImage {
    r0 = self->_normalImage;
    return r0;
}

-(void *)selectedImage {
    r0 = self->_selectedImage;
    return r0;
}

-(void *)disabledImage {
    r0 = self->_disabledImage;
    return r0;
}

+(void *)itemFromNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 {
    r0 = [self itemWithNormalSprite:r2 selectedSprite:r3];
    return r0;
}

+(void *)itemFromNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 target:(void *)arg4 selector:(void *)arg5 {
    r0 = [self itemWithNormalSprite:r2 selectedSprite:r3 target:r4 selector:r5];
    return r0;
}

+(void *)itemFromNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 disabledSprite:(void *)arg4 target:(void *)arg5 selector:(void *)arg6 {
    r0 = [self itemWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:arg4 target:arg5 selector:arg6];
    return r0;
}

+(void *)itemFromNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 block:(void *)arg4 {
    r0 = [self itemWithNormalSprite:arg2 selectedSprite:arg3 block:arg4];
    return r0;
}

+(void *)itemFromNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 disabledSprite:(void *)arg4 block:(void *)arg5 {
    r0 = [self itemWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:arg4 block:arg5];
    return r0;
}

-(void *)initFromNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 disabledSprite:(void *)arg4 target:(void *)arg5 selector:(void *)arg6 {
    r0 = [self initWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:arg4 target:arg5 selector:arg6];
    return r0;
}

-(void *)initFromNormalSprite:(void *)arg2 selectedSprite:(void *)arg3 disabledSprite:(void *)arg4 block:(void *)arg5 {
    r0 = [self initWithNormalSprite:arg2 selectedSprite:arg3 disabledSprite:arg4 block:arg5];
    return r0;
}

@end