// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCCOLORNODE_H
#define MCCOLORNODE_H



@class CCNodeRGBA;

@interface MCColorNode : CCNodeRGBA {
    _ccVertex2F _squareVertices;
    _ccColor4F _squareColors;
    BOOL _mcRenderJobIsDirty;
}


@property (nonatomic) _ccBlendFunc blendFunc; // ivar: _blendFunc


-(id)init;
-(id)initWithColor4F:(struct _ccColor4F )arg0 ;
-(id)initWithColor4F:(struct _ccColor4F )arg0 width:(float)arg1 height:(float)arg2 ;
-(id)initWithColor3B:(struct _ccColorThreeB )arg0 ;
-(id)initWithColor3B:(struct _ccColorThreeB )arg0 width:(float)arg1 height:(float)arg2 ;
-(id)initWithColor4B:(struct _ccColor4B )arg0 ;
-(id)initWithColor4B:(struct _ccColor4B )arg0 width:(float)arg1 height:(float)arg2 ;
-(void)setContentSize:(struct CGSize )arg0 ;
-(void)setColor:(struct _ccColorThreeB )arg0 ;
-(void)setOpacity:(unsigned char)arg0 ;
-(void)updateColor;
-(void)updateOpacity;
-(void)updateDisplayedColor:(struct _ccColorThreeB )arg0 ;
-(void)updateDisplayedOpacity:(unsigned char)arg0 ;
-(void)draw;
-(void)dealloc;
+(id)nodeWithColor4B:(struct _ccColor4B )arg0 ;
+(id)nodeWithColor4B:(struct _ccColor4B )arg0 width:(float)arg1 height:(float)arg2 ;
+(id)nodeWithColor4F:(struct _ccColor4F )arg0 ;
+(id)nodeWithColor4F:(struct _ccColor4F )arg0 width:(float)arg1 height:(float)arg2 ;
+(id)nodeWithColor3B:(struct _ccColorThreeB )arg0 ;
+(id)nodeWithColor3B:(struct _ccColorThreeB )arg0 width:(float)arg1 height:(float)arg2 ;


@end


#endif