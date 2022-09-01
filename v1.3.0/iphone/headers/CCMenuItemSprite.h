// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCMENUITEMSPRITE_H
#define CCMENUITEMSPRITE_H

@class CCNode<CCRGBAProtocol>;

#import <Foundation/Foundation.h>

@class CCMenuItem;
@protocol CCRGBAProtocol;

@interface CCMenuItemSprite : CCMenuItem <CCRGBAProtocol>



@property (nonatomic) CCNode<CCRGBAProtocol> *normalImage; // ivar: _normalImage
@property (nonatomic) CCNode<CCRGBAProtocol> *selectedImage; // ivar: _selectedImage
@property (nonatomic) CCNode<CCRGBAProtocol> *disabledImage; // ivar: _disabledImage
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


-(id)initFromNormalSprite:(id)arg0 selectedSprite:(id)arg1 disabledSprite:(id)arg2 target:(id)arg3 selector:(SEL)arg4 ;
-(id)initFromNormalSprite:(id)arg0 selectedSprite:(id)arg1 disabledSprite:(id)arg2 block:(id)arg3 ;
-(id)initWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 disabledSprite:(id)arg2 target:(id)arg3 selector:(SEL)arg4 ;
-(id)initWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 disabledSprite:(id)arg2 block:(id)arg3 ;
-(void)selected;
-(void)unselected;
-(void)setIsEnabled:(BOOL)arg0 ;
-(void)updateImagesVisibility;
+(id)itemFromNormalSprite:(id)arg0 selectedSprite:(id)arg1 ;
+(id)itemFromNormalSprite:(id)arg0 selectedSprite:(id)arg1 target:(id)arg2 selector:(SEL)arg3 ;
+(id)itemFromNormalSprite:(id)arg0 selectedSprite:(id)arg1 disabledSprite:(id)arg2 target:(id)arg3 selector:(SEL)arg4 ;
+(id)itemFromNormalSprite:(id)arg0 selectedSprite:(id)arg1 block:(id)arg2 ;
+(id)itemFromNormalSprite:(id)arg0 selectedSprite:(id)arg1 disabledSprite:(id)arg2 block:(id)arg3 ;
+(id)itemWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 ;
+(id)itemWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 target:(id)arg2 selector:(SEL)arg3 ;
+(id)itemWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 disabledSprite:(id)arg2 target:(id)arg3 selector:(SEL)arg4 ;
+(id)itemWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 block:(id)arg2 ;
+(id)itemWithNormalSprite:(id)arg0 selectedSprite:(id)arg1 disabledSprite:(id)arg2 block:(id)arg3 ;


@end


#endif