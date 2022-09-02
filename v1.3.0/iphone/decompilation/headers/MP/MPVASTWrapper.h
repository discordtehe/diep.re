// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVASTWRAPPER_H
#define MPVASTWRAPPER_H


#import <CoreFoundation/CoreFoundation.h>

@class MPVASTModel;
@class MPVASTResponse;

@interface MPVASTWrapper : MPVASTModel

@property (retain, nonatomic) MPVASTResponse *wrappedVASTResponse; // ivar: _wrappedVASTResponse
@property (readonly, nonatomic) NSArray *creatives; // ivar: _creatives
@property (readonly, nonatomic) NSArray *errorURLs; // ivar: _errorURLs
@property (readonly, nonatomic) NSArray *extensions; // ivar: _extensions
@property (readonly, nonatomic) NSArray *impressionURLs; // ivar: _impressionURLs
@property (readonly, copy, nonatomic) NSURL *VASTAdTagURI; // ivar: _VASTAdTagURI


-(id)initWithDictionary:(id)arg0 ;
+(id)modelMap;


@end


#endif