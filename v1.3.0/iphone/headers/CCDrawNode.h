// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCDRAWNODE_H
#define CCDRAWNODE_H



@class CCNode;

@interface CCDrawNode : CCNode {
    unsigned int _vao;
    unsigned int _vbo;
    NSUInteger _bufferCapacity;
    int _bufferCount;
    *_ccV2F_C4B_T2F _buffer;
    BOOL _dirty;
}


@property (nonatomic) _ccBlendFunc blendFunc; // ivar: _blendFunc


-(void)ensureCapacity:(NSUInteger)arg0 ;
-(id)init;
-(void)dealloc;
-(void)render;
-(void)draw;
-(void)drawDot:(struct CGPoint )arg0 radius:(CGFloat)arg1 color:(struct _ccColor4F )arg2 ;
-(void)drawSegmentFrom:(struct CGPoint )arg0 to:(struct CGPoint )arg1 radius:(CGFloat)arg2 color:(struct _ccColor4F )arg3 ;
-(void)drawPolyWithVerts:(struct CGPoint *)arg0 count:(NSUInteger)arg1 fillColor:(struct _ccColor4F )arg2 borderWidth:(CGFloat)arg3 borderColor:(struct _ccColor4F )arg4 ;
-(void)clear;


@end


#endif