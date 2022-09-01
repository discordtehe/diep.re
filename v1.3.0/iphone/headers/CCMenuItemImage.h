// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCMENUITEMIMAGE_H
#define CCMENUITEMIMAGE_H



@class CCMenuItemSprite;

@interface CCMenuItemImage : CCMenuItemSprite



-(id)initFromNormalImage:(id)arg0 selectedImage:(id)arg1 disabledImage:(id)arg2 target:(id)arg3 selector:(SEL)arg4 ;
-(id)initFromNormalImage:(id)arg0 selectedImage:(id)arg1 disabledImage:(id)arg2 block:(id)arg3 ;
-(id)initWithNormalImage:(id)arg0 selectedImage:(id)arg1 disabledImage:(id)arg2 target:(id)arg3 selector:(SEL)arg4 ;
-(id)initWithNormalImage:(id)arg0 selectedImage:(id)arg1 disabledImage:(id)arg2 block:(id)arg3 ;
-(void)setNormalSpriteFrame:(id)arg0 ;
-(void)setSelectedSpriteFrame:(id)arg0 ;
-(void)setDisabledSpriteFrame:(id)arg0 ;
-(void)setOpacity:(unsigned char)arg0 ;
-(unsigned char)getOpacity;
+(id)itemFromNormalImage:(id)arg0 selectedImage:(id)arg1 ;
+(id)itemFromNormalImage:(id)arg0 selectedImage:(id)arg1 target:(id)arg2 selector:(SEL)arg3 ;
+(id)itemFromNormalImage:(id)arg0 selectedImage:(id)arg1 disabledImage:(id)arg2 target:(id)arg3 selector:(SEL)arg4 ;
+(id)itemFromNormalImage:(id)arg0 selectedImage:(id)arg1 block:(id)arg2 ;
+(id)itemFromNormalImage:(id)arg0 selectedImage:(id)arg1 disabledImage:(id)arg2 block:(id)arg3 ;
+(id)itemWithNormalImage:(id)arg0 selectedImage:(id)arg1 ;
+(id)itemWithNormalImage:(id)arg0 selectedImage:(id)arg1 target:(id)arg2 selector:(SEL)arg3 ;
+(id)itemWithNormalImage:(id)arg0 selectedImage:(id)arg1 disabledImage:(id)arg2 ;
+(id)itemWithNormalImage:(id)arg0 selectedImage:(id)arg1 disabledImage:(id)arg2 target:(id)arg3 selector:(SEL)arg4 ;
+(id)itemWithNormalImage:(id)arg0 selectedImage:(id)arg1 block:(id)arg2 ;
+(id)itemWithNormalImage:(id)arg0 selectedImage:(id)arg1 disabledImage:(id)arg2 block:(id)arg3 ;


@end


#endif