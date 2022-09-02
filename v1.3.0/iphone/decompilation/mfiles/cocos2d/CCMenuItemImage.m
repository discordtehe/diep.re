@implementation CCMenuItemImage

+(void *)itemWithNormalImage:(void *)arg2 selectedImage:(void *)arg3 {
    r0 = [self itemWithNormalImage:arg2 selectedImage:arg3 disabledImage:0x0 target:0x0 selector:0x0];
    return r0;
}

+(void *)itemWithNormalImage:(void *)arg2 selectedImage:(void *)arg3 target:(void *)arg4 selector:(void *)arg5 {
    r0 = [self itemWithNormalImage:arg2 selectedImage:arg3 disabledImage:0x0 target:arg4 selector:arg5];
    return r0;
}

+(void *)itemWithNormalImage:(void *)arg2 selectedImage:(void *)arg3 disabledImage:(void *)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithNormalImage:arg2 selectedImage:arg3 disabledImage:arg4 target:0x0 selector:0x0];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)itemWithNormalImage:(void *)arg2 selectedImage:(void *)arg3 disabledImage:(void *)arg4 target:(void *)arg5 selector:(void *)arg6 {
    r0 = [self alloc];
    r0 = [r0 initWithNormalImage:arg2 selectedImage:arg3 disabledImage:arg4 target:arg5 selector:arg6];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)itemWithNormalImage:(void *)arg2 selectedImage:(void *)arg3 block:(void *)arg4 {
    r0 = [self itemWithNormalImage:arg2 selectedImage:arg3 disabledImage:0x0 block:arg4];
    return r0;
}

+(void *)itemWithNormalImage:(void *)arg2 selectedImage:(void *)arg3 disabledImage:(void *)arg4 block:(void *)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithNormalImage:arg2 selectedImage:arg3 disabledImage:arg4 block:arg5];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithNormalImage:(void *)arg2 selectedImage:(void *)arg3 disabledImage:(void *)arg4 target:(void *)arg5 selector:(void *)arg6 {
    r23 = sub_100330078(arg5);
    r19 = [self initWithNormalImage:arg2 selectedImage:arg3 disabledImage:arg4 block:r23];
    [r23 release];
    r0 = r19;
    return r0;
}

-(void *)initWithNormalImage:(void *)arg2 selectedImage:(void *)arg3 disabledImage:(void *)arg4 block:(void *)arg5 {
    r31 = r31 - 0x60;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg5;
    r22 = arg4;
    r23 = arg3;
    r20 = self;
    r21 = [CCSprite spriteWithFile:r2];
    if (r23 != 0x0) {
            r23 = [CCSprite spriteWithFile:r2];
    }
    if (r22 != 0x0) {
            r4 = [CCSprite spriteWithFile:r2];
    }
    else {
            r4 = 0x0;
    }
    r0 = [[&var_50 super] initWithNormalSprite:r21 selectedSprite:r23 disabledSprite:r4 block:r19];
    return r0;
}

-(void)setNormalSpriteFrame:(void *)arg2 {
    [self setNormalImage:[CCSprite spriteWithSpriteFrame:arg2]];
    return;
}

-(void)setSelectedSpriteFrame:(void *)arg2 {
    [self setSelectedImage:[CCSprite spriteWithSpriteFrame:arg2]];
    return;
}

-(void)setDisabledSpriteFrame:(void *)arg2 {
    [self setDisabledImage:[CCSprite spriteWithSpriteFrame:arg2]];
    return;
}

-(unsigned char)getOpacity {
    r0 = self->_normalImage;
    if (r0 != 0x0) {
            r0 = [r0 opacity];
    }
    return r0;
}

-(void)setOpacity:(unsigned char)arg2 {
    [self->_normalImage setOpacity:r2];
    [self->_selectedImage setOpacity:arg2];
    [self->_disabledImage setOpacity:arg2];
    return;
}

+(void *)itemFromNormalImage:(void *)arg2 selectedImage:(void *)arg3 {
    r0 = [self itemWithNormalImage:arg2 selectedImage:arg3];
    return r0;
}

+(void *)itemFromNormalImage:(void *)arg2 selectedImage:(void *)arg3 target:(void *)arg4 selector:(void *)arg5 {
    r0 = [self itemWithNormalImage:arg2 selectedImage:arg3 target:arg4 selector:arg5];
    return r0;
}

+(void *)itemFromNormalImage:(void *)arg2 selectedImage:(void *)arg3 disabledImage:(void *)arg4 target:(void *)arg5 selector:(void *)arg6 {
    r0 = [self itemWithNormalImage:arg2 selectedImage:arg3 disabledImage:arg4 target:arg5 selector:arg6];
    return r0;
}

+(void *)itemFromNormalImage:(void *)arg2 selectedImage:(void *)arg3 block:(void *)arg4 {
    r0 = [self itemWithNormalImage:arg2 selectedImage:arg3 block:arg4];
    return r0;
}

+(void *)itemFromNormalImage:(void *)arg2 selectedImage:(void *)arg3 disabledImage:(void *)arg4 block:(void *)arg5 {
    r0 = [self itemWithNormalImage:arg2 selectedImage:arg3 disabledImage:arg4 block:arg5];
    return r0;
}

-(void *)initFromNormalImage:(void *)arg2 selectedImage:(void *)arg3 disabledImage:(void *)arg4 target:(void *)arg5 selector:(void *)arg6 {
    r0 = [self initWithNormalImage:arg2 selectedImage:arg3 disabledImage:arg4 target:arg5 selector:arg6];
    return r0;
}

-(void *)initFromNormalImage:(void *)arg2 selectedImage:(void *)arg3 disabledImage:(void *)arg4 block:(void *)arg5 {
    r0 = [self initWithNormalImage:arg2 selectedImage:arg3 disabledImage:arg4 block:arg5];
    return r0;
}

@end