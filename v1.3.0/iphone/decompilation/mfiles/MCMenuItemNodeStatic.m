@implementation MCMenuItemNodeStatic

-(void)setNormalNode:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_normalNode));
    if (*(self + r21) != 0x0) {
            [[&var_30 super] setOriginalColorsRecursively:r2];
            [[&var_40 super] removeFromOriginalColorsRecursively:*(r20 + r21)];
    }
    if (r19 != 0x0) {
            *(int32_t *)(int64_t *)&r20->_normalNodeTag = [r19 tag];
            [[&var_50 super] storeOriginalColorsRecursively:r19];
            if (([[r20 children] containsObject:r2] & 0x1) == 0x0) {
                    [r20 addChild:r2];
            }
            *(r20 + r21) = r19;
    }
    return;
}

-(void)setSelectedNode:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_selectedNode));
    if (*(self + r21) != 0x0) {
            [[&var_30 super] setOriginalColorsRecursively:r2];
            [[&var_40 super] removeFromOriginalColorsRecursively:*(r20 + r21)];
    }
    if (r19 != 0x0) {
            *(int32_t *)(int64_t *)&r20->_selectedNodeTag = [r19 tag];
            [r20 storeOriginalColorsRecursively:r19];
            if (([[r20 children] containsObject:r2] & 0x1) == 0x0) {
                    [r20 addChild:r2];
            }
            *(r20 + r21) = r19;
    }
    return;
}

-(void)setDisabledNode:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_disabledNode));
    if (*(self + r21) != 0x0) {
            [[&var_30 super] setOriginalColorsRecursively:r2];
            [[&var_40 super] removeFromOriginalColorsRecursively:*(r20 + r21)];
    }
    if (r19 != 0x0) {
            *(int32_t *)(int64_t *)&r20->_disabledNodeTag = [r19 tag];
            [[&var_50 super] storeOriginalColorsRecursively:r19];
            if (([[r20 children] containsObject:r2] & 0x1) == 0x0) {
                    [r20 addChild:r2];
            }
            *(r20 + r21) = r19;
    }
    return;
}

@end