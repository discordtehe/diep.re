@implementation FBAdHiddenViewController

-(void *)initWithReason:(void *)arg2 logoImage:(void *)arg3 flowType:(long long)arg4 {
    r21 = [arg2 retain];
    r19 = [self initWithReason:r21 logoImage:arg3 flowType:0x0];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void *)initWithReason:(void *)arg2 logoImage:(void *)arg3 flowType:(long long)arg4 layoutType:(long long)arg5 {
    r31 = r31 - 0x60;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg5;
    r23 = arg4;
    r24 = arg3;
    r25 = arg2;
    r19 = [arg2 retain];
    r20 = [r24 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_reason, r25);
            objc_storeStrong((int64_t *)&r21->_logoImage, r24);
            r21->_flowType = r23;
            [r21 setupBodyViewWithLayoutType:r22];
            r22 = [[r21 bodyView] retain];
            [r21 setView:r22];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)viewDidLoad {
    [[&var_10 super] viewDidLoad];
    return;
}

-(void)setupBodyViewWithLayoutType:(long long)arg2 {
    r21 = [FBAdHiddenContentView alloc];
    r22 = [[self reason] retain];
    r23 = [[self logoImage] retain];
    r21 = [r21 initWithReason:r22 logoImage:r23 flowType:[self flowType]];
    [self setBodyView:r21];
    [r21 release];
    [r23 release];
    [r22 release];
    r0 = [self bodyView];
    r0 = [r0 retain];
    [r0 setLayoutType:arg2];
    [r0 release];
    objc_initWeak(&saved_fp - 0x48, self);
    objc_copyWeak(&var_70 + 0x20, &saved_fp - 0x48);
    r0 = [self bodyView];
    r0 = [r0 retain];
    [r0 setOnDismiss:&var_70];
    [r0 release];
    objc_copyWeak(&var_98 + 0x20, &saved_fp - 0x48);
    r0 = [self bodyView];
    r0 = [r0 retain];
    [r0 setOnManageAdSettings:&var_98];
    [r0 release];
    objc_destroyWeak(&var_98 + 0x20);
    objc_destroyWeak(&var_70 + 0x20);
    objc_destroyWeak(&saved_fp - 0x48);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_reason, 0x0);
    objc_storeStrong((int64_t *)&self->_logoImage, 0x0);
    objc_storeStrong((int64_t *)&self->_bodyView, 0x0);
    objc_storeStrong((int64_t *)&self->_onManageAdSettings, 0x0);
    objc_storeStrong((int64_t *)&self->_onDismiss, 0x0);
    return;
}

-(void)setOnDismiss:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)onDismiss {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onDismiss)), 0x0);
    return r0;
}

-(void)setOnManageAdSettings:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)onManageAdSettings {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onManageAdSettings)), 0x0);
    return r0;
}

-(void *)bodyView {
    r0 = self->_bodyView;
    return r0;
}

-(void)setBodyView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bodyView, arg2);
    return;
}

-(void *)logoImage {
    r0 = self->_logoImage;
    return r0;
}

-(void)setLogoImage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_logoImage, arg2);
    return;
}

-(void)setReason:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)reason {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_reason)), 0x0);
    return r0;
}

-(long long)flowType {
    r0 = self->_flowType;
    return r0;
}

-(void)setFlowType:(long long)arg2 {
    self->_flowType = arg2;
    return;
}

@end