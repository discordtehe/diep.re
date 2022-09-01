// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVASTLINEARAD_H
#define MPVASTLINEARAD_H


#import <CoreFoundation/CoreFoundation.h>

@class MPVASTModel;
@class MPVASTMediaFile;
@class MPVASTDurationOffset;

@interface MPVASTLinearAd : MPVASTModel

@property (readonly, nonatomic) MPVASTMediaFile *highestBitrateMediaFile;
@property (retain, nonatomic) NSArray *clickTrackingURLs; // ivar: _clickTrackingURLs
@property (retain, nonatomic) NSArray *customClickURLs; // ivar: _customClickURLs
@property (retain, nonatomic) NSArray *industryIcons; // ivar: _industryIcons
@property (retain, nonatomic) NSDictionary *trackingEvents; // ivar: _trackingEvents
@property (readonly, copy, nonatomic) NSURL *clickThroughURL; // ivar: _clickThroughURL
@property (readonly, nonatomic) CGFloat duration; // ivar: _duration
@property (readonly, nonatomic) NSArray *mediaFiles; // ivar: _mediaFiles
@property (readonly, nonatomic) MPVASTDurationOffset *skipOffset; // ivar: _skipOffset


-(id)validVideoMimeTypes;
-(id)initWithDictionary:(id)arg0 ;
+(id)modelMap;


@end


#endif