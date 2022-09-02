// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDDISPATCHQUEUELOGFORMATTER_H
#define TR_DDDISPATCHQUEUELOGFORMATTER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol DDLogFormatter;

@interface TR_DDDispatchQueueLogFormatter : NSObject <DDLogFormatter>

 {
    NSUInteger _mode;
    NSString *_dateFormatterKey;
    int _atomicLoggerCount;
    NSDateFormatter *_threadUnsafeDateFormatter;
    int _lock;
    NSMutableDictionary *_replacements;
}


@property NSUInteger minQueueLength; // ivar: _minQueueLength
@property NSUInteger maxQueueLength; // ivar: _maxQueueLength
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithMode:(NSUInteger)arg0 ;
-(id)replacementStringForQueueLabel:(id)arg0 ;
-(void)setReplacementString:(id)arg0 forQueueLabel:(id)arg1 ;
-(id)createDateFormatter;
-(void)configureDateFormatter:(id)arg0 ;
-(id)stringFromDate:(id)arg0 ;
-(id)queueThreadLabelForLogMessage:(id)arg0 ;
-(id)formatLogMessage:(id)arg0 ;
-(void)didAddToLogger:(id)arg0 ;
-(void)willRemoveFromLogger:(id)arg0 ;


@end


#endif