// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCPROGRESSTIMER_H
#define CCPROGRESSTIMER_H



@class CCNodeRGBA;
@class CCSprite;

@interface CCProgressTimer : CCNodeRGBA {
    BOOL _mcRenderJobIsDirty;
}


@property (nonatomic) int type; // ivar: _type
@property (nonatomic) BOOL reverseDirection; // ivar: _reverseDirection
@property (readonly, nonatomic) *_ccV2F_C4B_T2F vertexData; // ivar: _vertexData
@property (readonly, nonatomic) int vertexDataCount; // ivar: _vertexDataCount
@property (nonatomic) CGPoint midpoint; // ivar: _midpoint
@property (nonatomic) CGPoint barChangeRate; // ivar: _barChangeRate
@property (nonatomic) float percentage; // ivar: _percentage
@property (retain, nonatomic) CCSprite *sprite; // ivar: _sprite


-(id)init;
-(id)initWithSprite:(id)arg0 ;
-(void)dealloc;
-(void)setColor:(struct _ccColorThreeB )arg0 ;
-(struct _ccColorThreeB )color;
-(void)setOpacity:(unsigned char)arg0 ;
-(unsigned char)opacity;
-(struct _ccTex2F )textureCoordFromAlphaPoint:(struct CGPoint )arg0 ;
-(struct _ccVertex2F )vertexFromAlphaPoint:(struct CGPoint )arg0 ;
-(void)updateColor;
-(void)updateProgress;
-(void)setAnchorPoint:(struct CGPoint )arg0 ;
-(void)updateRadial;
-(void)updateBar;
-(struct CGPoint )boundaryTexCoord:(char)arg0 ;
-(void)draw;
+(id)progressWithSprite:(id)arg0 ;


@end


#endif