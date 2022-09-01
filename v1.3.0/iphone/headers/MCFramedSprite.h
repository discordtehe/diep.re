// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCFRAMEDSPRITE_H
#define MCFRAMEDSPRITE_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class CCNodeRGBA;
@protocol CCBlendProtocol;

@interface MCFramedSprite : CCNodeRGBA <CCBlendProtocol>

 {
    MCFramedSpriteTile"] _placeSprites;
    _ccColor4B tileColors;
    int _dataType;
    NSMutableArray *_atlasArray;
    int _frameCount;
    BOOL _hasFinishedLoading;
    BOOL _hasBeenInitialized;
    BOOL _cutHorizontalCentralTile;
    BOOL _cutVerticalCentralTile;
    CGSize _importedSize;
    unsigned char _importedOpacity;
    _ccColorThreeB _importedColor;
    CGSize _originalSize;
    NSString *_descriptionName;
    NSString *_spriteSheet;
    NSString *_textureName;
    NSString *_sourceFrame;
    BOOL _useHorizontalTiling;
    BOOL _useVerticalTiling;
    BOOL _lockHorizontalSize;
    BOOL _lockVerticalSize;
    float _leftMargin;
    float _rightMargin;
    float _bottomMargin;
    float _topMargin;
}


@property (nonatomic) int roundType; // ivar: _roundType
@property (nonatomic) _ccBlendFunc blendFunc; // ivar: _blendFunc
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)setLeftMargin:(float)arg0 ;
-(void)setRightMargin:(float)arg0 ;
-(void)setTopMargin:(float)arg0 ;
-(void)setBottomMargin:(float)arg0 ;
-(void)setUseHorizontalTiling:(BOOL)arg0 ;
-(void)setUseVerticalTiling:(BOOL)arg0 ;
-(void)setLockHorizontalSize:(BOOL)arg0 ;
-(void)setLockVerticalSize:(BOOL)arg0 ;
-(void)setSpriteSheet:(id)arg0 ;
-(void)setTextureName:(id)arg0 ;
-(void)setSourceFrame:(id)arg0 ;
-(void)setDataType:(int)arg0 ;
-(void)setSpriteFrame:(id)arg0 ;
-(void)setTopLeftColor:(struct _ccColor4B )arg0 ;
-(void)setTopCenterColor:(struct _ccColor4B )arg0 ;
-(void)setTopRightColor:(struct _ccColor4B )arg0 ;
-(void)setCenterLeftColor:(struct _ccColor4B )arg0 ;
-(void)setCenterColor:(struct _ccColor4B )arg0 ;
-(void)setCenterRightColor:(struct _ccColor4B )arg0 ;
-(void)setBottomLeftColor:(struct _ccColor4B )arg0 ;
-(void)setBottomCenterColor:(struct _ccColor4B )arg0 ;
-(void)setBottomRightColor:(struct _ccColor4B )arg0 ;
-(id)init;
-(id)setupWithProcessedValues:(id)arg0 ;
-(id)initWithDescriptionFileName:(id)arg0 ;
-(id)initWithSpriteSheetFileName:(id)arg0 textureName:(id)arg1 frameName:(id)arg2 horizontalTiling:(BOOL)arg3 verticalTiling:(BOOL)arg4 leftMargin:(float)arg5 rightMargin:(float)arg6 bottomMargin:(float)arg7 topMargin:(float)arg8 lockHorizontalSize:(BOOL)arg9 lockVerticalSize:(float)arg10 ;
-(id)startWithDescriptionFileNameNew;
-(id)startWithDescriptionFileName;
-(id)startWithParameters;
-(id)hashFromSpriteSheetName:(id)arg0 textureName:(id)arg1 frameName:(id)arg2 leftMargin:(float)arg3 rightMargin:(float)arg4 bottomMargin:(float)arg5 andTopMargin:(float)arg6 ;
-(void)dealloc;
-(struct _ccColor4B )tileColorHorizontal:(int)arg0 vertical:(int)arg1 ;
-(void)updateColorAndOpacity;
-(void)updateDisplayedColor:(struct _ccColorThreeB )arg0 ;
-(void)updateDisplayedOpacity:(unsigned char)arg0 ;
-(void)setTileColor:(struct _ccColor4B )arg0 horizontal:(int)arg1 vertical:(int)arg2 ;
-(void)setColor:(struct _ccColorThreeB )arg0 ;
-(void)setOpacity:(unsigned char)arg0 ;
-(void)setContentSize:(struct CGSize )arg0 ;
-(void)resizeMarginsLeft:(*float)arg0 right:(*float)arg1 newLenght:(float)arg2 andOriginalLenght:(float)arg3 ;
-(void)checkMarginsLeft:(*float)arg0 right:(*float)arg1 andLenght:(float)arg2 ;
-(float)clampValue:(float)arg0 ;
-(id)processDictionary:(id)arg0 withHash:(id)arg1 ;
-(id)processParametersWithSpriteSheetName:(id)arg0 textureName:(id)arg1 sourceFrame:(id)arg2 leftMargin:(float)arg3 rightMargin:(float)arg4 bottomMargin:(float)arg5 topMargin:(float)arg6 ;
-(void)configWithProcessedValues:(id)arg0 ;
-(int)calAproximatedSize:(float)arg0 withPreference:(int)arg1 andUnit:(float)arg2 ;
-(void)resizeTilesIfNeeded:(struct CGSize )arg0 ;
-(struct CGSize )requestSize:(struct CGSize )arg0 round:(int)arg1 ;
-(void)draw;
-(id)texture;
-(void)didLoadFromCCB;
+(id)framedSpriteWithDescriptionFileName:(id)arg0 ;
+(id)framedSpriteWithSpriteSheetFileName:(id)arg0 textureName:(id)arg1 frameName:(id)arg2 horizontalTiling:(BOOL)arg3 verticalTiling:(BOOL)arg4 leftMargin:(float)arg5 rightMargin:(float)arg6 bottomMargin:(float)arg7 topMargin:(float)arg8 lockHorizontalSize:(BOOL)arg9 lockVerticalSize:(float)arg10 ;
+(void)clearCache;
+(id)placeToString:(int)arg0 ;


@end


#endif