// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADPLACEMENT_H
#define FBADPLACEMENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBAdPlacementDefinition;

@interface FBAdPlacement : NSObject

@property (nonatomic) NSInteger code; // ivar: _code
@property (copy, nonatomic) NSString *message; // ivar: _message
@property (retain, nonatomic) FBAdPlacementDefinition *definition; // ivar: _definition
@property (copy, nonatomic) NSArray *adCandidates; // ivar: _adCandidates


-(id)initWithCode:(NSInteger)arg0 message:(id)arg1 definition:(id)arg2 adCandidates:(id)arg3 ;
+(void)initialize;


@end


#endif