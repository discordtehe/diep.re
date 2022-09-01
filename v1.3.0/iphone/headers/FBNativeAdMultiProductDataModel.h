// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEADMULTIPRODUCTDATAMODEL_H
#define FBNATIVEADMULTIPRODUCTDATAMODEL_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class FBAdDataModel;
@class FBAdImage;
@protocol FBAdCreativeURLContaining;

@interface FBNativeAdMultiProductDataModel : FBAdDataModel <FBAdCreativeURLContaining>

 {
    NSInteger _cachedType;
}


@property (readonly, copy, nonatomic) NSDictionary *metadata; // ivar: _metadata
@property (readonly, copy, nonatomic) NSString *title; // ivar: _title
@property (readonly, copy, nonatomic) NSString *subtitle; // ivar: _subtitle
@property (readonly, copy, nonatomic) NSString *headline; // ivar: _headline
@property (readonly, copy, nonatomic) NSString *linkDescription; // ivar: _linkDescription
@property (readonly, copy, nonatomic) NSString *body; // ivar: _body
@property (readonly, copy, nonatomic) NSString *callToAction; // ivar: _callToAction
@property (readonly, nonatomic) FBAdImage *image; // ivar: _image
@property (readonly, copy, nonatomic) NSURL *iconURL; // ivar: _iconURL
@property (readonly, copy, nonatomic) NSURL *commandURL; // ivar: _commandURL
@property (readonly, nonatomic) BOOL audioMuted; // ivar: _audioMuted
@property (readonly, nonatomic) NSInteger type;
@property (readonly, copy, nonatomic) NSURL *videoURL; // ivar: _videoURL
@property (readonly, copy, nonatomic) NSNumber *videoAutoplayEnabled; // ivar: _videoAutoplayEnabled
@property (readonly, nonatomic) BOOL videoHasAudio; // ivar: _videoHasAudio
@property (readonly, nonatomic, getter=isValid) BOOL valid;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithMetadata:(id)arg0 ;
-(id)cacheKeysForCreatives;
+(void)initialize;


@end


#endif