// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPURLPARSER_H
#define MCPURLPARSER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCPURLParser : NSObject

@property (retain, nonatomic) NSArray *variables; // ivar: variables


-(id)initWithURLString:(id)arg0 ;
-(id)valueForVariable:(id)arg0 ;
-(void)dealloc;


@end


#endif