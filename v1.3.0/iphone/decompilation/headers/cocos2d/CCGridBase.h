// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCGRIDBASE_H
#define CCGRIDBASE_H


#import <Foundation/Foundation.h>

@class CCTexture2D;
@class CCGrabber;
@class CCGLProgram;

@interface CCGridBase : NSObject {
    BOOL _active;
    BOOL _isTextureFlipped;
    int _directorProjection;
}


@property (nonatomic) BOOL active;
@property (nonatomic) int reuseGrid; // ivar: _reuseGrid
@property (readonly, nonatomic) CGSize gridSize; // ivar: _gridSize
@property (nonatomic) CGPoint step; // ivar: _step
@property (retain, nonatomic) CCTexture2D *texture; // ivar: _texture
@property (retain, nonatomic) CCGrabber *grabber; // ivar: _grabber
@property (nonatomic) BOOL isTextureFlipped;
@property (nonatomic) CCGLProgram *shaderProgram; // ivar: _shaderProgram


-(id)initWithSize:(struct CGSize )arg0 texture:(id)arg1 flippedTexture:(BOOL)arg2 ;
-(id)initWithSize:(struct CGSize )arg0 ;
-(id)description;
-(void)dealloc;
-(void)set2DProjection;
-(void)beforeDraw;
-(void)afterDraw:(id)arg0 ;
-(void)blit;
-(void)reuse;
-(void)calculateVertexPoints;
+(id)gridWithSize:(struct CGSize )arg0 texture:(id)arg1 flippedTexture:(BOOL)arg2 ;
+(id)gridWithSize:(struct CGSize )arg0 ;


@end


#endif