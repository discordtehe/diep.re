// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVASTAD_H
#define MPVASTAD_H


#import <Foundation/Foundation.h>

@class MPVASTModel;
@class MPVASTInline;
@class MPVASTWrapper;

@interface MPVASTAd : MPVASTModel

@property (readonly, copy, nonatomic) NSString *identifier; // ivar: _identifier
@property (readonly, copy, nonatomic) NSString *sequence; // ivar: _sequence
@property (readonly, nonatomic) MPVASTInline *inlineAd; // ivar: _inlineAd
@property (readonly, nonatomic) MPVASTWrapper *wrapper; // ivar: _wrapper


-(id)initWithDictionary:(id)arg0 ;
+(id)modelMap;


@end


#endif