// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FRAMEDSPRITE_H
#define FRAMEDSPRITE_H


#import <Foundation/Foundation.h>

@class CCNodeRGBA;
@class CCTextureAtlas;

@interface FramedSprite : CCNodeRGBA {
    FramedSpriteTile"] _placeSprites;
    _ccBlendFunc _blendFunc;
    int _frameCount;
    BOOL _allowVerticalScale;
    BOOL _allowHorizontalScale;
    BOOL _shouldFix;
}


@property (nonatomic) _ccColorThreeB color;
@property (nonatomic) unsigned char opacity;
@property (readonly, nonatomic) CCTextureAtlas *atlas; // ivar: _atlas
@property (retain, nonatomic) NSString *descriptionName; // ivar: _descriptionName


-(id)init;
-(void)updateDisplayedColor:(struct _ccColorThreeB )arg0 ;
-(void)updateDisplayedOpacity:(unsigned char)arg0 ;
-(void)setupWithContentsOfFile:(id)arg0 ;
-(void)setupWithDictionary:(id)arg0 ;
-(void)dealloc;
-(int)calAproximatedSize:(float)arg0 withPreference:(int)arg1 andUnit:(float)arg2 ;
-(struct CGSize )requestSize:(struct CGSize )arg0 round:(int)arg1 ;
-(struct CGSize )calcSizeForRepetition:(struct CGSize )arg0 round:(int)arg1 ;
-(void)draw;
-(id)texture;
-(void)visit;
-(void)didLoadFromCCB;
-(void)setAnchorPoint:(struct CGPoint )arg0 ;
-(void)setBlendFunc:(struct _ccBlendFunc )arg0 ;
+(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > )placeToString:(int)arg0 ;
+(id)framedSpriteWithContentsOfFile:(id)arg0 ;
+(id)framedSpriteWithDictionary:(id)arg0 ;


@end


#endif