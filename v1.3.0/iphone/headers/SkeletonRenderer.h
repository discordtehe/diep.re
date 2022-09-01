// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SKELETONRENDERER_H
#define SKELETONRENDERER_H


#import <Foundation/Foundation.h>

@class CCNodeRGBA;
@class spPolygonBatch;
@protocol CCBlendProtocol;

@interface SkeletonRenderer : CCNodeRGBA <CCBlendProtocol>

 {
    BOOL _premultipliedAlpha;
    _ccBlendFunc _blendFunc;
    BOOL _ownsSkeletonData;
    *spAtlas _atlas;
    spPolygonBatch *batch;
    *float worldVertices;
}


@property (readonly, nonatomic) *spSkeleton skeleton; // ivar: _skeleton
@property (nonatomic) BOOL debugSlots; // ivar: _debugSlots
@property (nonatomic) BOOL debugBones; // ivar: _debugBones
@property (nonatomic) *spBone rootBone; // ivar: _rootBone
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)initialize:(struct spSkeletonData *)arg0 ownsSkeletonData:(BOOL)arg1 ;
-(?)initWithDataownsSkeletonData;
-(id)initWithFile:(id)arg0 atlas:(struct spAtlas *)arg1 scale:(float)arg2 ;
-(id)initWithFile:(id)arg0 atlasFile:(id)arg1 scale:(float)arg2 ;
-(void)dealloc;
-(void)draw;
-(id)getTextureForRegion:(struct spRegionAttachment *)arg0 ;
-(id)getTextureForMesh:(struct spMeshAttachment *)arg0 ;
-(id)getTextureForWeightedMesh:(struct spWeightedMeshAttachment *)arg0 ;
-(struct CGRect )boundingBox;
-(void)updateWorldTransform;
-(void)setToSetupPose;
-(void)setBonesToSetupPose;
-(void)setSlotsToSetupPose;
-(?)findBone;
-(struct spSlot *)findSlot:(id)arg0 ;
-(BOOL)setSkin:(id)arg0 ;
-(struct spAttachment *)getAttachment:(id)arg0 attachmentName:(id)arg1 ;
-(BOOL)setAttachment:(id)arg0 attachmentName:(id)arg1 ;
-(void)setBlendFunc:(struct _ccBlendFunc )arg0 ;
-(struct _ccBlendFunc )blendFunc;
-(void)setOpacityModifyRGB:(BOOL)arg0 ;
-(BOOL)doesOpacityModifyRGB;
-(void)onEnter;
-(void)onExit;
+(?)skeletonWithDataownsSkeletonData;
+(id)skeletonWithFile:(id)arg0 atlas:(struct spAtlas *)arg1 scale:(float)arg2 ;
+(id)skeletonWithFile:(id)arg0 atlasFile:(id)arg1 scale:(float)arg2 ;


@end


#endif