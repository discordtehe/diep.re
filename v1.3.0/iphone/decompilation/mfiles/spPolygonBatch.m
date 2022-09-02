@implementation spPolygonBatch

+(void *)createWithCapacity:(int)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithCapacity:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithCapacity:(int)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(r20 + 0x8) = r19;
            asm { smull      x0, w19, w8 };
            *(r20 + 0x10) = sub_10036ad1c();
            asm { sbfiz      x0, x8, #0x1, #0x20 };
            *(r20 + 0x20) = sub_10036ad1c();
    }
    r0 = r20;
    return r0;
}

-(void)dealloc {
    loc_10036ad9c(*(self + 0x10));
    loc_10036ad9c(*(self + 0x20));
    [[&var_20 super] dealloc];
    return;
}

-(void)add:(void *)arg2 vertices:(float *)arg3 uvs:(float *)arg4 verticesCount:(int)arg5 triangles:(int *)arg6 trianglesCount:(int)arg7 color:(struct _ccColor4B *)arg8 {
    var_0 = arg8;
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
    r24 = arg7;
    r23 = arg6;
    r22 = arg5;
    r19 = arg4;
    r20 = arg3;
    r25 = arg2;
    r21 = self;
    if (*(self + 0x30) == arg2) {
            r9 = *(int32_t *)(r21 + 0x18) + r22 / 0x2;
            r8 = *(int32_t *)(r21 + 0x8);
            if (r9 > r8 || *(int32_t *)(r21 + 0x28) + r24 > r8 + r8 * 0x2) {
                    [r21 flush];
                    *(r21 + 0x30) = r25;
            }
    }
    else {
            [r21 flush];
            *(r21 + 0x30) = r25;
    }
    if (r24 >= 0x1) {
            r8 = *(int32_t *)(r21 + 0x18);
            r9 = *(r21 + 0x20);
            r10 = r24;
            r11 = sign_extend_64(*(int32_t *)(r21 + 0x28));
            do {
                    r12 = *(int32_t *)r23;
                    r23 = r23 + 0x4;
                    *(int16_t *)(r9 + r11 * 0x2) = r8 + r12;
                    r11 = r11 + 0x1;
                    *(int32_t *)(r21 + 0x28) = r11;
                    r10 = r10 - 0x1;
            } while (r10 != 0x0);
    }
    if (r22 >= 0x1) {
            r8 = 0x0;
            r9 = var_0;
            r10 = r22;
            r12 = *(int32_t *)(r21 + 0x18);
            do {
                    asm { smaddl     x12, w12, w11, x13 };
                    *(int32_t *)r12 = *(int32_t *)(r20 + r8 * 0x4);
                    *(int32_t *)(r12 + 0x4) = *(int32_t *)(0x4 + r20 + r8 * 0x4);
                    *(int32_t *)(r12 + 0x8) = *(int32_t *)r9;
                    *(int32_t *)(r12 + 0xc) = *(int32_t *)(r19 + r8 * 0x4);
                    *(int32_t *)(r12 + 0x10) = *(int32_t *)(0x4 + r19 + r8 * 0x4);
                    r8 = r8 + 0x2;
                    r12 = *(int32_t *)(r21 + 0x18);
                    r12 = r12 + 0x1;
                    *(int32_t *)(r21 + 0x18) = r12;
            } while (r8 < r10);
    }
    return;
}

-(void)flush {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int32_t *)(r0 + 0x18) != 0x0) {
            [*(r0 + 0x30) bind];
            sub_10031a6f0(0x7);
            glVertexAttribPointer(0x0, 0x2, 0x1406, 0x0, 0x14, *(r19 + 0x10));
            glVertexAttribPointer(0x1, 0x4, 0x1401, 0x1, 0x14, *(r19 + 0x10) + 0x8);
            glVertexAttribPointer(0x2, 0x2, 0x1406, 0x0, 0x14, *(r19 + 0x10) + 0xc);
            glDrawElements(0x4, *(int32_t *)(r19 + 0x28), 0x1403, *(r19 + 0x20));
            *(int32_t *)(r19 + 0x18) = 0x0;
            *(int32_t *)(r19 + 0x28) = 0x0;
    }
    return;
}

@end