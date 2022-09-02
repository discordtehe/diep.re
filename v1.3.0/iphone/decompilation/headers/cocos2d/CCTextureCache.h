// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTEXTURECACHE_H
#define CCTEXTURECACHE_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CCTextureCache : NSObject {
    NSMutableDictionary *_textures;
    NSObject<OS_dispatch_queue> *_loadingQueue;
    NSObject<OS_dispatch_queue> *_dictQueue;
}




-(void)dumpCachedTextureInfo;
-(id)init;
-(id)description;
-(void)dealloc;
-(void)addImage:(struct shared_ptr<mc::Renderer::Texture> )arg0 path:(id)arg1 ;
-(void)addImageAsync:(id)arg0 target:(id)arg1 selector:(SEL)arg2 ;
-(void)addImageAsync:(id)arg0 withBlock:(id)arg1 ;
-(id)addImage:(id)arg0 ;
-(id)addImageNew:(id)arg0 ;
-(id)addImage:(id)arg0 assumeSD:(BOOL)arg1 ;
-(id)addEncodedImage:(id)arg0 resolutionType:(int)arg1 textureScale:(float)arg2 name:(id)arg3 ;
-(void)removeAllTextures;
-(void)removeUnusedTextures;
-(void)removeTexture:(id)arg0 ;
-(void)removeTextureForKey:(id)arg0 ;
-(id)textureForKey:(id)arg0 ;
+(id)sharedTextureCache;
+(id)alloc;
+(void)purgeSharedTextureCache;


@end


#endif