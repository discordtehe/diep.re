// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDLOGMESSAGE_H
#define TR_DDLOGMESSAGE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCopying;

@interface TR_DDLogMessage : NSObject <NSCopying>



@property (readonly, nonatomic) NSString *message; // ivar: _message
@property (readonly, nonatomic) NSUInteger level; // ivar: _level
@property (readonly, nonatomic) NSUInteger flag; // ivar: _flag
@property (readonly, nonatomic) NSInteger context; // ivar: _context
@property (readonly, nonatomic) NSString *file; // ivar: _file
@property (readonly, nonatomic) NSString *fileName; // ivar: _fileName
@property (readonly, nonatomic) NSString *function; // ivar: _function
@property (readonly, nonatomic) NSUInteger line; // ivar: _line
@property (readonly, nonatomic) id *tag; // ivar: _tag
@property (readonly, nonatomic) NSInteger options; // ivar: _options
@property (readonly, nonatomic) NSDate *timestamp; // ivar: _timestamp
@property (readonly, nonatomic) NSString *threadID; // ivar: _threadID
@property (readonly, nonatomic) NSString *threadName; // ivar: _threadName
@property (readonly, nonatomic) NSString *queueLabel; // ivar: _queueLabel


-(id)initWithMessage:(id)arg0 level:(NSUInteger)arg1 flag:(NSUInteger)arg2 context:(NSInteger)arg3 file:(id)arg4 function:(id)arg5 line:(NSUInteger)arg6 tag:(id)arg7 options:(NSInteger)arg8 timestamp:(id)arg9 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;


@end


#endif