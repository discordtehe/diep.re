// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MESHCACHE_H
#define MESHCACHE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MeshCache : NSObject {
    NSMutableDictionary *mCache;
}




-(id)init;
-(void)dealloc;
-(id)getMesh:(id)arg0 ;
-(BOOL)storeMesh:(id)arg0 meshID:(id)arg1 ;
-(void)clean;
+(id)sharedMeshCache;
+(BOOL)isMeshCacheInitialized;
+(void)releaseSharedMeshCache;


@end


#endif