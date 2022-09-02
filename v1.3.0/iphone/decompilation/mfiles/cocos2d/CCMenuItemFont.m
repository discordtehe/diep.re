@implementation CCMenuItemFont

+(void)setFontSize:(unsigned long long)arg2 {
    *0x1011abee0 = arg2;
    return;
}

+(unsigned long long)fontSize {
    return *0x1011abee0;
}

+(void)setFontName:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if (*(int8_t *)0x1011d3160 == 0x1) {
            [*0x1011abee8 release];
    }
    *0x1011abee8 = [r19 retain];
    *(int8_t *)0x1011d3160 = 0x1;
    return;
}

+(void *)fontName {
    return *0x1011abee8;
}

+(void *)itemWithString:(void *)arg2 target:(void *)arg3 selector:(void *)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 target:arg3 selector:arg4];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)itemWithString:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 target:0x0 selector:0x0];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithString:(void *)arg2 target:(void *)arg3 selector:(void *)arg4 {
    r21 = sub_100330078(arg3);
    r19 = [self initWithString:arg2 block:r21];
    [r21 release];
    r0 = r19;
    return r0;
}

+(void *)itemWithString:(void *)arg2 block:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 block:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithString:(void *)arg2 block:(void *)arg3 {
    r31 = r31 - 0x40;
    r19 = arg3;
    r20 = arg2;
    r0 = *0x1011abee8;
    r0 = [r0 copy];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_fontName));
    *(self + r8) = r0;
    self->_fontSize = *qword_1011abee0;
    r0 = @class(CCLabelTTF);
    r3 = *(self + r8);
    asm { ucvtf      d0, x9 };
    r0 = [[&var_30 super] initWithLabel:[r0 labelWithString:r20 fontName:r3 fontSize:r4] block:r19];
    return r0;
}

-(void)recreateLabel {
    r19 = self;
    r20 = [CCLabelTTF alloc];
    r2 = [r19->_label string];
    r3 = r19->_fontName;
    asm { ucvtf      d0, d0 };
    r20 = [r20 initWithString:r2 fontName:r3 fontSize:r4];
    [r19 setLabel:r20];
    [r20 release];
    return;
}

-(unsigned long long)fontSize {
    r0 = self->_fontSize;
    return r0;
}

-(void)setFontSize:(unsigned long long)arg2 {
    self->_fontSize = arg2;
    [self recreateLabel];
    return;
}

-(void)setFontName:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_fontName));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
    }
    *(r19 + r21) = [r20 copy];
    [r19 recreateLabel];
    return;
}

-(void *)fontName {
    r0 = self->_fontName;
    return r0;
}

+(void *)itemFromString:(void *)arg2 {
    r0 = [self itemWithString:arg2];
    return r0;
}

+(void *)itemFromString:(void *)arg2 target:(void *)arg3 selector:(void *)arg4 {
    r0 = [self itemWithString:arg2 target:arg3 selector:arg4];
    return r0;
}

+(void *)itemFromString:(void *)arg2 block:(void *)arg3 {
    r0 = [self itemWithString:arg2 block:arg3];
    return r0;
}

-(void *)initFromString:(void *)arg2 target:(void *)arg3 selector:(void *)arg4 {
    r0 = [self initWithString:arg2 target:arg3 selector:arg4];
    return r0;
}

-(void *)initFromString:(void *)arg2 block:(void *)arg3 {
    r0 = [self initWithString:arg2 block:arg3];
    return r0;
}

@end