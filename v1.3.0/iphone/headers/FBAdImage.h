// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADIMAGE_H
#define FBADIMAGE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdImage : NSObject

@property (copy, nonatomic) NSURL *url; // ivar: _url
@property (nonatomic) NSInteger type; // ivar: _type
@property (nonatomic) NSInteger width; // ivar: _width
@property (nonatomic) NSInteger height; // ivar: _height


-(id)init;
-(id)initWithURL:(id)arg0 width:(NSInteger)arg1 height:(NSInteger)arg2 ;
-(void)preloadImageAsync;
-(void)loadImageAsyncWithBlock:(id)arg0 ;
+(void)loadImagesAsync:(id)arg0 withBlock:(id)arg1 ;
+(void)loadImagesAsyncWithBlurredImages:(id)arg0 withBlock:(id)arg1 ;


@end


#endif