// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSSTACKFRAME_H
#define CLSSTACKFRAME_H


#import <Foundation/Foundation.h>


@interface CLSStackFrame : NSObject

@property (copy, nonatomic) NSString *symbol; // ivar: _symbol
@property (copy, nonatomic) NSString *rawSymbol; // ivar: _rawSymbol
@property (copy, nonatomic) NSString *library; // ivar: _library
@property (copy, nonatomic) NSString *fileName; // ivar: _fileName
@property (nonatomic) unsigned int lineNumber; // ivar: _lineNumber
@property (nonatomic) NSUInteger offset; // ivar: _offset
@property (nonatomic) NSUInteger address; // ivar: _address


-(id)description;
+(id)stackFrame;
+(id)stackFrameWithAddress:(NSUInteger)arg0 ;
+(id)stackFrameWithSymbol:(id)arg0 ;


@end


#endif