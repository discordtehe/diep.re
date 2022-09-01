// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SOUNDEFFECTENTRY_H
#define SOUNDEFFECTENTRY_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface SoundEffectEntry : NSObject

@property (retain) NSString *name; // ivar: mName
@property (retain) NSString *filePath; // ivar: mFilePath
@property float duration; // ivar: mDuration
@property BOOL loaded; // ivar: mLoaded
@property BOOL cached; // ivar: mCached
@property BOOL preloaded; // ivar: mPreloaded
@property BOOL dataUpdated; // ivar: mDataUpdated
@property (readonly) NSMutableDictionary *soundInstanceDictionary; // ivar: mSoundInstanceDictionary


-(id)init;
-(void)dealloc;


@end


#endif