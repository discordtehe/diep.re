// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVASTMEDIAFILE_H
#define MPVASTMEDIAFILE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPVASTModel;

@interface MPVASTMediaFile : MPVASTModel

@property (readonly, copy, nonatomic) NSString *identifier; // ivar: _identifier
@property (readonly, copy, nonatomic) NSString *delivery; // ivar: _delivery
@property (readonly, copy, nonatomic) NSString *mimeType; // ivar: _mimeType
@property (readonly, nonatomic) CGFloat bitrate; // ivar: _bitrate
@property (readonly, nonatomic) CGFloat width; // ivar: _width
@property (readonly, nonatomic) CGFloat height; // ivar: _height
@property (readonly, copy, nonatomic) NSURL *URL; // ivar: _URL


+(id)modelMap;


@end


#endif