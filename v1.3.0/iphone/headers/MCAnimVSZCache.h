// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCANIMVSZCACHE_H
#define MCANIMVSZCACHE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCAnimVSZCache : NSObject {
    NSMutableDictionary *_animations;
}


@property (nonatomic) float conversionRatio; // ivar: _ratio


-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(id)retain;
-(NSUInteger)retainCount;
-(void)release;
-(id)autorelease;
-(id)init;
-(void)dealloc;
-(void)loadAnimationsFromValue:(struct Value *)arg0 ;
-(void)loadAnimationFromDictionary:(id)arg0 ;
-(void)loadAnimationsFromFile:(id)arg0 ;
-(void)unloadAnimations;
-(void)addAnimationData:(id)arg0 withName:(id)arg1 ;
-(id)getAnimationDataForName:(id)arg0 ;
-(id)getAnimationDataForName:(id)arg0 withFps:(float)arg1 ;
-(void)dumpCachedVSZInfo;
-(void)removeUnusedVSZs;
+(id)sharedInstance;
+(id)allocWithZone:(struct _NSZone *)arg0 ;
+(BOOL)isInitialized;
+(id)getPlaceholderTexture;
+(id)getPlaceholderVSZData;


@end


#endif