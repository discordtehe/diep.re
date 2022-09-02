@implementation PRF

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = 0x5f;
            r0 = malloc(0x5f);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(S));
            r8 = r19 + r8;
            *r8 = r0;
            r9 = sign_extend_64(*(int32_t *)ivar_offset(i));
            r9 = r19 + r9;
            *(int8_t *)r9 = r20;
            do {
                    *(int8_t *)r9 = r20 - 0x1;
                    *(int8_t *)(*r8 + sign_extend_64(r20 - 0x1)) = *(int8_t *)(0x100bfd363 + sign_extend_64(r20 - 0x1));
                    r11 = *(int8_t *)r9;
                    *(int8_t *)r9 = r11 - 0x1;
                    *(int8_t *)(*r8 + sign_extend_64(r11 - 0x1)) = *(int8_t *)(0x100bfd363 + sign_extend_64(r11 - 0x1));
                    r11 = *(int8_t *)r9;
                    *(int8_t *)r9 = r11 - 0x1;
                    *(int8_t *)(*r8 + sign_extend_64(r11 - 0x1)) = *(int8_t *)(0x100bfd363 + sign_extend_64(r11 - 0x1));
                    r11 = *(int8_t *)r9;
                    *(int8_t *)r9 = r11 - 0x1;
                    *(int8_t *)(*r8 + sign_extend_64(r11 - 0x1)) = *(int8_t *)(0x100bfd363 + sign_extend_64(r11 - 0x1));
                    r11 = *(int8_t *)r9;
                    r13 = *(int8_t *)(0x100bfd363 + sign_extend_64(r11 - 0x1));
                    *(int8_t *)r9 = r11 - 0x1;
                    *(int8_t *)(*r8 + sign_extend_64(r11 - 0x1)) = r13;
                    r20 = sign_extend_64(*(int8_t *)r9);
            } while (r20 > 0x0);
            *(int8_t *)r9 = 0x5f;
            r10 = sign_extend_64(*(int32_t *)ivar_offset(j));
            r10 = r19 + r10;
            *(int8_t *)r10 = 0x5f;
            r12 = sign_extend_64(*(int32_t *)ivar_offset(temp));
            r15 = *(int8_t *)r9;
            do {
                    r1 = @selector(init);
                    r13 = *qword_1011dea38;
                    r11 = *(int32_t *)dword_1011dea30;
                    *(int8_t *)r9 = r15 - 0x1;
                    *(int8_t *)r10 = *(int8_t *)(0x100bfd14a + *(int8_t *)(r13 + (sign_extend_64(r15 - 0x1) - sign_extend_64(r15 - 0x1) / r11 * r11 << r1)) + sign_extend_64(*(int8_t *)(*r8 + sign_extend_64(r15 - 0x1))) + sign_extend_64(*(int8_t *)r10));
                    *(int8_t *)(r19 + r12) = *(int8_t *)(*r8 + sign_extend_64(*(int8_t *)r9));
                    r15 = *r8;
                    *(int8_t *)(r15 + sign_extend_64(*(int8_t *)r9)) = *(int8_t *)(r15 + sign_extend_64(*(int8_t *)r10));
                    *(int8_t *)(*r8 + sign_extend_64(*(int8_t *)r10)) = *(int8_t *)(r19 + r12);
                    r15 = *(int8_t *)r9;
                    *(int8_t *)r9 = r15 - 0x1;
                    *(int8_t *)r10 = *(int8_t *)(0x100bfd14a + *(int8_t *)(r13 + (sign_extend_64(r15 - 0x1) - sign_extend_64(r15 - 0x1) / r11 * r11 << r1)) + sign_extend_64(*(int8_t *)(*r8 + sign_extend_64(r15 - 0x1))) + sign_extend_64(*(int8_t *)r10));
                    *(int8_t *)(r19 + r12) = *(int8_t *)(*r8 + sign_extend_64(*(int8_t *)r9));
                    r15 = *r8;
                    *(int8_t *)(r15 + sign_extend_64(*(int8_t *)r9)) = *(int8_t *)(r15 + sign_extend_64(*(int8_t *)r10));
                    *(int8_t *)(*r8 + sign_extend_64(*(int8_t *)r10)) = *(int8_t *)(r19 + r12);
                    r15 = *(int8_t *)r9;
                    *(int8_t *)r9 = r15 - 0x1;
                    *(int8_t *)r10 = *(int8_t *)(0x100bfd14a + *(int8_t *)(r13 + (sign_extend_64(r15 - 0x1) - sign_extend_64(r15 - 0x1) / r11 * r11 << r1)) + sign_extend_64(*(int8_t *)(*r8 + sign_extend_64(r15 - 0x1))) + sign_extend_64(*(int8_t *)r10));
                    *(int8_t *)(r19 + r12) = *(int8_t *)(*r8 + sign_extend_64(*(int8_t *)r9));
                    r15 = *r8;
                    *(int8_t *)(r15 + sign_extend_64(*(int8_t *)r9)) = *(int8_t *)(r15 + sign_extend_64(*(int8_t *)r10));
                    *(int8_t *)(*r8 + sign_extend_64(*(int8_t *)r10)) = *(int8_t *)(r19 + r12);
                    r15 = *(int8_t *)r9;
                    *(int8_t *)r9 = r15 - 0x1;
                    *(int8_t *)r10 = *(int8_t *)(0x100bfd14a + *(int8_t *)(r13 + (sign_extend_64(r15 - 0x1) - sign_extend_64(r15 - 0x1) / r11 * r11 << r1)) + sign_extend_64(*(int8_t *)(*r8 + sign_extend_64(r15 - 0x1))) + sign_extend_64(*(int8_t *)r10));
                    *(int8_t *)(r19 + r12) = *(int8_t *)(*r8 + sign_extend_64(*(int8_t *)r9));
                    r15 = *r8;
                    *(int8_t *)(r15 + sign_extend_64(*(int8_t *)r9)) = *(int8_t *)(r15 + sign_extend_64(*(int8_t *)r10));
                    *(int8_t *)(*r8 + sign_extend_64(*(int8_t *)r10)) = *(int8_t *)(r19 + r12);
                    r15 = *(int8_t *)r9;
                    *(int8_t *)r9 = r15 - 0x1;
                    *(int8_t *)r10 = *(int8_t *)(0x100bfd14a + *(int8_t *)(r13 + (sign_extend_64(r15 - 0x1) - sign_extend_64(r15 - 0x1) / r11 * r11 << r1)) + sign_extend_64(*(int8_t *)(*r8 + sign_extend_64(r15 - 0x1))) + sign_extend_64(*(int8_t *)r10));
                    *(int8_t *)(r19 + r12) = *(int8_t *)(*r8 + sign_extend_64(*(int8_t *)r9));
                    r15 = *r8;
                    *(int8_t *)(r15 + sign_extend_64(*(int8_t *)r9)) = *(int8_t *)(r15 + sign_extend_64(*(int8_t *)r10));
                    *(int8_t *)(*r8 + sign_extend_64(*(int8_t *)r10)) = *(int8_t *)(r19 + r12);
                    r15 = sign_extend_64(*(int8_t *)r9);
            } while (r15 > 0x0);
            *(int8_t *)r10 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(unsigned char)enc:(unsigned char)arg2 {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(i));
    r9 = sign_extend_64(*(int8_t *)(self + r8));
    r9 = sign_extend_64(*(int8_t *)(r9 + 0x100bfd14b));
    *(int8_t *)(self + r8) = r9;
    r11 = sign_extend_64(*(int32_t *)ivar_offset(j));
    r12 = sign_extend_64(*(int8_t *)(self + r11));
    r13 = sign_extend_64(*(int32_t *)ivar_offset(S));
    *(int8_t *)(self + r11) = *(int8_t *)(0x100bfd14a + sign_extend_64(*(int8_t *)(*(self + r13) + r9)) + r12);
    r9 = *(self + r13);
    r9 = *(int8_t *)(r9 + sign_extend_64(*(int8_t *)(self + r8)));
    r12 = sign_extend_64(*(int32_t *)ivar_offset(temp));
    *(int8_t *)(self + r12) = r9;
    r9 = *(self + r13);
    *(int8_t *)(r9 + sign_extend_64(*(int8_t *)(self + r8))) = *(int8_t *)(r9 + sign_extend_64(*(int8_t *)(self + r11)));
    *(int8_t *)(*(self + r13) + sign_extend_64(*(int8_t *)(self + r11))) = *(int8_t *)(self + r12);
    r9 = *(self + r13);
    r0 = *(int8_t *)(0x100bfd285 + sign_extend_64(*(int8_t *)(r9 + sign_extend_64(*(int8_t *)(0x100bfd14a + sign_extend_64(*(int8_t *)(r9 + sign_extend_64(*(int8_t *)(self + r11)))) + sign_extend_64(*(int8_t *)(r9 + sign_extend_64(*(int8_t *)(self + r8)))))))) + arg2);
    return r0;
}

@end