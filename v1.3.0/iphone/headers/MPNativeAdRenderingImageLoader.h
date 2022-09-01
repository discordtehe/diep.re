// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPNATIVEADRENDERINGIMAGELOADER_H
#define MPNATIVEADRENDERINGIMAGELOADER_H


#import <Foundation/Foundation.h>

@class MPNativeAdRendererImageHandler;

@interface MPNativeAdRenderingImageLoader : NSObject

@property (retain, nonatomic) MPNativeAdRendererImageHandler *imageHandler; // ivar: _imageHandler


-(id)initWithImageHandler:(id)arg0 ;
-(void)loadImageForURL:(id)arg0 intoImageView:(id)arg1 ;


@end


#endif