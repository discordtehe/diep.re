// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTEXTUREATLAS_H
#define CCTEXTUREATLAS_H


#import <Foundation/Foundation.h>

@class CCTexture2D;

@interface CCTextureAtlas : NSObject {
    *unsigned short _indices;
    unsigned int _buffersVBO;
    BOOL _dirty;
    unsigned int _VAOname;
}


@property (readonly, nonatomic) NSUInteger totalQuads; // ivar: _totalQuads
@property (readonly, nonatomic) NSUInteger capacity; // ivar: _capacity
@property (retain, nonatomic) CCTexture2D *texture; // ivar: _texture
@property (nonatomic) *_ccV3F_C4B_T2F_Quad quads; // ivar: _quads


-(id)initWithFile:(id)arg0 capacity:(NSUInteger)arg1 ;
-(id)initWithTexture:(id)arg0 capacity:(NSUInteger)arg1 ;
-(id)description;
-(void)dealloc;
-(void)setupIndices;
-(void)setupVBOandVAO;
-(void)mapBuffers;
-(void)listenGoingToBackground;
-(void)listenBackToForeground;
-(void)updateQuad:(struct _ccV3F_C4B_T2F_Quad *)arg0 atIndex:(NSUInteger)arg1 ;
-(void)insertQuad:(struct _ccV3F_C4B_T2F_Quad *)arg0 atIndex:(NSUInteger)arg1 ;
-(void)insertQuads:(struct _ccV3F_C4B_T2F_Quad *)arg0 atIndex:(NSUInteger)arg1 amount:(NSUInteger)arg2 ;
-(void)insertQuadFromIndex:(NSUInteger)arg0 atIndex:(NSUInteger)arg1 ;
-(void)moveQuadsFromIndex:(NSUInteger)arg0 amount:(NSUInteger)arg1 atIndex:(NSUInteger)arg2 ;
-(void)removeQuadAtIndex:(NSUInteger)arg0 ;
-(void)removeQuadsAtIndex:(NSUInteger)arg0 amount:(NSUInteger)arg1 ;
-(void)removeAllQuads;
-(BOOL)resizeCapacity:(NSUInteger)arg0 ;
-(void)fillWithEmptyQuadsFromIndex:(NSUInteger)arg0 amount:(NSUInteger)arg1 ;
-(void)increaseTotalQuadsWith:(NSUInteger)arg0 ;
-(void)moveQuadsFromIndex:(NSUInteger)arg0 to:(NSUInteger)arg1 ;
-(void)drawQuads;
-(void)drawNumberOfQuads:(NSUInteger)arg0 ;
-(void)drawNumberOfQuads:(NSUInteger)arg0 fromIndex:(NSUInteger)arg1 ;
-(void)drawNumberOfQuads:(NSUInteger)arg0 fromIndex:(NSUInteger)arg1 renderJob:(struct RenderJob *)arg2 ;
+(id)textureAtlasWithFile:(id)arg0 capacity:(NSUInteger)arg1 ;
+(id)textureAtlasWithTexture:(id)arg0 capacity:(NSUInteger)arg1 ;


@end


#endif