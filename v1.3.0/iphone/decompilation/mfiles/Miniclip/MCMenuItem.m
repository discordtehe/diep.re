@implementation MCMenuItem

+(void *)itemWithTarget:(void *)arg2 selector:(void *)arg3 selectedSelector:(void *)arg4 unselectedSelector:(void *)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithTarget:arg2 selector:arg3 selectedSelector:arg4 unselectedSelector:arg5];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)itemWithBlock:(void *)arg2 selectedBlock:(void *)arg3 unselectedBlock:(void *)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithBlock:arg2 selectedBlock:arg3 unselectedBlock:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithTarget:(void *)arg2 selector:(void *)arg3 selectedSelector:(void *)arg4 unselectedSelector:(void *)arg5 {
    r23 = sub_100330078(arg2);
    r20 = sub_100330078(arg2);
    r19 = sub_100330078(arg2);
    r21 = [self initWithBlock:r23 selectedBlock:r20 unselectedBlock:r19];
    [r23 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)initWithBlock:(void *)arg2 selectedBlock:(void *)arg3 unselectedBlock:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r21 = arg3;
    r0 = [[&var_30 super] initWithBlock:arg2];
    r20 = r0;
    if (r0 != 0x0) {
            r20->_selectedBlock = [r21 copy];
            r20->_unselectedBlock = [r19 copy];
    }
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [self->_selectedBlock release];
    [self->_unselectedBlock release];
    [[&var_20 super] dealloc];
    return;
}

-(void)setSelectedBlock:(void *)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_selectedBlock));
    [*(self + r21) release];
    *(self + r21) = [arg2 copy];
    return;
}

-(void)setUnselectedBlock:(void *)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_unselectedBlock));
    [*(self + r21) release];
    *(self + r21) = [arg2 copy];
    return;
}

-(void)setSelectedTarget:(void *)arg2 selector:(void *)arg3 {
    r20 = sub_100330078(arg2);
    [self setSelectedBlock:r20];
    [r20 release];
    return;
}

-(void)setUnselectedTarget:(void *)arg2 selector:(void *)arg3 {
    r20 = sub_100330078(arg2);
    [self setUnselectedBlock:r20];
    [r20 release];
    return;
}

-(void)selected {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] selected];
    r0 = r19->_selectedBlock;
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
    return;
}

-(void)unselected {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] unselected];
    r0 = r19->_unselectedBlock;
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
    return;
}

@end