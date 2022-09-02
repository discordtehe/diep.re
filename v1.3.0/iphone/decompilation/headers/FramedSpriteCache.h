// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FRAMEDSPRITECACHE_H
#define FRAMEDSPRITECACHE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FramedSpriteCache : NSObject {
    NSMutableDictionary *_framedSpritesDescriptions;
}




-(id)init;
-(void)dealloc;
-(id)processDictionary:(id)arg0 withName:(id)arg1 ;
-(id)framedSpriteWithName:(id)arg0 ;
-(id)descriptionWithName:(id)arg0 ;
+(id)sharedFramedSpriteCache;
+(void)clearCache;
+(id)framedSpriteWithName:(id)arg0 ;
+(id)getFrameFromFramedSpriteDescription:(id)arg0 ;
+(id)getTexture_MCC2DFromFramedSpriteDescription:(id)arg0 ;


@end


#endif