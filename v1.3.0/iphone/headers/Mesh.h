// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MESH_H
#define MESH_H


#import <Foundation/Foundation.h>

@class CCGLProgram;

@interface Mesh : NSObject {
    int mGLServerState;
    BOOL mVBOBuffersUpdated;
    unsigned int mVAOname;
    unsigned int mBuffersVBO;
}


@property (readonly, nonatomic) *_ccV3F_C4B_T2F vertexData; // ivar: mVertexData
@property (readonly, nonatomic) *? triangleData; // ivar: mTriangles
@property (readonly, nonatomic) *unsigned short renderIndexesData; // ivar: mRenderIndexes
@property (readonly, nonatomic) unsigned int numTriangles; // ivar: mNumTriangles
@property (readonly, nonatomic) unsigned int numVertexes; // ivar: mNumVertexes
@property (readonly, nonatomic) unsigned int numRenderIndexes; // ivar: mNumRenderIndexes
@property (retain, nonatomic) CCGLProgram *shaderProgram; // ivar: mShaderProgram


-(void)initVBOandVAO;
-(id)init:(unsigned int)arg0 numVertexes:(unsigned int)arg1 ;
-(id)initWithData:(struct _ccV3F_C4B_T2F *)arg0 triangleData:(struct ? *)arg1 renderIndexesData:(*unsigned short)arg2 numTriangles:(unsigned int)arg3 numVertexes:(unsigned int)arg4 numRenderIndexes:(unsigned int)arg5 ;
-(void)dealloc;
-(void)updateRenderIndexes;
-(void)replaceVertexData:(struct _ccV3F_C4B_T2F *)arg0 ;
-(void)forceVertexDataUpdate;
-(void)renderWithTexture:(id)arg0 transform:(struct Matrix *)arg1 ;


@end


#endif