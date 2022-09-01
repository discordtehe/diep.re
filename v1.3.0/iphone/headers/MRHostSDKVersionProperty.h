// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MRHOSTSDKVERSIONPROPERTY_H
#define MRHOSTSDKVERSIONPROPERTY_H


#import <Foundation/Foundation.h>

@class MRProperty;

@interface MRHostSDKVersionProperty : MRProperty

@property (copy, nonatomic) NSString *version; // ivar: _version


-(id)description;
+(id)defaultProperty;


@end


#endif