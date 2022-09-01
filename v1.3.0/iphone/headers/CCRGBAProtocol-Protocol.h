// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol CCRGBAProtocol

@property (nonatomic) _ccColorThreeB color;
@property (readonly, nonatomic) _ccColorThreeB displayedColor;
@property (nonatomic, getter=isCascadeColorEnabled) BOOL cascadeColorEnabled;
@property (nonatomic) unsigned char opacity;
@property (readonly, nonatomic) unsigned char displayedOpacity;
@property (nonatomic, getter=isCascadeOpacityEnabled) BOOL cascadeOpacityEnabled;
@property (nonatomic) _ccColorThreeB emission;
@property (readonly, nonatomic) _ccColorThreeB displayedEmission;
@property (nonatomic, getter=isCascadeEmissionEnabled) BOOL cascadeEmissionEnabled;

-(void)updateDisplayedColor:(struct _ccColorThreeB )arg0 ;
-(void)updateDisplayedOpacity:(unsigned char)arg0 ;
-(void)updateDisplayedEmission:(struct _ccColorThreeB )arg0 ;
-(struct _ccColorThreeB )color;
-(void)setColor:(struct _ccColorThreeB )arg0 ;
-(struct _ccColorThreeB )displayedColor;
-(BOOL)isCascadeColorEnabled;
-(void)setCascadeColorEnabled:(BOOL)arg0 ;
-(unsigned char)opacity;
-(void)setOpacity:(unsigned char)arg0 ;
-(unsigned char)displayedOpacity;
-(BOOL)isCascadeOpacityEnabled;
-(void)setCascadeOpacityEnabled:(BOOL)arg0 ;
-(struct _ccColorThreeB )emission;
-(void)setEmission:(struct _ccColorThreeB )arg0 ;
-(struct _ccColorThreeB )displayedEmission;
-(BOOL)isCascadeEmissionEnabled;
-(void)setCascadeEmissionEnabled:(BOOL)arg0 ;

@optional
-(void)setOpacityModifyRGB:(BOOL)arg0 ;
-(BOOL)doesOpacityModifyRGB;
-(void)cascadeColor;
-(void)cascadeOpacity;
-(void)cascadeEmission;
@end

