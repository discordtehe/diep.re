// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCMENUITEMSPRITE_H
#define MCMENUITEMSPRITE_H

@class CCNode<CCRGBAProtocol>;

#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class MCMenuItem;
@protocol CCRGBAProtocol;

@interface MCMenuItemSprite : MCMenuItem <CCRGBAProtocol>

 {
    NSMutableDictionary *mColorsDict;
    _ccColorThreeB _highlightColor;
    _ccColorThreeB _originalColor;
    BOOL mHasHighlightColor;
}


@property (nonatomic) CCNode<CCRGBAProtocol> *normalImage; // ivar: normalImage_
@property (nonatomic) CCNode<CCRGBAProtocol> *selectedImage; // ivar: selectedImage_
@property (nonatomic) CCNode<CCRGBAProtocol> *disabledImage; // ivar: disabledImage_
@property (nonatomic) BOOL darkenedOnDisable; // ivar: mDarkenedOnDisable
@property (nonatomic) float darkenMultiplayer; // ivar: mDarkenMultiplayer
@property (nonatomic) _ccColorThreeB color;
@property (readonly, nonatomic) _ccColorThreeB displayedColor;
@property (nonatomic, getter=isCascadeColorEnabled) BOOL cascadeColorEnabled;
@property (nonatomic) unsigned char opacity;
@property (readonly, nonatomic) unsigned char displayedOpacity;
@property (nonatomic, getter=isCascadeOpacityEnabled) BOOL cascadeOpacityEnabled;
@property (nonatomic) _ccColorThreeB emission;
@property (readonly, nonatomic) _ccColorThreeB displayedEmission;
@property (nonatomic, getter=isCascadeEmissionEnabled) BOOL cascadeEmissionEnabled;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 disabledSprite:(id)arg2 target:(id)arg3 selector:(SEL)arg4 ;
-(void)dealloc;
-(id)initWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 disabledSprite:(id)arg2 block:(id)arg3 ;
-(void)applyNormalImageColorMultiplierRecursive:(float)arg0 node:(id)arg1 ;
-(void)applyNormalImageColorMultiplier:(float)arg0 ;
-(void)selected;
-(void)unselected;
-(void)setIsEnabled:(BOOL)arg0 ;
-(BOOL)simulateTouch;
-(void)removeChild:(id)arg0 cleanup:(BOOL)arg1 ;
-(void)removeAllChildrenWithCleanup:(BOOL)arg0 ;
-(void)setNormalSpriteFrame:(id)arg0 ;
-(void)setSelectedSpriteFrame:(id)arg0 ;
-(void)setDisabledSpriteFrame:(id)arg0 ;
+(id)itemWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 ;
+(id)itemWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 target:(id)arg2 selector:(SEL)arg3 ;
+(id)itemWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 disabledSprite:(id)arg2 target:(id)arg3 selector:(SEL)arg4 ;
+(id)itemWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 block:(id)arg2 ;
+(id)itemWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 disabledSprite:(id)arg2 block:(id)arg3 ;
+(void)initialize;
+(void)addColorRecursionException:(Class)arg0 ;


@end


#endif