// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCHARACTERSETS_H
#define GADCHARACTERSETS_H


#import <Foundation/Foundation.h>


@interface GADCharacterSets : NSObject

@property (readonly) NSCharacterSet *characterDelimitedSet; // ivar: _characterDelimitedSet
@property (readonly) NSCharacterSet *spaceDelimitedSet; // ivar: _spaceDelimitedSet


-(id)init;
+(id)sharedInstance;


@end


#endif