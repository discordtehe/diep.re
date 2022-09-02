// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVASTRESPONSE_H
#define MPVASTRESPONSE_H


#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class MPVASTModel;

@interface MPVASTResponse : MPVASTModel

@property (retain, nonatomic) NSArray *ads; // ivar: _ads
@property (retain, nonatomic) NSArray *errorURLs; // ivar: _errorURLs
@property (copy, nonatomic) NSString *version; // ivar: _version


+(id)modelMap;


@end


#endif