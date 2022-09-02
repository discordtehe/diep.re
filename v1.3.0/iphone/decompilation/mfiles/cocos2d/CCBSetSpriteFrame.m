@implementation CCBSetSpriteFrame

+(void *)actionWithSpriteFrame:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithSpriteFrame:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithSpriteFrame:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r20->spriteFrame = [r19 retain];
    }
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [self->spriteFrame release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithSpriteFrame:self->spriteFrame];
    return r0;
}

-(void)update:(double)arg2 {
    [self->_target setDisplayFrame:self->spriteFrame];
    return;
}

@end