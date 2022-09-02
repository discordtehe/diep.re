@implementation FBAdReportingOptionsViewController

-(void *)initWithTitle:(void *)arg2 heading:(void *)arg3 items:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [self initWithTitle:r22 heading:r20 items:arg4 layoutType:0x0];
    [r20 release];
    [r22 release];
    r0 = r19;
    return r0;
}

-(void *)onDismiss {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onDismiss)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_items, 0x0);
    objc_storeStrong((int64_t *)&self->_heading, 0x0);
    objc_storeStrong((int64_t *)&self->_titleText, 0x0);
    objc_storeStrong((int64_t *)&self->_bodyView, 0x0);
    objc_storeStrong((int64_t *)&self->_onSelect, 0x0);
    objc_storeStrong((int64_t *)&self->_onBack, 0x0);
    objc_storeStrong((int64_t *)&self->_onDismiss, 0x0);
    return;
}

-(void *)initWithTitle:(void *)arg2 heading:(void *)arg3 items:(void *)arg4 layoutType:(long long)arg5 {
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
    r23 = arg5;
    r24 = arg4;
    r25 = arg3;
    r26 = arg2;
    r19 = [arg2 retain];
    r20 = [r25 retain];
    r21 = [r24 retain];
    r0 = [[&var_50 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_titleText, r26);
            objc_storeStrong((int64_t *)&r22->_heading, r25);
            objc_storeStrong((int64_t *)&r22->_items, r24);
            [r22 setupBodyViewWithLayoutType:r23];
            r23 = [[r22 bodyView] retain];
            [r22 setView:r23];
            [r23 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)setupBodyViewWithLayoutType:(long long)arg2 {
    r21 = [FBAdReportingOptionsContentView alloc];
    r22 = [[self titleText] retain];
    r23 = [[self heading] retain];
    r24 = [[self items] retain];
    r21 = [r21 initWithTitle:r22 heading:r23 items:r24];
    [self setBodyView:r21];
    [r21 release];
    [r24 release];
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
    [r0 setOnBack:&var_98];
    [r0 release];
    objc_copyWeak(&var_C0 + 0x20, &saved_fp - 0x48);
    r0 = [self bodyView];
    r0 = [r0 retain];
    [r0 setOnSelect:&var_C0];
    [r0 release];
    objc_destroyWeak(&var_C0 + 0x20);
    objc_destroyWeak(&var_98 + 0x20);
    objc_destroyWeak(&var_70 + 0x20);
    objc_destroyWeak(&saved_fp - 0x48);
    return;
}

-(void)setOnDismiss:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)onBack {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onBack)), 0x0);
    return r0;
}

-(void)setOnBack:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)onSelect {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onSelect)), 0x0);
    return r0;
}

-(void *)bodyView {
    r0 = self->_bodyView;
    return r0;
}

-(void)setOnSelect:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setBodyView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bodyView, arg2);
    return;
}

-(void *)titleText {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_titleText)), 0x0);
    return r0;
}

-(void *)heading {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_heading)), 0x0);
    return r0;
}

-(void)setTitleText:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setHeading:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)items {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_items)), 0x0);
    return r0;
}

-(void)setItems:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end