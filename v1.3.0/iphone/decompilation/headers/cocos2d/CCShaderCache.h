// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCSHADERCACHE_H
#define CCSHADERCACHE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CCShaderCache : NSObject {
    NSMutableDictionary *_programs;
}




-(void)dealloc;
-(id)init;
-(void)loadDefaultShaders;
-(id)programForKey:(id)arg0 ;
-(void)addProgram:(id)arg0 forKey:(id)arg1 ;
-(void)rebuildShaders;
+(id)sharedShaderCache;
+(void)purgeSharedShaderCache;
+(id)alloc;
+(void)purgeSharedTextureCache;


@end


#endif