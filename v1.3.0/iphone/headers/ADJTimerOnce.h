// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJTIMERONCE_H
#define ADJTIMERONCE_H

@protocol OS_dispatch_queue, OS_dispatch_source;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol ADJLogger;

@interface ADJTimerOnce : NSObject

@property (retain, nonatomic) NSObject<OS_dispatch_queue> *internalQueue; // ivar: _internalQueue
@property (retain, nonatomic) NSObject<OS_dispatch_source> *source; // ivar: _source
@property (copy, nonatomic) id *block; // ivar: _block
@property (readonly, nonatomic) NSUInteger start; // ivar: _start
@property (retain, nonatomic) NSDate *fireDate; // ivar: _fireDate
@property (weak, nonatomic) NSObject<ADJLogger> *logger; // ivar: _logger
@property (copy, nonatomic) NSString *name; // ivar: _name


// -(id)initBlock:(id)arg0 queue:(unk)arg1 name:(id)arg2  ;
-(CGFloat)fireIn;
-(void)startIn:(CGFloat)arg0 ;
-(void)cancel:(BOOL)arg0 ;
-(void)cancel;
-(void)dealloc;
// +(id)timerWithBlock:(id)arg0 queue:(unk)arg1 name:(id)arg2  ;


@end


#endif