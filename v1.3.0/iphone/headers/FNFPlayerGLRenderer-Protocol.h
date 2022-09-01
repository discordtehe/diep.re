// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FNFPlayerGLRenderer


-(BOOL)setupGLState;
-(BOOL)drawFrame:(BOOL)arg0 presentationRect:(struct CGSize )arg1 backingWidth:(int)arg2 backingHeight:(int)arg3 frameBuffer:(unsigned int)arg4 videoGravity:(id)arg5 rotation:(CGFloat)arg6 layerBounds:(struct CGRect )arg7 transform:(struct CGAffineTransform )arg8 colorConversion:(NSInteger)arg9 ;
-(void)restoreGLState;
-(void)invalidate;

@end

