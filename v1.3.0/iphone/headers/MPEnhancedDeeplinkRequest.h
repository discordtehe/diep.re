// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPENHANCEDDEEPLINKREQUEST_H
#define MPENHANCEDDEEPLINKREQUEST_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MPEnhancedDeeplinkRequest : NSObject

@property (copy) NSURL *originalURL; // ivar: _originalURL
@property (copy) NSURL *primaryURL; // ivar: _primaryURL
@property (retain) NSArray *primaryTrackingURLs; // ivar: _primaryTrackingURLs
@property (copy) NSURL *fallbackURL; // ivar: _fallbackURL
@property (retain) NSArray *fallbackTrackingURLs; // ivar: _fallbackTrackingURLs


-(id)initWithURL:(id)arg0 ;


@end


#endif