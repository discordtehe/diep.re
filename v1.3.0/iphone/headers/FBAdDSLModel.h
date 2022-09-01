// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADDSLMODEL_H
#define FBADDSLMODEL_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdDSLModel : NSObject

@property (copy, nonatomic) NSURL *mainHTMLAsset; // ivar: _mainHTMLAsset
@property (copy, nonatomic) NSURL *videoLocalAsset; // ivar: _videoLocalAsset
@property (copy, nonatomic) NSURL *imageLocalAsset; // ivar: _imageLocalAsset
@property (copy, nonatomic) NSURL *iconLocalAsset; // ivar: _iconLocalAsset
@property (retain, nonatomic) NSMutableArray *endCardLocalAssets; // ivar: _endCardLocalAssets


-(id)initWithEndCardSize:(NSUInteger)arg0 ;


@end


#endif