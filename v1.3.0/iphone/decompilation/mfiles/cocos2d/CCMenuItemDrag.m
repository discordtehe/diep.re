@implementation CCMenuItemDrag

+(void *)initFromCell:(void *)arg2 target:(void *)arg3 selector:(void *)arg4 normalImage:(void *)arg5 selectedImage:(void *)arg6 {
    r0 = [self alloc];
    r0 = [r0 initFromCell:arg2 target:arg3 selector:arg4 normalImage:arg5 selectedImage:arg6];
    return r0;
}

-(void *)initFromCell:(void *)arg2 target:(void *)arg3 selector:(void *)arg4 normalImage:(void *)arg5 selectedImage:(void *)arg6 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg6;
    r21 = arg5;
    r22 = arg2;
    r0 = [[&var_30 super] initWithTarget:arg3 selector:arg4];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setCell:r22];
            [r19 setTable:[r22 parent]];
            [r19 setNormalImage:r21];
            [r19 setSelectedImage:r20];
            [r19 setDisabledImage:0x0];
            [r19->_normalImage contentSize];
            [r19 setContentSize:r2];
    }
    r0 = r19;
    return r0;
}

-(void)activate {
    return;
}

-(void)selected {
    [[&var_20 super] selected];
    [[self table] startDrag:self->cell_];
    [[&var_30 super] activate];
    return;
}

-(void *)cell {
    r0 = self->cell_;
    return r0;
}

-(void)unselected {
    [[&var_20 super] unselected];
    [[self table] stopDrag];
    [[&var_30 super] activate];
    return;
}

-(void)setCell:(void *)arg2 {
    self->cell_ = arg2;
    return;
}

-(void *)table {
    r0 = self->table_;
    return r0;
}

-(void)setTable:(void *)arg2 {
    self->table_ = arg2;
    return;
}

@end