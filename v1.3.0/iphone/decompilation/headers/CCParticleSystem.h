// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCPARTICLESYSTEM_H
#define CCPARTICLESYSTEM_H


#import <Foundation/Foundation.h>

@class CCNode;
@class CCTexture2D;
@class CCParticleBatchNode;
@protocol CCTextureProtocol;

@interface CCParticleSystem : CCNode <CCTextureProtocol>

 {
    float _elapsed;
    ? _mode;
    *sCCParticle _particles;
    NSUInteger _allocatedParticles;
    float _emitCounter;
    CCTexture2D *_texture;
    NSUInteger _particleIdx;
    *unk _updateParticleImp;
    SEL _updateParticleSel;
    CCParticleBatchNode *_batchNode;
    BOOL _transformSystemDirty;
}


@property (readonly, nonatomic) BOOL active; // ivar: _active
@property (readonly, nonatomic) NSUInteger particleCount; // ivar: _particleCount
@property (nonatomic) float duration; // ivar: _duration
@property (nonatomic) CGPoint sourcePosition; // ivar: _sourcePosition
@property (nonatomic) CGPoint posVar; // ivar: _posVar
@property (nonatomic) float life; // ivar: _life
@property (nonatomic) float lifeVar; // ivar: _lifeVar
@property (nonatomic) float angle; // ivar: _angle
@property (nonatomic) float angleVar; // ivar: _angleVar
@property (nonatomic) CGPoint gravity;
@property (nonatomic) float speed;
@property (nonatomic) float speedVar;
@property (nonatomic) float tangentialAccel;
@property (nonatomic) float tangentialAccelVar;
@property (nonatomic) float radialAccel;
@property (nonatomic) float radialAccelVar;
@property (nonatomic) float startRadius;
@property (nonatomic) float startRadiusVar;
@property (nonatomic) float endRadius;
@property (nonatomic) float endRadiusVar;
@property (nonatomic) float rotatePerSecond;
@property (nonatomic) float rotatePerSecondVar;
@property (nonatomic) float startSize; // ivar: _startSize
@property (nonatomic) float startSizeVar; // ivar: _startSizeVar
@property (nonatomic) float endSize; // ivar: _endSize
@property (nonatomic) float endSizeVar; // ivar: _endSizeVar
@property (nonatomic) _ccColor4F startColor; // ivar: _startColor
@property (nonatomic) _ccColor4F startColorVar; // ivar: _startColorVar
@property (nonatomic) _ccColor4F endColor; // ivar: _endColor
@property (nonatomic) _ccColor4F endColorVar; // ivar: _endColorVar
@property (nonatomic) float startSpin; // ivar: _startSpin
@property (nonatomic) float startSpinVar; // ivar: _startSpinVar
@property (nonatomic) float endSpin; // ivar: _endSpin
@property (nonatomic) float endSpinVar; // ivar: _endSpinVar
@property (nonatomic) float emissionRate; // ivar: _emissionRate
@property (nonatomic) NSUInteger totalParticles; // ivar: _totalParticles
@property (retain, nonatomic) CCTexture2D *texture;
@property (nonatomic) _ccBlendFunc blendFunc; // ivar: _blendFunc
@property (nonatomic, getter=doesOpacityModifyRGB) BOOL opacityModifyRGB; // ivar: _opacityModifyRGB
@property (nonatomic) BOOL blendAdditive;
@property (nonatomic) int positionType; // ivar: _positionType
@property (nonatomic) BOOL autoRemoveOnFinish; // ivar: _autoRemoveOnFinish
@property (nonatomic) NSInteger emitterMode; // ivar: _emitterMode
@property (nonatomic) CCParticleBatchNode *batchNode;
@property (nonatomic) NSUInteger atlasIndex; // ivar: _atlasIndex
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithFile:(id)arg0 ;
-(id)initWithValue:(struct Value *)arg0 path:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > *)arg1 ;
-(id)initWithDictionary:(id)arg0 ;
-(id)initWithDictionary:(id)arg0 path:(id)arg1 ;
-(id)initWithTotalParticles:(NSUInteger)arg0 ;
-(void)dealloc;
-(void)initParticle:(struct sCCParticle *)arg0 ;
-(BOOL)addParticle;
-(void)stopSystem;
-(void)resetSystem;
-(BOOL)isFull;
-(BOOL)checkAutoRemoveOnFinish;
-(void)update:(CGFloat)arg0 ;
-(void)updateWithNoTime;
-(void)updateQuadWithParticle:(struct sCCParticle *)arg0 newPosition:(struct CGPoint )arg1 ;
-(void)postStep;
-(void)setScale:(float)arg0 ;
-(void)setRotation:(float)arg0 ;
-(void)setScaleX:(float)arg0 ;
-(void)setScaleY:(float)arg0 ;
-(void)updateBlendFunc;
+(id)particleWithFile:(id)arg0 ;
+(id)particleWithTotalParticles:(NSUInteger)arg0 ;


@end


#endif