// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCPARTICLESYSTEMQUAD_H
#define CCPARTICLESYSTEMQUAD_H



@class CCParticleSystem;

@interface CCParticleSystemQuad : CCParticleSystem {
    BOOL _mcRenderJobIsDirty;
    *_ccV3F_C4B_T2F_Quad _quads;
    *unsigned short _indices;
    unsigned int _VAOname;
    unsigned int _buffersVBO;
}




-(id)initWithTotalParticles:(NSUInteger)arg0 ;
-(BOOL)allocMemory;
-(void)setTotalParticles:(NSUInteger)arg0 ;
-(void)initVBOandVAO;
-(void)dealloc;
-(void)initTexCoordsWithRect:(struct CGRect )arg0 ;
-(void)setTexture:(id)arg0 withRect:(struct CGRect )arg1 ;
-(void)setTexture:(id)arg0 ;
-(void)setDisplayFrame:(id)arg0 ;
-(void)initIndices;
-(void)updateQuadWithParticle:(struct sCCParticle *)arg0 newPosition:(struct CGPoint )arg1 ;
-(void)postStep;
-(void)draw;
-(void)setBatchNode:(id)arg0 ;


@end


#endif