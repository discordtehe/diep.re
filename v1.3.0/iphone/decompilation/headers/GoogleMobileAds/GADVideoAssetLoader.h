// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADVIDEOASSETLOADER_H
#define GADVIDEOASSETLOADER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADResourceBuffer;
@class GADVideoConfiguration;

@interface GADVideoAssetLoader : NSObject {
    NSURL *_sourceURL;
    GADResourceBuffer *_mainResourceBuffer;
    GADVideoConfiguration *_videoConfiguration;
    GADResourceBuffer *_resourceBuffer;
    NSInteger _resourceBufferStartingByteOffset;
}




-(id)initWithVideoURL:(id)arg0 resourceBuffer:(id)arg1 videoConfiguration:(id)arg2 ;
-(BOOL)getResourceBuffer:(*id)arg0 startingByteOffset:(*NSInteger)arg1 loadingByteOffset:(NSInteger)arg2 error:(*id)arg3 ;
-(void)finishedUsingResourceBuffer:(id)arg0 ;
+(void)initialize;


@end


#endif