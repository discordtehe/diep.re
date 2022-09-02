@implementation CCBFileUtils

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setCcbDirectoryPath:[[r19 class] ccbDirectoryPath]];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [self setCcbDirectoryPath:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void *)pathForResource:(void *)arg2 ofType:(void *)arg3 inDirectory:(void *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    r22 = self;
    if (arg4 != 0x0) {
            r0 = [r19 isEqualToString:r2];
            r23 = r22->ccbDirectoryPath;
            if ((r0 & 0x1) == 0x0) {
                    r23 = [r23 stringByAppendingPathComponent:r19];
            }
    }
    else {
            r23 = r22->ccbDirectoryPath;
    }
    r2 = r21;
    if (r20 != 0x0) {
            r0 = [r20 isEqualToString:r2];
            r2 = r21;
            if ((r0 & 0x1) == 0x0) {
                    r2 = [r21 stringByAppendingPathExtension:r20];
            }
    }
    r23 = [r23 stringByAppendingPathComponent:r2];
    if (([[NSFileManager defaultManager] fileExistsAtPath:r23] & 0x1) != 0x0) {
            r0 = r23;
    }
    else {
            r0 = r22->_bundle;
            r0 = [r0 pathForResource:r21 ofType:r20 inDirectory:r19];
    }
    return r0;
}

-(void *)getLocalizedTextForTag:(void *)arg2 {
    r0 = arg2;
    return r0;
}

-(void *)ccbDirectoryPath {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(ccbDirectoryPath)), 0x0);
    return r0;
}

-(void)setCcbDirectoryPath:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end