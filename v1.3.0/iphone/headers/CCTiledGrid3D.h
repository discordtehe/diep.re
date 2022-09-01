// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTILEDGRID3D_H
#define CCTILEDGRID3D_H



@class CCGridBase;

@interface CCTiledGrid3D : CCGridBase {
    *void _texCoordinates;
    *void _vertices;
    *void _originalVertices;
    *unsigned short _indices;
}




-(void)dealloc;
-(void)blit;
-(void)calculateVertexPoints;
-(void)setTile:(struct CGPoint )arg0 coords:(struct _ccQuad3 )arg1 ;
-(struct _ccQuad3 )originalTile:(struct CGPoint )arg0 ;
-(struct _ccQuad3 )tile:(struct CGPoint )arg0 ;
-(void)reuse;


@end


#endif