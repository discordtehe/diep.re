// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINSTREAMADDATAMODEL_H
#define FBINSTREAMADDATAMODEL_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class FBAdDataModel;
@class FBAdImage;

@interface FBInstreamAdDataModel : FBAdDataModel

@property (readonly, copy, nonatomic) UIColor *accentColor; // ivar: _accentColor
@property (readonly, nonatomic) BOOL adChoicesDisabled; // ivar: _adChoicesDisabled
@property (readonly, nonatomic) FBAdImage *adChoicesIcon; // ivar: _adChoicesIcon
@property (readonly, copy, nonatomic) NSURL *adChoicesLinkURL; // ivar: _adChoicesLinkURL
@property (readonly, copy, nonatomic) NSString *adChoicesText; // ivar: _adChoicesText
@property (readonly, nonatomic) BOOL autoplay; // ivar: _autoplay
@property (readonly, copy, nonatomic) UIColor *backgroundColor; // ivar: _backgroundColor
@property (readonly, copy, nonatomic) NSURL *clickLoggingURL; // ivar: _clickLoggingURL
@property (readonly, copy, nonatomic) NSURL *clientEventReportURL; // ivar: _clientEventReportURL
@property (readonly, copy, nonatomic) NSString *callToActionText; // ivar: _callToActionText
@property (readonly, copy, nonatomic) NSURL *callToActionURL; // ivar: _callToActionURL
@property (readonly, nonatomic) BOOL countdownEnabled; // ivar: _countdownEnabled
@property (readonly, copy, nonatomic) NSString *countdownFormat; // ivar: _countdownFormat
@property (readonly, nonatomic) FBAdImage *icon; // ivar: _icon
@property (readonly, nonatomic) FBAdImage *image; // ivar: _image
@property (readonly, copy, nonatomic) NSURL *impressionLoggingURL; // ivar: _impressionLoggingURL
@property (readonly, copy, nonatomic) NSURL *nativeImpressionLoggingURL; // ivar: _nativeImpressionLoggingURL
@property (readonly, nonatomic) NSInteger orientation; // ivar: _orientation
@property (readonly, nonatomic) BOOL persistentAdDetails; // ivar: _persistentAdDetails
@property (readonly, copy, nonatomic) NSNumber *skippableSeconds; // ivar: _skippableSeconds
@property (readonly, copy, nonatomic) NSString *subtitle; // ivar: _subtitle
@property (readonly, copy, nonatomic) UIColor *textColor; // ivar: _textColor
@property (readonly, copy, nonatomic) NSString *title; // ivar: _title
@property (readonly, copy, nonatomic) NSURL *videoHDURL; // ivar: _videoHDURL
@property (readonly, copy, nonatomic) NSURL *videoURL; // ivar: _videoURL
@property (readonly, copy, nonatomic) NSURL *videoLoggingURL; // ivar: _videoLoggingURL
@property (readonly, nonatomic, getter=isValid) BOOL valid;


-(id)init;
-(id)initWithMetadata:(id)arg0 ;


@end


#endif