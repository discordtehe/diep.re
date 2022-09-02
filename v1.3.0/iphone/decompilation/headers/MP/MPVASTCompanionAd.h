// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVASTCOMPANIONAD_H
#define MPVASTCOMPANIONAD_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class MPVASTModel;

@interface MPVASTCompanionAd : MPVASTModel

@property (readonly, nonatomic) CGFloat assetHeight; // ivar: _assetHeight
@property (readonly, nonatomic) CGFloat assetWidth; // ivar: _assetWidth
@property (readonly, copy, nonatomic) NSURL *clickThroughURL; // ivar: _clickThroughURL
@property (readonly, nonatomic) NSArray *clickTrackingURLs; // ivar: _clickTrackingURLs
@property (readonly, nonatomic) CGFloat height; // ivar: _height
@property (readonly, nonatomic) NSArray *HTMLResources; // ivar: _HTMLResources
@property (readonly, copy, nonatomic) NSString *identifier; // ivar: _identifier
@property (readonly, nonatomic) NSArray *iframeResources; // ivar: _iframeResources
@property (readonly, nonatomic) NSArray *staticResources; // ivar: _staticResources
@property (readonly, nonatomic) NSDictionary *trackingEvents; // ivar: _trackingEvents
@property (readonly, nonatomic) CGFloat width; // ivar: _width


-(id)initWithDictionary:(id)arg0 ;
+(id)modelMap;


@end


#endif