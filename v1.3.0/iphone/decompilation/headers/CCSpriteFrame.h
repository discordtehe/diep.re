// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCSPRITEFRAME_H
#define CCSPRITEFRAME_H


#import <Foundation/Foundation.h>

@class CCTexture2D;
@protocol NSCopying;

@interface CCSpriteFrame : NSObject <NSCopying>

 {
    CGRect _rect;
    CGRect _rectInPixels;
    CCTexture2D *_texture;
}


@property (nonatomic) CGRect rect;
@property (nonatomic) CGRect rectInPixels;
@property (nonatomic) BOOL rotated; // ivar: _rotated
@property (nonatomic) CGPoint offset; // ivar: _offset
@property (nonatomic) CGPoint offsetInPixels; // ivar: _offsetInPixels
@property (nonatomic) CGSize originalSize; // ivar: _originalSize
@property (nonatomic) CGSize originalSizeInPixels; // ivar: _originalSizeInPixels
@property (nonatomic) CGSize spritesheetSize; // ivar: _spritesheetSize
@property (retain, nonatomic) CCTexture2D *texture;
@property (readonly, retain, nonatomic) NSString *textureFilename; // ivar: _textureFilename


-(id)initWithTexture:(id)arg0 rect:(struct CGRect )arg1 ;
-(id)initWithTextureFilename:(id)arg0 rect:(struct CGRect )arg1 ;
-(id)initWithTexture:(id)arg0 rectInPixels:(struct CGRect )arg1 rotated:(BOOL)arg2 offset:(struct CGPoint )arg3 originalSize:(struct CGSize )arg4 ;
-(id)initWithTextureFilename:(id)arg0 rectInPixels:(struct CGRect )arg1 rotated:(BOOL)arg2 offset:(struct CGPoint )arg3 originalSize:(struct CGSize )arg4 ;
-(id)description;
-(void)dealloc;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)frameWithTexture:(id)arg0 rect:(struct CGRect )arg1 ;
+(id)frameWithTextureFilename:(id)arg0 rect:(struct CGRect )arg1 ;
+(id)frameWithTexture:(id)arg0 rectInPixels:(struct CGRect )arg1 rotated:(BOOL)arg2 offset:(struct CGPoint )arg3 originalSize:(struct CGSize )arg4 ;
+(id)frameWithTextureFilename:(id)arg0 rectInPixels:(struct CGRect )arg1 rotated:(BOOL)arg2 offset:(struct CGPoint )arg3 originalSize:(struct CGSize )arg4 ;


@end


#endif