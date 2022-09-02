// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCANIMATIONCACHE_H
#define CCANIMATIONCACHE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CCAnimationCache : NSObject {
    NSMutableDictionary *_animations;
}




-(id)init;
-(id)description;
-(void)dealloc;
-(void)addAnimation:(id)arg0 name:(id)arg1 ;
-(void)removeAnimationByName:(id)arg0 ;
-(id)animationByName:(id)arg0 ;
-(void)parseVersion1:(id)arg0 ;
-(void)parseVersion2:(id)arg0 ;
-(void)addAnimationsWithDictionary:(id)arg0 ;
-(void)parseVersion1WithStringMap:(struct StringMap *)arg0 ;
-(void)parseVersion2WithStringMap:(struct StringMap *)arg0 ;
-(void)addAnimationsWithValue:(struct Value *)arg0 ;
-(void)addAnimationsWithFile:(id)arg0 ;
+(id)sharedAnimationCache;
+(id)alloc;
+(void)purgeSharedAnimationCache;


@end


#endif