// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef REPLACEABLESPRITE_H
#define REPLACEABLESPRITE_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class CCNodeRGBA;
@class CCSprite;
@class CCTexture2D;

@interface ReplaceableSprite : CCNodeRGBA {
    CCSprite *mTemporarySprite;
    CCSprite *mFinalSprite;
    NSDictionary *mFinalSpriteDefinition;
    BOOL mResetOpacity;
}


@property (readonly) NSString *finalTextureName;
@property (readonly) CCTexture2D *texture;
@property (readonly) CCSprite *sprite;


-(id)initWithTemporarySprite:(id)arg0 andFinalTextureName:(id)arg1 resetOpacity:(BOOL)arg2 ;
-(id)initWithTemporarySprite:(id)arg0 andFinalSpriteDefinition:(id)arg1 resetOpacity:(BOOL)arg2 ;
-(id)initWithTemporarySprite:(id)arg0 andFinalSpriteDefinition:(id)arg1 ;
-(id)initWithTemporarySprite:(id)arg0 andFinalTextureName:(id)arg1 ;
-(void)dealloc;
-(void)onFileDownloaded:(id)arg0 ;
-(void)loadFinalSprite;
-(id)createFinalSprite;
-(void)releaseTemporarySprite;
-(void)updateColor;
-(void)setColor:(struct _ccColorThreeB )arg0 ;
-(void)setOpacity:(unsigned char)arg0 ;
+(id)spriteWithTemporarySprite:(id)arg0 andFinalTextureName:(id)arg1 ;
+(id)spriteWithTemporarySprite:(id)arg0 andFinalSpriteDefinition:(id)arg1 ;


@end


#endif