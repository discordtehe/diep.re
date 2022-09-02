@implementation CCBFile

-(void *)customOwner {
    r0 = self->_customOwner;
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_customOwner = @(0x0);
    }
    r0 = r19;
    return r0;
}

-(void)setCustomOwner:(void *)arg2 {
    self->_customOwner = arg2;
    return;
}

-(void *)ccbFile {
    r0 = self->ccbFile;
    return r0;
}

-(void)setCcbFile:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end