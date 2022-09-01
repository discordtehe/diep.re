// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCGRID3D_H
#define CCGRID3D_H



@class CCGridBase;

@interface CCGrid3D : CCGridBase {
    *void _texCoordinates;
    *void _vertices;
    *void _originalVertices;
    *unsigned short _indices;
}




-(void)dealloc;
-(void)blit;
-(void)calculateVertexPoints;
-(struct _ccVertex3F )vertex:(struct CGPoint )arg0 ;
-(struct _ccVertex3F )originalVertex:(struct CGPoint )arg0 ;
-(void)setVertex:(struct CGPoint )arg0 vertex:(struct _ccVertex3F )arg1 ;
-(void)reuse;


@end


#endif