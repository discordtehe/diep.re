// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCSPRITEFRAMECACHE_H
#define CCSPRITEFRAMECACHE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CCSpriteFrameCache : NSObject {
    NSMutableDictionary *_spriteFrames;
    NSMutableDictionary *_spriteFramesAliases;
    NSMutableSet *_loadedFilenames;
}




-(void)addSpriteFramesWithDictionary:(id)arg0 textureFile:(id)arg1 ;
-(void)addSpriteFramesWithFile:(id)arg0 textureFile:(id)arg1 ;
-(id)init;
-(id)description;
-(void)dealloc;
-(void)addSpriteFramesWithDictionary:(id)arg0 textureReference:(id)arg1 ;
-(void)addSpriteFramesWithDictionary:(id)arg0 textureReference:(id)arg1 scale:(float)arg2 ;
-(void)addSpriteFramesWithValue:(struct Value *)arg0 textureReference:(id)arg1 scale:(float)arg2 ;
-(void)addSpriteFramesWithDictionary:(id)arg0 textureFilename:(id)arg1 ;
-(void)addSpriteFramesWithDictionary:(id)arg0 texture:(id)arg1 ;
-(void)addSpriteFramesWithDictionary:(id)arg0 textureFilename:(id)arg1 scale:(float)arg2 ;
-(void)addSpriteFramesWithDictionary:(id)arg0 texture:(id)arg1 scale:(float)arg2 ;
-(void)addSpriteFramesWithFile:(id)arg0 textureReference:(id)arg1 ;
-(void)addSpriteFramesWithFile:(id)arg0 textureFilename:(id)arg1 ;
-(void)addSpriteFramesWithFile:(id)arg0 texture:(id)arg1 ;
-(void)addSpriteFramesWithFile:(id)arg0 ;
-(void)addSpriteFramesWithFile:(id)arg0 assumeSD:(BOOL)arg1 ;
-(void)addSpriteFrame:(id)arg0 name:(id)arg1 ;
-(void)removeSpriteFrames;
-(void)removeUnusedSpriteFrames;
-(void)removeSpriteFrameByName:(id)arg0 ;
-(void)removeSpriteFramesFromFile:(id)arg0 ;
-(void)removeSpriteFramesFromDictionary:(id)arg0 ;
-(void)removeSpriteFramesFromValue:(struct Value *)arg0 ;
-(void)removeSpriteFramesFromTexture:(id)arg0 ;
-(void)removeSpriteFramesByTextureFilename:(id)arg0 ;
-(void)purgeFilenamesCache;
-(id)spriteFrameByName:(id)arg0 ;
+(id)sharedSpriteFrameCache;
+(id)alloc;
+(void)purgeSharedSpriteFrameCache;


@end


#endif