// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSCODEMAPPING_H
#define CLSCODEMAPPING_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CLSCodeMapping : NSObject

@property (readonly, copy, nonatomic) NSURL *URL; // ivar: _URL
@property (nonatomic) int source; // ivar: _source
@property (readonly, copy, nonatomic) NSString *sourceName; // ivar: _sourceName


-(id)initWithURL:(id)arg0 ;
+(id)mappingWithURL:(id)arg0 ;


@end


#endif