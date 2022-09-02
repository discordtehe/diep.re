// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVASTINLINE_H
#define MPVASTINLINE_H


#import <CoreFoundation/CoreFoundation.h>

@class MPVASTModel;

@interface MPVASTInline : MPVASTModel

@property (readonly, nonatomic) NSArray *creatives; // ivar: _creatives
@property (readonly, nonatomic) NSArray *errorURLs; // ivar: _errorURLs
@property (readonly, nonatomic) NSDictionary *extensions; // ivar: _extensions
@property (readonly, nonatomic) NSArray *impressionURLs; // ivar: _impressionURLs


-(id)initWithDictionary:(id)arg0 ;
+(id)modelMap;


@end


#endif