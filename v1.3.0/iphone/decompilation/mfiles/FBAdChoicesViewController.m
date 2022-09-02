@implementation FBAdChoicesViewController

-(void *)initWithLayoutType:(long long)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setupBodyViewWithLayoutType:r20];
            r20 = [[r19 bodyView] retain];
            [r19 setView:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void *)init {
    r0 = [self initWithLayoutType:0x0];
    return r0;
}

-(void)viewDidLoad {
    [[&var_20 super] viewDidLoad];
    [self setupTapRecognizer];
    return;
}

-(void)setupBodyViewWithLayoutType:(long long)arg2 {
    r21 = [FBAdChoicesContentView new];
    [self setBodyView:r21];
    [r21 release];
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
    [r0 setOnOptionSelected:&var_98];
    [r0 release];
    objc_destroyWeak(&var_98 + 0x20);
    objc_destroyWeak(&var_70 + 0x20);
    objc_destroyWeak(&saved_fp - 0x48);
    return;
}

-(void)setupTapRecognizer {
    r20 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleDismissTap:)];
    r0 = [self view];
    r0 = [r0 retain];
    [r0 addGestureRecognizer:r20];
    [r0 release];
    [r20 release];
    return;
}

-(void)handleDismissTap:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r20 = [[r19 view] retain];
    [r21 locationInView:r20];
    [r21 release];
    [r20 release];
    r0 = [r19 bodyView];
    r0 = [r0 retain];
    r1 = @selector(frame);
    r21 = CGRectContainsPoint(objc_msgSend(r0, r1), r1);
    [r0 release];
    if ((r21 & 0x1) == 0x0) {
            [r19 dismissViewControllerAnimated:0x1 completion:&var_58];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adReportingConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_bodyView, 0x0);
    objc_storeStrong((int64_t *)&self->_onDismiss, 0x0);
    objc_storeStrong((int64_t *)&self->_onOptionSelected, 0x0);
    return;
}

-(void)setOnOptionSelected:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)onOptionSelected {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onOptionSelected)), 0x0);
    return r0;
}

-(void *)onDismiss {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onDismiss)), 0x0);
    return r0;
}

-(void)setOnDismiss:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setBodyView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bodyView, arg2);
    return;
}

-(void *)bodyView {
    r0 = self->_bodyView;
    return r0;
}

-(void *)adReportingConfig {
    r0 = self->_adReportingConfig;
    return r0;
}

-(void)setAdReportingConfig:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adReportingConfig, arg2);
    return;
}

@end