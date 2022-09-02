@implementation CCCallFunc

+(void *)actionWithTarget:(void *)arg2 selector:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithTarget:arg2 selector:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithTarget:(void *)arg2 selector:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 setTargetCallback:r20];
            r21->_selector = r19;
    }
    r0 = r21;
    return r0;
}

-(void *)description {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [self class];
    r22 = r19->_tag;
    r0 = r19->_selector;
    if (r0 != 0x0) {
            r0 = NSStringFromSelector(r0);
    }
    else {
            r0 = @"nil";
    }
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)dealloc {
    [self->_targetCallback release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self class];
    r0 = [r0 allocWithZone:arg2];
    r0 = [r0 initWithTarget:self->_targetCallback selector:self->_selector];
    return r0;
}

-(void)update:(double)arg2 {
    [self execute];
    return;
}

-(void)execute {
    r0 = self;
    if (r0->_selector != 0x0) {
            [r0->_targetCallback performSelector:r2];
    }
    return;
}

-(void *)targetCallback {
    r0 = self->_targetCallback;
    return r0;
}

-(void)setTargetCallback:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end