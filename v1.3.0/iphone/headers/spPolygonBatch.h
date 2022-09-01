// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SPPOLYGONBATCH_H
#define SPPOLYGONBATCH_H


#import <Foundation/Foundation.h>

@class CCTexture2D;

@interface spPolygonBatch : NSObject {
    int _capacity;
    *_ccV2F_C4B_T2F _vertices;
    int _verticesCount;
    *unsigned short _triangles;
    int _trianglesCount;
    CCTexture2D *_texture;
}




-(id)initWithCapacity:(int)arg0 ;
-(void)dealloc;
-(void)add:(id)arg0 vertices:(*float)arg1 uvs:(*float)arg2 verticesCount:(int)arg3 triangles:(*int)arg4 trianglesCount:(int)arg5 color:(struct _ccColor4B *)arg6 ;
-(void)flush;
+(id)createWithCapacity:(int)arg0 ;


@end


#endif