// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVASTINDUSTRYICON_H
#define MPVASTINDUSTRYICON_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPVASTModel;
@class MPVASTDurationOffset;
@class MPVASTResource;

@interface MPVASTIndustryIcon : MPVASTModel

@property (readonly, copy, nonatomic) NSString *program; // ivar: _program
@property (readonly, nonatomic) CGFloat height; // ivar: _height
@property (readonly, nonatomic) CGFloat width; // ivar: _width
@property (readonly, copy, nonatomic) NSString *xPosition; // ivar: _xPosition
@property (readonly, copy, nonatomic) NSString *yPosition; // ivar: _yPosition
@property (readonly, copy, nonatomic) NSString *apiFramework; // ivar: _apiFramework
@property (readonly, nonatomic) CGFloat duration; // ivar: _duration
@property (readonly, nonatomic) MPVASTDurationOffset *offset; // ivar: _offset
@property (readonly, copy, nonatomic) NSURL *clickThroughURL; // ivar: _clickThroughURL
@property (readonly, nonatomic) NSArray *clickTrackingURLs; // ivar: _clickTrackingURLs
@property (readonly, nonatomic) NSArray *viewTrackingURLs; // ivar: _viewTrackingURLs
@property (readonly, nonatomic) MPVASTResource *HTMLResource; // ivar: _HTMLResource
@property (readonly, nonatomic) MPVASTResource *iframeResource; // ivar: _iframeResource
@property (readonly, nonatomic) MPVASTResource *staticResource; // ivar: _staticResource


+(id)modelMap;


@end


#endif