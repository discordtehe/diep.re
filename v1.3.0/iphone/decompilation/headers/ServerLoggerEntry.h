// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SERVERLOGGERENTRY_H
#define SERVERLOGGERENTRY_H


#import <Foundation/Foundation.h>


@interface ServerLoggerEntry : NSObject

@property int tag; // ivar: _tag
@property int level; // ivar: _level
@property (retain) NSString *message; // ivar: _message
@property (retain) NSString *timestamp; // ivar: _timestamp


-(id)initWithMessage:(id)arg0 level:(int)arg1 tag:(int)arg2 ;
-(id)createTimestamp;
-(id)convertToDic;


@end


#endif