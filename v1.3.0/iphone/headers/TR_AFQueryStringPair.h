// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_AFQUERYSTRINGPAIR_H
#define TR_AFQUERYSTRINGPAIR_H


#import <Foundation/Foundation.h>


@interface TR_AFQueryStringPair : NSObject

@property (retain, nonatomic) id *field; // ivar: _field
@property (retain, nonatomic) id *value; // ivar: _value


-(id)initWithField:(id)arg0 value:(id)arg1 ;
-(id)URLEncodedStringValue;


@end


#endif