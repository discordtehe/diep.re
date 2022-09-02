@implementation APMAudienceComparisonValues

-(void *)comparisonValue {
    r0 = self->_comparisonValue;
    return r0;
}

-(void)setComparisonValue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_comparisonValue, arg2);
    return;
}

-(void *)maxComparisonValue {
    r0 = self->_maxComparisonValue;
    return r0;
}

-(void)setMaxComparisonValue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_maxComparisonValue, arg2);
    return;
}

-(void)setMinComparisonValue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_minComparisonValue, arg2);
    return;
}

-(void *)minComparisonValue {
    r0 = self->_minComparisonValue;
    return r0;
}

-(bool)isValid {
    r0 = *(int8_t *)(int64_t *)&self->_valid;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_minComparisonValue, 0x0);
    objc_storeStrong((int64_t *)&self->_maxComparisonValue, 0x0);
    objc_storeStrong((int64_t *)&self->_comparisonValue, 0x0);
    return;
}

-(void)setValid:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_valid = arg2;
    return;
}

@end