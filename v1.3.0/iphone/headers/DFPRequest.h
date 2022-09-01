// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef DFPREQUEST_H
#define DFPREQUEST_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADRequest;

@interface DFPRequest : GADRequest

@property (copy, nonatomic) NSString *publisherProvidedID;
@property (copy, nonatomic) NSArray *categoryExclusions;
@property (copy, nonatomic) NSDictionary *customTargeting;




@end


#endif