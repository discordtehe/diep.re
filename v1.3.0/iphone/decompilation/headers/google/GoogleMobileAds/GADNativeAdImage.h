// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNATIVEADIMAGE_H
#define GADNATIVEADIMAGE_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADNativeAdImage : NSObject

@property (retain, nonatomic) UIImage *image; // ivar: _image
@property (readonly, nonatomic) CGFloat aspectRatio; // ivar: _aspectRatio
@property (readonly, copy, nonatomic) NSURL *imageURL; // ivar: _imageURL
@property (readonly, nonatomic) CGFloat scale; // ivar: _scale


-(id)initWithImage:(id)arg0 ;
-(id)initWithURL:(id)arg0 scale:(CGFloat)arg1 ;
-(id)initWithDictionary:(id)arg0 ;
-(id)init;


@end


#endif