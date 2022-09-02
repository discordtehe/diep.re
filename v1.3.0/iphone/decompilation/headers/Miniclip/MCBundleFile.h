// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCBUNDLEFILE_H
#define MCBUNDLEFILE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCBundleFile : NSObject {
    NSString *_keyTag;
    NSMutableDictionary *_flatBundle;
}




-(void)addToBundleObject:(id)arg0 forPath:(id)arg1 withParent:(id)arg2 ;
-(void)processBundleObj:(id)arg0 withKey:(id)arg1 forPath:(id)arg2 withParent:(id)arg3 ;
-(void)recursiveReadBundle:(id)arg0 withPath:(id)arg1 ;
-(void)flattenBundle:(id)arg0 ;
-(id)convertCollectionsToMutable:(id)arg0 ;
-(id)initWithData:(id)arg0 ;
-(id)initWithfileName:(id)arg0 ;
-(id)initWithObject:(id)arg0 ;
-(void)dealloc;
-(void)removeFromBundleObject:(id)arg0 forPath:(id)arg1 ;
-(void)removeBundleObj:(id)arg0 withKey:(id)arg1 forPath:(id)arg2 ;
-(void)recursiveRemoveBundle:(id)arg0 withPath:(id)arg1 ;
-(id)objectForPath:(id)arg0 ;
-(BOOL)replaceObject:(id)arg0 byObject:(id)arg1 inCollection:(id)arg2 ;
-(void)setObject:(id)arg0 forPath:(id)arg1 ;
+(id)keyTag;
+(id)buildPathForPath:(id)arg0 andLeaf:(id)arg1 ;
+(id)bundleFileWithFileName:(id)arg0 ;
+(id)bundleFileWithData:(id)arg0 ;
+(id)bundleFileWithObject:(id)arg0 ;


@end


#endif