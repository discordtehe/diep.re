// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef HORIZONTALSTRETCHFRAMECACHE_H
#define HORIZONTALSTRETCHFRAMECACHE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface HorizontalStretchFrameCache : NSObject {
    NSMutableDictionary *_descriptions;
}




-(id)init;
-(void)dealloc;
-(id)descriptionWithName:(id)arg0 ;
+(id)sharedInstance;
+(void)clearCache;
+(id)getFrameFromHSFDescription:(id)arg0 ;
+(id)getTextureFromHSFDescription:(id)arg0 ;


@end


#endif